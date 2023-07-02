import { createApi } from "@reduxjs/toolkit/dist/query/react";
// import { IPrize } from "types/prize";
import { baseNoAuthQuery } from "./baseQuery";
import { INODE } from "../types/node";
export const nodeApi = createApi({
  reducerPath: "nodes",
  baseQuery: baseNoAuthQuery,
  tagTypes: ["Nodes"],
  endpoints: (builder) => ({
    getNodesByPlaceId: builder.query<INODE[], void | string>({
      query: (place_id = "") => ({
        url: `nodes/?place_id=${place_id}`,
      }),
      providesTags: ["Nodes"],
    }),
  }),
});

export const { useLazyGetNodesByPlaceIdQuery, useGetNodesByPlaceIdQuery } = nodeApi;
