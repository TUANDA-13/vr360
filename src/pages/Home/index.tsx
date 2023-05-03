import { Box, Typography } from "@mui/material";
import { useNavigate } from "react-router-dom";
import { useMemo } from "react";
import background from "../../assets/images/background.jpg";
import { HomeStyled } from "./styled";
import EastIcon from "@mui/icons-material/East";

const Home = () => {
  const navigate = useNavigate();
  const renderTitle = useMemo(() => {
    return "CHÙA LINH ỨNG".split("").map((item) => {
      return <span className="char-item">{item}</span>;
    });
  }, []);
  return (
    <HomeStyled>
      <Box
        flex={1}
        display="flex"
        height="100vh"
        width="100vw"
        overflow="hidden"
        position="relative"
        zIndex="0"
        className="container"
        alignItems="center"
        justifyContent="center"
      >
        <img
          className="background"
          src={background}
          alt="chua-linh-ung"
          height="100%"
          width="100%"
        />
        <div className="overlay"></div>
        <Box
          zIndex={1000}
          position="absolute"
          width="70%"
          display="flex"
          flexDirection="column"
          alignItems="center"
          justifyContent="center"
        >
          <Typography variant="h2" className="name" fontWeight={700}>
            {renderTitle}
          </Typography>
          <Typography variant="h5" textAlign="center" color="white">
            Một ngôi chùa nổi tiếng ở Đà Nẵng, với kiến trúc độc đáo và vị trí
            đắc địa trên đỉnh núi Non Nước.
          </Typography>
          <div
            className="btn-explore"
            onClick={() => {
              navigate("/map");
            }}
          >
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Khám phá ngay
            <EastIcon className="right-arrow" />
          </div>
        </Box>
      </Box>
    </HomeStyled>

    //  <Box flex={1} display="flex" alignItems="center" justifyContent="center">
    //   <div>
    //     <Typography variant="h2">Chùa Linh Ứng</Typography>

    //     <Typography variant="h5">
    //       Đã từ lâu, chùa Linh Ứng Đà Nẵng là điểm đến nổi tiếng với vẻ đẹp
    //       tâm linh giữa cảnh sắc thiên nhiên hữu tình, hùng vĩ. Với vị trí địa
    //       lý thuận lợi, tọa lạc trên một núi lớn, Chùa Linh Ứng là nơi thu hút
    //       rất nhiều khách du lịch khi đến tham quan Đà Nẵng. Cùng khám phá chi
    //       tiết về “tam giác tâm linh” này ngay sau đây nhé!
    //     </Typography>
    //   </div>
    // </Box>
    //  <Box flex={1} display="flex" alignItems="center" justifyContent="center">
    //   <div>
    //     <Typography variant="h2">Chùa Linh Ứng</Typography>

    //     <Typography variant="h5">
    //       Đã từ lâu, chùa Linh Ứng Đà Nẵng là điểm đến nổi tiếng với vẻ đẹp
    //       tâm linh giữa cảnh sắc thiên nhiên hữu tình, hùng vĩ. Với vị trí địa
    //       lý thuận lợi, tọa lạc trên một núi lớn, Chùa Linh Ứng là nơi thu hút
    //       rất nhiều khách du lịch khi đến tham quan Đà Nẵng. Cùng khám phá chi
    //       tiết về “tam giác tâm linh” này ngay sau đây nhé!
    //     </Typography>
    //   </div>
    // </Box>
    // <Box>
    //   <Button
    //     onClick={() => {
    //       setDestination("/map");
    //       setIsShowDialogConfirm(true);
    //     }}
    //   >
    //     Map
    //   </Button>
    //   <Button
    //     onClick={() => {
    //       setDestination("/virtual-tourism-3d");
    //       setIsShowDialogConfirm(true);
    //     }}
    //   >
    //     Virtual Tourism 3D
    //   </Button>
    //   {isShowDialogConfirm && (
    //     <DialogInformation
    //       title="Confirm"
    //       content="Are you sure you want to navigate to there?"
    //       onCancel={() => setIsShowDialogConfirm(false)}
    //       onConfirm={() => {
    //         navigate(destination);
    //       }}
    //     />
    //   )}
    // </Box>
  );
};
export default Home;
