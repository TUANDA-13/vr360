import {
  AutorotatePlugin,
  CompassPlugin,
  MarkersPlugin,
  ReactPhotoSphereViewer,
  VirtualTourPlugin,
  MapPlugin,
} from "react-photo-sphere-viewer";
import Loading from "../../assets/images/logo-white.png";
import DefaultImage from "../../assets/images/default.jpg";
import { useEffect, useRef, useState } from "react";
import { INODE } from "../../types/node";
import { useParams } from "react-router-dom";
import nodeService from "../../services/nodeService";
import { AudioPlayer } from "./Sound";
import { AudioDefault } from "./DefaultSound";
import placeService from "./../../services/placeService/index";
import mk from "../../assets/images/marker-chualinhung.svg";
import { utils } from "@photo-sphere-viewer/core";
import Box from "@mui/material/Box";
import "./styled.scss";
export const DEFAULT_ARROW = {
  color: "#aaaaaa",
  hoverColor: "#aa5500",
  outlineColor: "#000000",
  scale: [0.5, 0.9],
};
const VR360 = () => {
  const [showSetting, setShowSetting] = useState(false);
  const { place_id } = useParams();
  const [currentNode, setCurrentNode] = useState<INODE | null>(null);
  const [thumnailItems, setThumbnailItem] = useState<INODE[]>([]);
  const [plugin, setPlugin] = useState<any>(null);
  const thumbnailRef = useRef<any>(null);
  const viewer = useRef<any>(null);

  useEffect(() => {
    const fetchData = async () => {
      let data = await placeService.getPlacesApiById(place_id);
      // setPlace(data);
      setPlugin([
        [CompassPlugin],
        [
          VirtualTourPlugin,
          {
            map: {
              imageUrl: data?.map,
            },
            positionMode: "gps",
            arrowStyle: DEFAULT_ARROW,
            rotateSpeed: "20rpm",
            dataMode: "client",
          },
        ],
        [
          AutorotatePlugin,
          {
            autorotateSpeed: utils.parseSpeed("1rpm"),
          },
        ],
        [MarkersPlugin],
        [
          MapPlugin,
          {
            imageUrl: data?.map,
            defaultZoom: 40,
            size: "200px",
            visibleOnLoad: false,
            rotation: "90deg",
          },
        ],
      ]);
    };

    fetchData();
  }, []);

  const loadVirtualTourPlugin = async (instance: any) => {
    const nodes_data = await nodeService.getNodes(place_id);
    const virtualTourPlugin = instance.getPlugin(VirtualTourPlugin);
    if (!virtualTourPlugin) return;
    let nodes = [
      {
        id: "53c4392e-6481-401d-a505-6b6c726efab9",
        name: "Trước chính điện",
        description: "<p>Trước ch&iacute;nh điện</p>",
        panorama:
          "http://res.cloudinary.com/dssmcuelj/image/upload/v1687010277/panorama/hqaqrcadwa6dslgjw7wo.jpg",
        thumbnail:
          "image/upload/nodes/truoc-chinh-ien/68065562-0213-11ee-b475-94e6f7246854.jpg",
        gps: [16.100136551692493, 108.27774696917321, 2.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
        panoData: {
          poseHeading: 70,
        },
        first: false,
        markers: [
          {
            id: "06dae5f7-d3f4-4f1f-a619-fa29773aeed8",
            gps: [2.0, 40.0, 2.0],
            image: mk,
            size: {
              width: 32,
              height: 32,
            },
            created_at: "2023-05-21T20:36:38+07:00",
            updated_at: "2023-05-21T20:37:12.081377+07:00",
            tooltip: "<p>Click me!!!</p>",
            content: "<p>Đ&acirc;y l&agrave; marker của node</p>",
            node: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
          },
        ],
        audio_url: null,
        special_node: false,
        special_name: null,
        map: {
          x: 1275,
          y: 1250,
        },
      },
    ];

    let map_nodes = nodes_data.map((item: INODE) => {
      let map = {
        x: 0,
        y: 0,
        color: "white",
      };
      if (item?.special_node) {
        map.color = "green";
      }
      // Perform nullish check on item.gps
      map.x =
        ((item.gps[1] - 108.27590847245652) * 3449) /
        (108.28105490773808 - 108.27590847245652);
      map.y =
        ((16.101920638367733 - item.gps[0]) * 2488) /
        (16.101920638367733 - 16.09857979660989);
      item.map = map;
      item.caption = item.name;
      // item.maker = [
      //   {
      //     id: "06dae5f7-d3f4-4f1f-a619-fa29773aeed8",
      //     gps: [2.0, 40.0, 2.0],
      //     image: MarkerIcon,
      //     size: {
      //       width: 32,
      //       height: 32,
      //     },
      //     created_at: "2023-05-21T20:36:38+07:00",
      //     updated_at: "2023-05-21T20:37:12.081377+07:00",
      //     tooltip: "<p>Click me!!!</p>",
      //     content: "<p>Đ&acirc;y l&agrave; marker của node</p>",
      //     node: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
      //   },
      // ];
      return item;
    });
    // console.log(nodes_data[1]?.id);
    // virtualTourPlugin.setNodes(
    //   nodes_data,
    //   "f451a15a-d01c-4a7d-b18d-631137aff8a6"
    // );
    virtualTourPlugin.setNodes(
      nodes_data,
      nodeService.findNodeFirstId(nodes_data) || nodes_data[0]?.id
    );

    const mapPlugin = instance.getPlugin(MapPlugin);
    // virtualTourPlugin.setImage(mapUrl);
    mapPlugin.addEventListener("select-hotspot", (hotspotId: any) => {
      console.log(`Clicked on hotspot ${hotspotId}`);
      console.log(hotspotId);
    });

    const markersPlugin = instance.getPlugin(MarkersPlugin);
    const special_node = nodes_data?.filter((item: INODE) => {
      return item.special_node;
    });
    const thumbnail = special_node.map((item: INODE) => ({
      ...item,
      name: item.special_name || item.name,
    }));
    console.log(thumbnail);
    setThumbnailItem(thumbnail);
    // galleryPlugin.setItems(thumbnail);
    markersPlugin.addEventListener("select-marker", ({ marker }: any) => {
      console.log(`Clicked on marker ${marker.id}`);
    });
    virtualTourPlugin.addEventListener(
      "node-changed",
      ({ node, data }: { node: INODE; data: any }) => {
        console.log(`Current node is ${node}`);
        setCurrentNode(node);
        if (data.fromNode) {
          console.log(`Previous node was ${data.fromNode.id}`);
        }
      }
    );
    virtualTourPlugin.addEventListener("ready", () => {
      console.log(`viewer is ready`);
    });
  };

  const handleReady = (instance: any) => {
    loadVirtualTourPlugin(instance);
    setShowSetting(true);
  };
  const handlecollapseThumbnail = (isClose = false) => {
    if (!isClose) {
      if (
        thumbnailRef.current?.classList?.contains("psv-gallery--open-styled")
      ) {
        thumbnailRef.current?.classList?.remove("psv-gallery--open-styled");
      } else {
        if (!isClose) {
          thumbnailRef.current?.classList?.add("psv-gallery--open-styled");
        }
      }
    }
  };
  const handleThumbnailClick = (item: INODE) => {
    const virtualTourPlugin = viewer.current?.getPlugin(VirtualTourPlugin);
    virtualTourPlugin?.setCurrentNode(item.id);
    console.log(item);
  };
  return (
    <Box position="relative" height="100vh" overflow="hidden">
      {plugin && (
        <ReactPhotoSphereViewer
          ref={viewer}
          container=""
          src={DefaultImage}
          height={"100vh"}
          width={"100%"}
          plugins={plugin}
          onReady={handleReady}
          loadingImg={Loading}
          keyboard="always"
          touchmoveTwoFingers={true}
          navbar={[
            "autorotate",
            "zoom",
            "move",
            {
              id: "gallery",
              title: "Toggle panel",
              content:
                '<svg width="20px" height="20px" viewBox="185 115 330 330" xmlns="http://www.w3.org/2000/svg" class="psv-button-svg"><path fill="currentColor" d="M186.7 326.7V163.3c0-15 8.3-23.3 23.3-23.3h210c15 0 23.3 8.3 23.3 23.3v163.4c0 15-8.3 23.3-23.3 23.3H210c-15 0-23.3-8.3-23.3-23.3zm70 70v-23.4H420c30.2 0 46.7-16.4 46.7-46.6V210H490c15 0 23.3 8.3 23.3 23.3v163.4c0 15-8.3 23.3-23.3 23.3H280c-15 0-23.3-8.3-23.3-23.3zm-23.8-105H397l-40-50.4-26.7 29.7-44.3-54.5zm106.7-76c9.6 0 17.8-7.8 17.8-17.2a18 18 0 0 0-17.8-17.8c-9.4 0-17.2 8.2-17.2 17.8 0 9.4 7.8 17.2 17.2 17.2z"></path></svg>',
              onClick: (Viewer) => {
                console.log(Viewer);
                handlecollapseThumbnail();
              },
            },
            "markers",
            "markersList",
            "caption",
            "fullscreen",
          ]}
        ></ReactPhotoSphereViewer>
      )}
      {showSetting && (
        <Box
          position="absolute"
          zIndex="100"
          display="flex"
          justifyContent="center"
          flexDirection="column"
          width="60px"
          height="60px"
          bottom="60px"
          right="5px"
          bgcolor="rgba(61, 61, 61, 0.5)"
        >
          <AudioPlayer url={currentNode?.audio_url || ""} />
        </Box>
      )}
      <AudioDefault />
      <div
        ref={thumbnailRef}
        className={`psv-gallery psv--capture-event`}
        style={{ zIndex: 15 }}
      >
        <div className="psv-gallery-container">
          {thumnailItems.map((item: INODE) => {
            return (
              <div
                className="psv-gallery-item"
                data-psv-gallery-item="6ffaf4c9-d3f1-4ecb-82f9-601432edbacc"
                style={{ width: "200px" }}
                onClick={() => handleThumbnailClick(item)}
              >
                <div
                  className="psv-gallery-item-wrapper"
                  style={{ paddingBottom: "calc(100% * 100 / 200)" }}
                >
                  <div className="psv-gallery-item-title">
                    <span>{item.special_name}</span>
                  </div>
                  <svg
                    className="psv-gallery-item-thumb"
                    viewBox="0 0 200 200"
                    preserveAspectRatio="xMidYMid slice"
                  >
                    <use href="#psvGalleryBlankIcon"></use>
                  </svg>
                  <div
                    className="psv-gallery-item-thumb"
                    style={{
                      backgroundImage: `url(${item.thumbnail})`,
                    }}
                  ></div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
      {!showSetting && (
        <Box
          position="absolute"
          width="100%"
          height="100%"
          bgcolor="white"
        ></Box>
      )}
    </Box>
  );
};
export default VR360;
