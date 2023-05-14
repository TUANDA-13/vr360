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
const VR360 = () => {
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
  const loadVirtualTourPlugin = (instance: any) => {
    const virtualTourPlugin = instance.getPlugin(VirtualTourPlugin);
    if (!virtualTourPlugin) return;
    virtualTourPlugin.setNodes(
      constants.nodes,
      "f4b38dcf-d435-4ea1-acfa-a6a1b38591db"
    );
    const galleryPlugin = instance.getPlugin(GalleryPlugin);
    galleryPlugin.setItems([
      {
        id: "c4b32625-597d-40e0-b3b6-5003621f213f",
        name: "Sân chùa",
        description: "<p>S&acirc;n ch&ugrave;a</p>",
        panorama:
          "http://localhost:8000/media/nodes/san-chua/f52ff488-f07c-11ed-9c34-94e6f7246854.jpg",
        thumbnail:
          "http://localhost:8000/media/nodes/san-chua/f57c4cb4-f07c-11ed-bdb7-94e6f7246854.jpg",
        gps: [16.099560829356484, 108.27752394820617, 2.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
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
      },
      {
        id: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
        name: "Các vị La Hán",
        description: "<p>C&aacute;c vị La H&aacute;n</p>",
        panorama:
          "http://localhost:8000/media/nodes/cac-vi-la-han/3c82632b-f07d-11ed-bb78-94e6f7246854.jpg",
        thumbnail:
          "http://localhost:8000/media/nodes/cac-vi-la-han/54eac4d1-f07d-11ed-8348-94e6f7246854.jpg",
        gps: [16.09995775237078, 108.27751994041334, 2.0],
        place: "60786bf8-62f2-457b-8100-60360069b787",
      },
    ]);
    const markersPlugin = instance.getPlugin(MarkersPlugin);
    markersPlugin.addEventListener("select-marker", ({ marker }: any) => {
      console.log(`Clicked on marker ${marker.id}`);
    });
    virtualTourPlugin.addEventListener("node-changed", ({ node, data  } : any) => {
      console.log(`Current node is ${node.id}`);
      if (data.fromNode) {
        // other data are available
        console.log(`Previous node was ${data.fromNode.id}`);
      }
    });
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
