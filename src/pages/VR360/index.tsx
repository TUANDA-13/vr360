import {
  AutorotatePlugin,
  CompassPlugin,
  GalleryPlugin,
  MarkersPlugin,
  ReactPhotoSphereViewer,
  VirtualTourPlugin,
  MapPlugin,
} from "react-photo-sphere-viewer";
import Loading from "../../assets/images/logo-chualinhung.svg";
import { constants } from "../../constants";
import { useEffect, useState } from "react";
import { INODE } from "../../types/node";
import { useParams } from "react-router-dom";
import nodeService from "../../services/nodeService";
import Box from "@mui/material/Box/Box";
import { AudioPlayer } from "./Sound";
import { AudioDefault } from "./DefaultSound";
import placeService from "./../../services/placeService/index";
import mk from "../../assets/images/marker-chualinhung.svg";
const VR360 = () => {
  const [showSetting, setShowSetting] = useState(false);
  const { place_id } = useParams();
  const [currentNode, setCurrentNode] = useState<INODE | null>(null);
  const [place, setPlace] = useState<any>();
  const [plugin, setPlugin] = useState<any>(null);

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
          },
        ],
        [AutorotatePlugin],
        [MarkersPlugin],
        [GalleryPlugin],
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
  const baseUrl = constants.REACT_APP_BASE_URL_FAKE_360_IMAGE;

  const loadVirtualTourPlugin = async (instance: any) => {
    console.log(place);
    const nodes_data = await nodeService.getNodes(place_id);
    const virtualTourPlugin = instance.getPlugin(VirtualTourPlugin);
    if (!virtualTourPlugin) return;
    // virtualTourPlugin.set
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
        // links: [
        //   {
        //     nodeId: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
        //   },
        //   {
        //     nodeId: "67dbcfca-dcef-4a56-9c47-81041754d4c4",
        //   },
        // ],
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
      // Perform nullish check on item.gps
      map.x =
        ((item.gps[1] - 108.27590847245652) * 3449) /
        (108.28105490773808 - 108.27590847245652);
      map.y =
        ((16.101920638367733 - item.gps[0]) * 2488) /
        (16.101920638367733 - 16.09857979660989);
      console.log(map, item.gps);
      item.map = map;
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
    console.log(nodes_data);
    virtualTourPlugin.setNodes(nodes_data, nodes_data[0]?.id);
    // virtualTourPlugin.setNodes(nodes_data, nodeService.findNodeFirstId(nodes_data) || nodes_data[0]);

    const galleryPlugin = instance.getPlugin(GalleryPlugin);
    galleryPlugin.setItems(nodes);

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
    galleryPlugin.setItems(thumbnail);
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
  };

  const handleReady = (instance: any) => {
    loadVirtualTourPlugin(instance);
    setShowSetting(true);
  };
  return (
    <Box position="relative">
      {plugin && (
        <ReactPhotoSphereViewer
          container=""
          src={baseUrl + "tour/key-biscayne-1.jpg"}
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
              id: "my-button",
              title: "Toggle panel",
              content: "",
              onClick: () => {
                console.log("hello world");
              },
            },
            "markers",
            "markersList",
            "gallery",
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
      {/* <MapContent /> */}
      <AudioDefault />
    </Box>
  );
};
export default VR360;
