import InfoIcon from "@mui/icons-material/Info";
import {
  Box,
  Button,
  Paper,
  Stack,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableRow,
} from "@mui/material";
import { styled } from "@mui/system";
import ChuaLinhUng from "../../../../assets/images/chualinhung.jpg"
import "./index.scss";

const StyledButton = styled(Button)({
  transition: "all 0.3s ease !important",
  height: "36px",
  borderRadius: "4px",
  color: "var(--main-content-text-color) !important",
  padding: "6px 16px",
  fontWeight: "400",
  fontFamily: "Sarabun, sans-serif",
  fontSize: "14px",
  border: "1px solid var(--main-content-text-color) !important",
  "&:hover": {
    cursor: "pointer",
    backgroundColor: "#0055a5",
    color: "var(--main-bg-color) !important",
  },
  "&:active": {
    backgroundColor: "#0055a5",
    color: "var(--main-bg-color) !important",
  },
});

const LocationInformationCard = () => {
  const handleClickButtonViewMore = () => {
    window.open("http://localhost:3000/virtual-tourism-3d", "_blank");
  };
  return (
    <Stack direction="column">
      <Box component="div" className="card-container-header">
        <InfoIcon
          className="icon"
          sx={{ width: "23px", height: "23px", color: "var(--main-bg-color)" }}
        />
        Thông tin chi tiết
      </Box>
      <Box component="div" className="card-container-image">
        <img src={ChuaLinhUng} alt="city" width="100%" />
      </Box>
      <Box component="div" className="card-container-content">
        <TableContainer component={Paper}>
          <Table size="small">
            <TableBody>
              <TableRow>
                <TableCell align="left" className="table-header">
                  <b>Địa điểm</b>
                </TableCell>
                <TableCell className="table-content">
                  <p>Chùa Linh Ứng</p>
                </TableCell>
              </TableRow>
              <TableRow>
                <TableCell align="left" className="table-header">
                  <b>Thành phố</b>
                </TableCell>
                <TableCell className="table-content">
                  <p>Đà Nẵng</p>
                </TableCell>
              </TableRow>
              <TableRow>
                <TableCell align="left" className="table-header">
                  <b>Mô tả</b>
                </TableCell>
                <TableCell className="table-content">
                  <p style={{ textOverflow: "ellipsis" }}>
                    Chùa Linh Ứng là một ngôi chùa nằm trên dãy núi Sơn Trà,
                    thuộc địa bàn xã Hòa Hải, huyện Ngũ Hành Sơn, thành phố Đà
                    Nẵng. Ngôi chùa này được xây dựng từ thế kỷ XVIII và được
                    coi là một trong những ngôi chùa lớn và đẹp nhất tại Đà
                    Nẵng.
                  </p>
                </TableCell>
              </TableRow>
            </TableBody>
          </Table>
        </TableContainer>
      </Box>
      <Box component="div" className="card-footer">
        <StyledButton onClick={handleClickButtonViewMore}>
          Xem thêm
        </StyledButton>
      </Box>
    </Stack>
  );
};
export default LocationInformationCard;
