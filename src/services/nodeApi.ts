import { createApi } from "@reduxjs/toolkit/dist/query/react";
// import { IPrize } from "types/prize";
import { baseNoAuthQuery } from "./baseQuery";
import { INODE } from "../types/node";
export const nodeApi = createApi({
  reducerPath: "nodes",
  baseQuery: baseNoAuthQuery,
  tagTypes: ["Nodes"],
  endpoints: (builder) => ({
    getNodeByPlaceId: builder.query<INODE[], void | string>({
      query: (slug = "") => ({
        url: `categories/${slug}`,
      }),
      providesTags: ["Nodes"],
    }),
    getCategory: builder.query<INODE, string>({
      query: (slug = "chua-linh-ung") => ({
        url: `categories/slug/${slug}`,
      }),
      providesTags: ["Nodes"],
    }),
  }),
});