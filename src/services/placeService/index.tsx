import axiosInstance from "../baseAxios";
const placeService = {
  entity: "places",
  getPlacesApi: async (place_slug: string | undefined) => {
    try {
      const response = await axiosInstance.get(
        `${placeService.entity}/slug/${place_slug}/`
      );
      return response.data;
    } catch (error) {
      console.error(error);
      return null;
    }
  },
  getPlacesApiById: async (id: string | undefined) => {
    try {
      const response = await axiosInstance.get(`${placeService.entity}/${id}/`);
      return response.data;
    } catch (error) {
      console.error(error);
      return null;
    }
  },
};

export default placeService;
