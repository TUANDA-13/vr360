export interface INODE {
  id: string;
  name: string
  description: string
  panorama: string
  thumbnail: string
  gps: [];
  place: string
  links: [
    {
      nodeId: string
    },
    {
      nodeId: string
    }
  ];
  panoData: {
    poseHeading: number;
  };
  first: boolean;
}
