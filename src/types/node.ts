export interface INODE {
  id: string;
  name: string;
  description: string;
  panorama: string;
  thumbnail: string;
  gps: [];
  place: string;
  links: [
    {
      nodeId: string;
    },
    {
      nodeId: string;
    }
  ];
  panoData: {
    poseHeading: number;
  };
  first: boolean;
  maker?: IMAKER[];
  audio_url: string | null;
  special_node: boolean;
  special_name:boolean;
}

export interface IMAKER {
  id: string;
  tooltip: string;
  content: string;
  gps: [];
  image: string;
}
