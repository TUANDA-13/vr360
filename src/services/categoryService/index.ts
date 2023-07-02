import axiosInstance from "../baseAxios";
const categoryService = {
  entity: "categories",
  getPlacesByCategory: async (place_slug: string | undefined) => {
    try {
      const response = await axiosInstance.get(
        `${categoryService.entity}/slug/${place_slug}/`
      );
      return response.data;
    } catch (error) {
      console.error(error);
      return null;
    }
  },
};

export default categoryService;
