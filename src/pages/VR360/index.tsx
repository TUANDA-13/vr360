import {
  AutorotatePlugin,
  CompassPlugin,
  GalleryPlugin,
  MarkersPlugin,
  ReactPhotoSphereViewer,
  VirtualTourPlugin,
} from "react-photo-sphere-viewer";
import Loading from "../../assets/icons/loading.gif";
import { constants } from "../../constants";
import { useEffect } from "react";
import { useLazyGetNodesByPlaceIdQuery } from "../../services/nodeApi";
import { INODE } from "../../types/node";
import { useParams } from "react-router-dom";
import { useGetNodesByPlaceIdQuery } from "../../services/nodeApi";
import nodeService from "../../services/NodeService";
import Box from "@mui/material/Box/Box";
import { AudioPlayer } from "./Sound";
import { MapContent } from "./MapContent";
import { MapChildren } from "./MapChildren";
import { useState } from "react";

const VR360 = () => {
  const [showSetting, setShowSetting] = useState(false);
  const { place_id } = useParams();
  const { data: nodes } = useGetNodesByPlaceIdQuery(place_id);
  const [getAllNodesById] = useLazyGetNodesByPlaceIdQuery();
  const [currentNode, setCurrentNode] = useState<INODE | null>(null);
  // const [nodes, setNode] = useState<INODE[]>([]);
  useEffect(() => {
    getAllNodesById(place_id)
      .unwrap()
      .then((data: INODE[]) => {
        // setNode(data);
      });
  }, [place_id, getAllNodesById]);

  useEffect(() => {
    console.log(nodes);
  }, [nodes]);

  const baseUrl = constants.REACT_APP_BASE_URL_FAKE_360_IMAGE;
  const plugins: any = [
    [CompassPlugin],
    [
      VirtualTourPlugin,
      {
        positionMode: "gps",
        renderMode: "3d",
      },
    ],
    [AutorotatePlugin],
    [MarkersPlugin],
    [GalleryPlugin],
  ];
  const loadVirtualTourPlugin = async (instance: any) => {
    const nodes_data = await nodeService.getNodes(place_id);
    const virtualTourPlugin = instance.getPlugin(VirtualTourPlugin);
    if (!virtualTourPlugin) return;
    virtualTourPlugin.setNodes(nodes_data, nodes_data[0]);
    const galleryPlugin = instance.getPlugin(GalleryPlugin);
    galleryPlugin.setItems(nodes);
    const markersPlugin = instance.getPlugin(MarkersPlugin);
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
      <ReactPhotoSphereViewer
        container=""
        src={baseUrl + "tour/key-biscayne-1.jpg"}
        height={"100vh"}
        width={"100%"}
        plugins={plugins}
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
            content: "🆘",
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
    </Box>
  );
};
export default VR360;
