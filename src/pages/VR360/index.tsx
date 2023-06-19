import {
  AutorotatePlugin,
  CompassPlugin,
  GalleryPlugin,
  MarkersPlugin,
  ReactPhotoSphereViewer,
  VirtualTourPlugin,
  MapPlugin,
} from "react-photo-sphere-viewer";
import Loading from "../../assets/icons/loading.gif";
import { constants } from "../../constants";
import { useEffect, useState } from "react";
// import { useLazyGetNodesByPlaceIdQuery } from "../../services/nodeApi";
import { INODE } from "../../types/node";
import { useParams } from "react-router-dom";
import { useGetNodesByPlaceIdQuery } from "../../services/nodeApi";
import nodeService from "../../services/nodeService";
import Box from "@mui/material/Box/Box";
import { AudioPlayer } from "./Sound";
import { MapChildren } from "./MapChildren";
import { AudioDefault } from "./DefaultSound";
import placeService from "./../../services/placeService/index";

const VR360 = () => {
  const [showSetting, setShowSetting] = useState(false);
  const { place_id } = useParams();
  const [currentNode, setCurrentNode] = useState<INODE | null>(null);
  // const [mapUrl, setMapUrl] = useState<string>("");
  const [place, setPlace] = useState<any>();
  const [plugin, setPlugin] = useState<any>(null);
  // useEffect(() => {
  //   console.log(nodes);
  //   setMapUrl(
  //     "https://res.cloudinary.com/dssmcuelj/image/upload/v1686133780/map-chua-linh-ung_x17g1c.jpg"
  //   );
  // }, [nodes]);

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
          "http://localhost:8000/media/nodes/truoc-chinh-ien/68038ad9-0213-11ee-bc05-94e6f7246854.jpg",
        thumbnail:
          "http://localhost:8000/media/nodes/truoc-chinh-ien/68065562-0213-11ee-b475-94e6f7246854.jpg",
        gps: [16.100136551692493, 108.27774696917321, 2.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
        map: { x: 1275, y: 1250, color: "red" },
        links: [
          {
            nodeId: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
          },
          {
            nodeId: "67dbcfca-dcef-4a56-9c47-81041754d4c4",
          },
        ],
        panoData: {
          poseHeading: 70,
        },
        first: false,
        markers: [],
        audio_url: null,
        special_node: false,
        special_name: null,
      },
      {
        id: "67dbcfca-dcef-4a56-9c47-81041754d4c4",
        name: "Các vị La Hán",
        description: "<p>C&aacute;c vị la H&aacute;n</p>",
        panorama:
          "http://localhost:8000/media/nodes/cac-vi-la-han/e884581c-0206-11ee-bd9c-94e6f7246854.jpg",
        thumbnail:
          "http://localhost:8000/media/nodes/cac-vi-la-han/e887fada-0206-11ee-a3ca-94e6f7246854.jpg",
        gps: [16.099866471937517, 108.27780429851272, 2.0],
        map: { x: 1325, y: 1550, color: "white" },
        place: "60786bf8-62f2-457b-8100-60360069b787",
        links: [
          {
            nodeId: "c4b32625-597d-40e0-b3b6-5003621f213f",
          },
          {
            nodeId: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
          },
          {
            nodeId: "53c4392e-6481-401d-a505-6b6c726efab9",
          },
        ],
        panoData: {
          poseHeading: 0,
        },
        first: false,
        markers: [],
        audio_url:
          "http://res.cloudinary.com/dssmcuelj/video/upload/v1685793923/tv2wzs5xe5ubzaavrb6m.wav",
        special_node: false,
        special_name: null,
      },
      {
        id: "c4b32625-597d-40e0-b3b6-5003621f213f",
        name: "Sân chùa",
        description: "<p>S&acirc;n ch&ugrave;a</p>",
        panorama:
          "http://localhost:8000/media/nodes/san-chua/914cbbd0-f17f-11ed-9b1b-94e6f7246854.jpg",
        thumbnail:
          "http://localhost:8000/media/nodes/san-chua/f57c4cb4-f07c-11ed-bdb7-94e6f7246854.jpg",
        gps: [16.099692154682035, 108.27759096740078, 2.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
        map: null,
        links: [
          {
            nodeId: "f451a15a-d01c-4a7d-b18d-631137aff8a6",
          },
          {
            nodeId: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
          },
          {
            nodeId: "67dbcfca-dcef-4a56-9c47-81041754d4c4",
          },
        ],
        panoData: {
          poseHeading: 320,
        },
        first: false,
        markers: [],
        audio_url:
          "http://res.cloudinary.com/dssmcuelj/video/upload/v1685884044/ahuznzeghoncakutru1y.wav",
        special_node: true,
        special_name: "Sân chùa Linh Ứng",
      },
      {
        id: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
        name: "Các vị La Hán",
        description: "<p>C&aacute;c vị La H&aacute;n</p>",
        panorama:
          "http://localhost:8000/media/nodes/cac-vi-la-han/6fbdc136-0206-11ee-93bc-94e6f7246854.jpg",
        thumbnail:
          "http://localhost:8000/media/nodes/cac-vi-la-han/54eac4d1-f07d-11ed-8348-94e6f7246854.jpg",
        gps: [16.09995775237078, 108.27751994041334, 2.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
        links: [
          {
            nodeId: "c4b32625-597d-40e0-b3b6-5003621f213f",
          },
          {
            nodeId: "67dbcfca-dcef-4a56-9c47-81041754d4c4",
          },
          {
            nodeId: "53c4392e-6481-401d-a505-6b6c726efab9",
          },
        ],
        panoData: {
          poseHeading: 30,
        },
        first: false,
        markers: [
          {
            id: "06dae5f7-d3f4-4f1f-a619-fa29773aeed8",
            gps: [2.0, 40.0, 2.0],
            image:
              "https://photo-sphere-viewer-data.netlify.app/assets/pictos/pin-blue.png",
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
        audio_url:
          "http://res.cloudinary.com/dssmcuelj/video/upload/v1685884664/lzenrjdvizyozj7turyl.wav",
        special_node: false,
        special_name: null,
      },
      {
        id: "f451a15a-d01c-4a7d-b18d-631137aff8a6",
        name: "Cổng chùa",
        description: "<p>Đ&acirc;y l&agrave; cổng ch&ugrave;a</p>",
        panorama:
          "http://localhost:8000/media/nodes/cong-chua/5d7ee823-f07b-11ed-9b28-94e6f7246854.png",
        thumbnail:
          "http://localhost:8000/media/nodes/cong-chua/efce534a-f07a-11ed-bdf7-94e6f7246854.jpg",
        gps: [16.099560829356484, 108.27752394820617, 3.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
        links: [
          {
            nodeId: "c4b32625-597d-40e0-b3b6-5003621f213f",
          },
        ],
        panoData: {
          poseHeading: 320,
        },
        first: true,
        markers: [],
        audio_url:
          "http://res.cloudinary.com/dssmcuelj/video/upload/v1685884686/s0njnkfks4eq93fy9b35.wav",
        special_node: true,
        special_name: "Cổng chùa Linh Ứng",
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
      return item;
    });
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
          bottom="60px"
          right="0px"
          bgcolor="rgba(61, 61, 61, 0.5)"
        >
          <MapChildren />
          <Box
            height="2px"
            bgcolor="lightcyan"
            marginX="10px"
            my="4px"
            width="auto"
          ></Box>
          <AudioPlayer url={currentNode?.audio_url || ""} />
        </Box>
      )}
      {/* <MapContent /> */}
      <AudioDefault />
    </Box>
  );
};
export default VR360;
