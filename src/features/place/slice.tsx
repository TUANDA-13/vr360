import { createSlice, PayloadAction } from "@reduxjs/toolkit";

const initialState: Place = {
  id: "",
  category: {},
  information: [{}],
  created_at: "",
  updated_at: "",
  name: "",
  description: "",
  thumbnail: "",
  lat: "",
  lng: "",
  slug: "",
} as Place;

interface Place {
  id: string;
  category: Category;
  information?: Information[];
  created_at: string;
  updated_at: string;
  name: string;
  description?: string;
  thumbnail?: string;
  lat: string;
  lng: string;
  slug?: string;
}

interface Category {
  id: string;
  title: string;
  description?: string;
}

interface Information {
  id: string;
  title: string;
  description?: string;
}

export const PlaceSlice = createSlice({
  name: "Place",
  initialState,
  reducers: {},
});

// export const { savePlace, resetPlace, updatePlaceAvatar } = PlaceSlice.actions;

export default PlaceSlice.reducer;

