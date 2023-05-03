import { createApi } from "@reduxjs/toolkit/dist/query/react";
// import { IPrize } from "types/prize";
import { baseNoAuthQuery } from "./baseQuery";
import { IPlace } from "../types/place";

export const placeAPI = createApi({
  reducerPath: "place",
  baseQuery: baseNoAuthQuery,
  tagTypes: ["Place"],
  endpoints: (builder) => ({
    getAllPlaces: builder.query<IPlace[], void>({
      query: () => ({
        url: "place/",
      }),
      providesTags: ["Place"],
    }),
    // createUpdatePrize: builder.mutation({
    //   query: (body: IPrize) => ({
    //     url: "/prizes/create-update",
    //     method: "POST",
    //     body,
    //   }),
    //   invalidatesTags: ["Prize"],
    // }),
    // deletePrize: builder.mutation({
    //   query: (id: number) => ({
    //     url: `/prizes/delete/${id}`,
    //     method: "DELETE",
    //   }),
    //   invalidatesTags: ["Prize"],
    // }),
  }),
});

export const { useGetAllPlacesQuery } = placeAPI;
