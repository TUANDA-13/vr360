import axiosInstance from "../baseAxios";
const placeService = {
  entity: "categories",
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
};

export default placeService;
