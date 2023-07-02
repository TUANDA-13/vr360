import { createApi } from "@reduxjs/toolkit/dist/query/react";
// import { IPrize } from "types/prize";
import { baseNoAuthQuery } from "./baseQuery";
import { IPlace } from "../types/place";

export const placeAPI = createApi({
  reducerPath: "places",
  baseQuery: baseNoAuthQuery,
  tagTypes: ["Places"],
  endpoints: (builder) => ({
    getAllPlaces: builder.query<IPlace[], void>({
      query: () => ({
        url: "places/",
      }),
      providesTags: ["Places"],
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
