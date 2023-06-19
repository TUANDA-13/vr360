import { createApi } from "@reduxjs/toolkit/dist/query/react";
import { baseNoAuthQuery } from "./baseQuery";
import { ICategory } from "../types/place";

export const categoryAPI = createApi({
  reducerPath: "categories",
  baseQuery: baseNoAuthQuery,
  tagTypes: ["Categories"],
  endpoints: (builder) => ({
    getAllCategories: builder.query<ICategory[], void | string>({
      query: (slug = "") => ({
        url: `categories/${slug}/`,
      }),
      providesTags: ["Categories"],
    }),
    getCategory: builder.query<ICategory, string>({
      query: (slug = "chua-linh-ung") => ({
        url: `categories/slug/${slug}/`,
      }),
      providesTags: ["Categories"],
    }),
  }),
});

export const {
  useGetAllCategoriesQuery,
  useLazyGetCategoryQuery,
  useLazyGetAllCategoriesQuery,
} = categoryAPI;
