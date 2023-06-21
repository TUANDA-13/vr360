export interface INODE {
  id: string;
  name: string;
  description: string;
  panorama: string;
  thumbnail: string;
  gps: number[];
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
  special_name: boolean;
  map?: {
    x?: number;
    y?: number;
    color?: string;
  };
}

export interface IMAKER {
  id: string;
  tooltip: string;
  content: string;
  gps?: number[];
  image?: any;
  size?: {};
  created_at?: any;
  updated_at?: any;
  node?: any;
}
