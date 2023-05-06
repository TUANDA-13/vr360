import {
  FormControl,
  FormLabel,
  MenuItem,
  Select,
} from "@mui/material";
import { useState, useEffect } from "react";
import { useGetAllCategoriesQuery } from "../../../../services/categoryApi";
import { CategoryStyleInterface } from "../../../../types/map";
const FieldPicker = ({onCategoryChange}: CategoryStyleInterface) => {
  const [field, setField] = useState("");
  const { data: categories } = useGetAllCategoriesQuery();
  useEffect(()=>{
    categories?.forEach(category => {
      if(category.slug === "chua-linh-ung"){
        setField(category.slug)
      }
    });
  },[categories])
  return (
    <FormControl fullWidth>
      <FormLabel
        sx={{
          "&.MuiFormLabel-root": {
            fontSize: "16px",
            fontFamily: "inherit",
            color: "var(--main-bg-color)",
          },
        }}
      >
        Chọn Lĩnh Vực
      </FormLabel>
      <Select
        variant="outlined"
        sx={{
          color: "var(--main-content-text-color)",
          ".MuiOutlinedInput-notchedOutline": {
            borderColor: "transparent",
          },
          "&.Mui-focused .MuiOutlinedInput-notchedOutline": {
            borderColor: "transparent",
          },
          "&:hover .MuiOutlinedInput-notchedOutline": {
            borderColor: "transparent",
          },
          ".MuiSvgIcon-root ": {
            fill: "var(--main-content-text-color) !important",
          },
          background: "var(--main-bg-color)",
          mt: "4px",
        }}
        labelId="field-picker-label"
        value={field}
        onChange={(event)=>{
          setField(event?.target?.value);
          console.log(event?.target?.value)
          onCategoryChange(event?.target?.value)}}
        inputProps={{
          sx: {
            fontSize: "16px",
            fontFamily: "Sarabun, sans-serif",
            color: "var(--main-content-text-color)",
            background: "var(--main-bg-color)",
            padding: "8px",
          },
        }}
      >
        {categories?.map((field) => {
          return (
            <MenuItem
              sx={{
                "&.MuiMenuItem-root": {
                  color: "var(--main-content-text-color) !important",
                  fontSize: "14px",
                  fontFamily: "inherit",
                },
              }}
              value={field.slug}
              key={field.id}
            >
              {field.title}
            </MenuItem>
          );
        })}
      </Select>
    </FormControl>
  );
};
export default FieldPicker;
