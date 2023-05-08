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
import { IInformation, IPlace } from "../../../../types/place";
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
}
const LocationInformationCard = ({
  place_info,
}: LocationInformationCardProps) => {
  let { information } = place_info;
  let information_json = JSON.parse(information as any);
  // const place = {
  //   id: "60786bf8-62f2-457b-8100-60360069b787",
  //   category: {
  //     id: "6be61a5f-27be-4f16-a3a9-6a64f7bf0b79",
  //     title: "Du lịch",
  //     description:
  //       "Hàng trăm danh lam thắng cảnh, khu vui chơi có thể cho bạn khám phá ở Đà Nẵng.",
  //   },
  //   information: [
  //     {
  //       id: "1",
  //       title: "Thành phố",
  //       description: "Đà Nẵng",
  //     },
  //   ],
  //   created_at: "2023-05-01T18:20:05+07:00",
  //   updated_at: "2023-05-03T14:42:55.396402+07:00",
  //   name: "Chùa Linh Ứng",
  //   description: "",
  //   thumbnail:
  //     "http://localhost:8000/media/places/chua-linh-ung/1dd865fa-e986-11ed-b982-94e6f7246854.jpg",
  //   lat: 16.10031719989777,
  //   lng: 108.27774682373854,
  //   slug: "chua-linh-ung",
  // };
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
        <StyledButton onClick={handleClickButtonViewMore}>
          Xem thêm
        </StyledButton>
      </Box>
    </Stack>
  );
};
export default LocationInformationCard;
