import { createSlice, PayloadAction } from "@reduxjs/toolkit";

// Định nghĩa kiểu dữ liệu cho state của slice
interface soundState {
  play: boolean;
}

const initialState: soundState = {
  play: true,
};

const soundSlice = createSlice({
  name: "sound",
  initialState,
  reducers: {
    play(state) {
      state.play = !state.play ;
      console.log(state.play)
    },
  },
});

// Xuất các actions từ slice
export const { play } = soundSlice.actions;

// Xuất reducer của slice
export default soundSlice.reducer;
