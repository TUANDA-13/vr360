import { Box, Typography } from "@mui/material";
import { useNavigate } from "react-router-dom";
import { useMemo } from "react";
import background from "../../assets/images/background.jpg";
import { HomeStyled } from "./styled";
import EastIcon from "@mui/icons-material/East";
import RouterPath from "../../router/RouterPath";

const Home = () => {
  const navigate = useNavigate();
  const renderTitle = useMemo(() => {
    return "CHÙA LINH ỨNG".split(" ").map((item) => {
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
              navigate(RouterPath.MAP);
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
  );
};
export default Home;
