import BananaMarker from "../assets/icons/banana-marker.gif";
export const constants = {
  REACT_APP_MAP_ACCESS_TOKEN: process.env.REACT_APP_MAP_ACCESS_TOKEN,
  REACT_APP_BASE_URL_FAKE_360_IMAGE:
    process.env.REACT_APP_BASE_URL_FAKE_360_IMAGE,
  REACT_APP_MAP_STYLE_LIGHT: process.env.REACT_APP_MAP_STYLE_LIGHT,
  REACT_APP_MAP_STYLE_DARK: process.env.REACT_APP_MAP_STYLE_DARK,
  REACT_APP_MAP_STYLE_STREETS: process.env.REACT_APP_MAP_STYLE_STREETS,
  REACT_APP_MAP_STYLE_OUTDOORS: process.env.REACT_APP_MAP_STYLE_OUTDOORS,
  REACT_APP_MAP_STYLE_SATELLITE: process.env.REACT_APP_MAP_STYLE_SATELLITE,
  REACT_APP_MAP_STYLE_SATELLITE_STREETS:
    process.env.REACT_APP_MAP_STYLE_SATELLITE_STREETS,
  REACT_APP_MAP_STYLE_NAVIGATION_DAY:
    process.env.REACT_APP_MAP_STYLE_NAVIGATION_DAY,
  REACT_APP_MAP_STYLE_NAVIGATION_NIGHT:
    process.env.REACT_APP_MAP_STYLE_NAVIGATION_NIGHT,
  virtualTourNodes: [
    {
      id: "1",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-2.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-2-thumb.jpg",
      name: "Two",
      links: [{ nodeId: "2" }],
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
          anchor: "top left",
          created_at: "2023-05-21T20:36:38+07:00",
          updated_at: "2023-05-21T20:37:12.081377+07:00",
          tooltip: "<p>Click me!!!</p>",
          content: "<p>Đ&acirc;y l&agrave; marker của node</p>",
          node: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
        },
      ],
      gps: [-80.156168, 25.666623, 3],
      panoData: { poseHeading: 318 },
    },
    {
      id: "2",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-2.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-2-thumb.jpg",
      name: "Two",
      links: [{ nodeId: "3" }, { nodeId: "1" }],
      markers: [
        {
          id: "marker-1",
          image: BananaMarker,
          tooltip: "Go to this place",
          size: { width: 250, height: 250 },
          anchor: "top left",
          gps: [2, 0, 45],
        },
        {
          // image marker that opens the panel when clicked
          id: "image",
          gps: [2, 0, 90],
          image:
            "https://photo-sphere-viewer-data.netlify.app/assets/" +
            "pictos/pin-blue.png",
          size: { width: 32, height: 32 },
          anchor: "bottom center",
          zoomLvl: 100,
          tooltip: "A image marker. <b>Click me!</b>",
          // content: document.getElementById("lorem-content")?.innerHTML,
          content: `<div>Hello</div>`,
        },
      ],
      gps: [-80.156168, 25.666623, 3],
      panoData: { poseHeading: 318 },
    },
    {
      id: "3",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-3.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-3-thumb.jpg",
      name: "Three",
      links: [{ nodeId: "4" }, { nodeId: "2" }, { nodeId: "5" }],
      gps: [-80.155932, 25.666498, 5],
      panoData: { poseHeading: 328 },
    },
    {
      id: "4",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-4.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-4-thumb.jpg",
      name: "Four",
      links: [{ nodeId: "3" }, { nodeId: "5" }],
      gps: [-80.156089, 25.666357, 3],
      panoData: { poseHeading: 78 },
    },
    {
      id: "5",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-5.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-5-thumb.jpg",
      name: "Five",
      links: [{ nodeId: "6" }, { nodeId: "3" }, { nodeId: "4" }],
      gps: [-80.156292, 25.666446, 2],
      panoData: { poseHeading: 190 },
    },
    {
      id: "6",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-6.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-6-thumb.jpg",
      name: "Six",
      links: [{ nodeId: "5" }, { nodeId: "7" }],
      gps: [-80.156465, 25.666496, 2],
      panoData: { poseHeading: 328 },
    },
    {
      id: "7",
      panorama:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-7.jpg",
      thumbnail:
        "https://photo-sphere-viewer-data.netlify.app/assets/" +
        "tour/key-biscayne-7-thumb.jpg",
      name: "Seven",
      links: [{ nodeId: "6" }],
      gps: [-80.15707, 25.6665, 3],
      panoData: { poseHeading: 250 },
    },
  ],
  nodes: [
    {
      id: "c4b32625-597d-40e0-b3b6-5003621f213f",
      name: "Sân chùa",
      description: "<p>S&acirc;n ch&ugrave;a</p>",
      panorama:
        "http://localhost:8000/media/nodes/san-chua/914cbbd0-f17f-11ed-9b1b-94e6f7246854.jpg",
      thumbnail:
        "http://localhost:8000/media/nodes/san-chua/f57c4cb4-f07c-11ed-bdb7-94e6f7246854.jpg",
      gps: [16.099678820098635, 108.27759004959536, 2.0],
      place: "60786bf8-62f2-457b-8100-60360069b787",
      links: [
        {
          nodeId: "f451a15a-d01c-4a7d-b18d-631137aff8a6",
        },
        {
          nodeId: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
        },
      ],
      panoData: {
        poseHeading: 320,
      },
      first: false,
      marker: [],
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
      links: [
        {
          nodeId: "c4b32625-597d-40e0-b3b6-5003621f213f",
        },
      ],
      panoData: {
        poseHeading: 30,
      },
      first: false,
      marker: [
        {
          id: "06dae5f7-d3f4-4f1f-a619-fa29773aeed8",
          gps: [2.0, 40.0, 2.0],
          image:
            "https://photo-sphere-viewer-data.netlify.app/assets/pictos/pin-blue.png",
          size: {
            width: 32,
            height: 32,
          },
          anchor: "top left",
          created_at: "2023-05-21T20:36:38+07:00",
          updated_at: "2023-05-21T20:37:12.081377+07:00",
          tooltip: "<p>Click me!!!</p>",
          content: "<p>Đ&acirc;y l&agrave; marker của node</p>",
          node: "f4b38dcf-d435-4ea1-acfa-a6a1b38591db",
        },
      ],
    },
  ],
  fields: [
    {
      field: "Du Lịch",
      value: 1,
    },
    {
      field: "Bảo Tàng",
      value: 2,
    },
    {
      field: "Di Sản",
      value: 3,
    },
    {
      field: "Trường Học",
      value: 4,
    },
    {
      field: "Nhà Máy",
      value: 5,
    },
    {
      field: "Khu Công Nghiệp",
      value: 6,
    },
    {
      field: "Bất động sản",
      value: 7,
    },
    {
      field: "Trang Trại",
      value: 8,
    },
    {
      field: "Showroom",
      value: 9,
    },
    {
      field: "Triễn Lãm",
      value: 10,
    },
  ],
  mapStyle: [
    {
      value: "STREETS",
      label: "Streets",
    },
    {
      value: "OUTDOORS",
      label: "Outdoors",
    },
    {
      value: "SATELLITE",
      label: "Satellite",
    },
    {
      value: "SATELLITESTREETS",
      label: "Satellite Streets",
    },
    {
      value: "NAVIGATIONDAY",
      label: "Navigation Day",
    },
    {
      value: "NAVIGATIONNIGHT",
      label: "Navigation Night",
    },
    {
      value: "OTHERS",
      label: "Others",
    },
  ],
};
