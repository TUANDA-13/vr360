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
import "./index.scss";
import { IPlace } from "../../../../types/place";
import imageError from "../../../../assets/images/img-error-message.png";
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
interface LocationInformationCardProps {
  place_info: IPlace;
  onClick: any;
}
const LocationInformationCard = ({
  place_info,
  onClick
}: LocationInformationCardProps) => {
  let { information } = place_info;
  let information_json = JSON.parse(information as any);
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
        <img
          src={place_info?.thumbnail || imageError}
          alt="place_info"
          width="100%"
        />
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
                  <p>{place_info?.name}</p>
                </TableCell>
              </TableRow>
              {information_json?.map((infor: any) => {
                return (
                  <TableRow key={infor?.id}>
                    <TableCell align="left" className="table-header">
                      <b>{infor?.title}</b>
                    </TableCell>
                    <TableCell className="table-content">
                      <p style={{ textOverflow: "ellipsis" }}>
                        {infor?.description}
                      </p>
                    </TableCell>
                  </TableRow>
                );
              })}
            </TableBody>
          </Table>
        </TableContainer>
      </Box>
      <Box component="div" className="card-footer">
        <StyledButton onClick={onClick}>Xem thêm</StyledButton>
      </Box>
    </Stack>
  );
};
export default LocationInformationCard;
