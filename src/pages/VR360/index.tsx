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
import mk from "../../assets/images/chua-linh-ung-markder.png";
import { utils } from "@photo-sphere-viewer/core";
import Box from "@mui/material/Box";
import "./styled.scss";
import { IPlace } from "../../types/place";
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
  const [place, setPlace] = useState<IPlace>();

  useEffect(() => {
    const fetchData = async () => {
      let data = await placeService.getPlacesApiById(place_id);
      setPlace(data);
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
        [
          MarkersPlugin,
          {
            image: mk,
          },
        ],
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

    let map_nodes = nodes_data.map((item: INODE) => {
      let map = {
        x: 0,
        y: 0,
        color: "white",
      };
      if (item?.special_node) {
        map.color = "green";
      }
      // Perform nullish check on item.gpsif
      if (place && place.map) {
        map.x =
          (Math.abs(item.gps[1] - place.y_min) * place.map_width) /
          Math.abs(place.y_max - place.y_min);
        map.y =
          (Math.abs(place.x_max - item.gps[0]) * place.map_height) /
          (place.x_max - place.x_min);
        item.map = map;
      }
      item.caption = item.name;
      if (item.maker) {
        item.maker.forEach((marker) => {
          marker.image = mk;
        });
      }
      return item;
    });
    virtualTourPlugin.setNodes(
      nodes_data,
      nodeService.findNodeFirstId(nodes_data) || nodes_data[0]?.id
    );

    const mapPlugin = instance.getPlugin(MapPlugin);
    mapPlugin.addEventListener("select-hotspot", (hotspotId: any) => {});

    const markersPlugin = instance.getPlugin(MarkersPlugin);
    const special_node = nodes_data?.filter((item: INODE) => {
      return item.special_node;
    });
    const thumbnail = special_node.map((item: INODE) => ({
      ...item,
      name: item.special_name || item.name,
    }));
    setThumbnailItem(thumbnail);
    markersPlugin.addEventListener("select-marker", ({ marker }: any) => {
      console.log(`Clicked on marker ${marker.id}`);
    });
    virtualTourPlugin.addEventListener(
      "node-changed",
      ({ node, data }: { node: INODE; data: any }) => {
        setCurrentNode(node);
      }
    );
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
  };
  return (
    <Box position="relative" height="100vh" overflow="hidden">
      <AudioDefault />
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
          zIndex="78"
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
      <div
        ref={thumbnailRef}
        className={`psv-gallery psv--capture-event`}
        style={{ zIndex: 80, paddingRight: "15px" }}
      >
        <div className="psv-gallery-container">
          {thumnailItems.map((item: INODE) => {
            return (
              <div
                key={item.id}
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
