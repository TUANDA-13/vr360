import { FormControl, FormLabel, MenuItem, Select } from "@mui/material";
import { ICategory } from "../../../../types/place";
import { useEffect } from "react";
export interface CategoryStyleInterface {
  onCategoryChange: any;
  categories: ICategory[] | undefined;
  categorySlug: string;
}
const FieldPicker = ({
  onCategoryChange,
  categories,
  categorySlug,
}: CategoryStyleInterface) => {
  useEffect(() => {
    console.log("hi");
    categories?.forEach((item: ICategory) => {
      if (item.slug === "chua-linh-ung") {
        onCategoryChange(item.slug);
        return;
      }
    });
  }, [categories]);
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
          width: "300px",
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
        value={categorySlug}
        onChange={(event) => {
          console.log(event?.target?.value);
          onCategoryChange(event?.target?.value);
        }}
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
        {categories?.map((field: ICategory) => {
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
