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
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { useLazyGetNodesByPlaceIdQuery } from "../../services/nodeApi";
import { INODE } from "../../types/node";

const VR360 = () => {
  let { place_id } = useParams(); 
      const [getAllNodesById] =
        useLazyGetNodesByPlaceIdQuery();
  const [nodes, setNode] = useState<INODE[]>([]);
  useEffect(() => {
    getAllNodesById(place_id)
      .unwrap()
      .then((data: INODE[]) => {
        setNode(data);
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
    let nodes_data:INODE[] = []
    await getAllNodesById(place_id)
      .unwrap()
      .then((data: INODE[]) => {
        nodes_data = data
      });
    const virtualTourPlugin = instance.getPlugin(VirtualTourPlugin);
    if (!virtualTourPlugin) return;
    virtualTourPlugin.setNodes(
      nodes_data,
      "c4b32625-597d-40e0-b3b6-5003621f213f"
    );
    const galleryPlugin = instance.getPlugin(GalleryPlugin);
    galleryPlugin.setItems(nodes);
    const markersPlugin = instance.getPlugin(MarkersPlugin);
    markersPlugin.addEventListener("select-marker", ({ marker }: any) => {
      console.log(`Clicked on marker ${marker.id}`);
    });
    virtualTourPlugin.addEventListener(
      "node-changed",
      ({ node, data }: any) => {
        console.log(`Current node is ${node.id}`);
        if (data.fromNode) {
          // other data are available
          console.log(`Previous node was ${data.fromNode.id}`);
        }
      }
    );
  };

  const handleReady = (instance: any) => {
    loadVirtualTourPlugin(instance);
  };
  return (
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
  );
};
export default VR360;
