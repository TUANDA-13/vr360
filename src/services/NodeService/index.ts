import { INODE } from "../../types/node";
import axiosInstance from "../baseAxios";
const nodeService = {
  entity: "nodes",
  getNodes: async (place_id: string | undefined) => {
    try {
      const response = await axiosInstance.get(
        `${nodeService.entity}/?placeid=${place_id}`
      );
      return response.data;
    } catch (error) {
      console.error(error);
      return null;
    }
  },
  findNodeFirstId: (data: INODE[]) => {
    const node = data.find((item) => item.first === true);
    return node?.id;
  },
};

export default nodeService;
