import { configureStore } from "@reduxjs/toolkit";
import { placeAPI } from "../services/placeApi";
import { setupListeners } from "@reduxjs/toolkit/dist/query";
import { categoryAPI } from "../services/categoryApi";
import { nodeApi } from "../services/nodeApi";

export const store = configureStore({
  reducer: {
    [placeAPI.reducerPath]: placeAPI.reducer,
    [categoryAPI.reducerPath]: categoryAPI.reducer,
    [nodeApi.reducerPath]: nodeApi.reducer
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware().concat(placeAPI.middleware).concat(categoryAPI.middleware).concat(nodeApi.middleware)
});

setupListeners(store.dispatch)

// Infer the `RootState` and `AppDispatch` types from the store itself
export type RootState = ReturnType<typeof store.getState>;
// Inferred type: {posts: PostsState, comments: CommentsState, users: UsersState}
export type AppDispatch = typeof store.dispatch;
