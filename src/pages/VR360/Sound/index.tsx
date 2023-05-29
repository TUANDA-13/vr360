import Box from "@mui/material/Box/Box";
import Button from "@mui/material/Button/Button";
import { useRef } from "react";
import Vloumn from "../../../assets/images/sound.png";
import { useState, useEffect } from "react";
interface AudioPlayerInterFace {
  url: string;
}
export const AudioPlayer = ({ url }: AudioPlayerInterFace) => {
  const [isPlay, setIsPlay] = useState(true);
  const audioRef = useRef<HTMLAudioElement | null>(null);
  console.log(url);
  const playAudio = () => {
    audioRef.current?.play();
  };

  const pauseAudio = () => {
    audioRef.current?.pause();
  };

  useEffect(() => {
    if (isPlay) {
      playAudio();
    } else {
      pauseAudio();
    }
  }, [isPlay, url]);
  return (
    <Box>
      <Box position="absolute" right="0px">
        <audio
          ref={audioRef}
          controls
          autoPlay
          style={{
            visibility: "hidden",
          }}
        >
          <source src={url} type="audio/wav" />
        </audio>
      </Box>
      <Button
        onClick={() => {
          setIsPlay(!isPlay);
        }}
      >
        <Box display="flex">
          <img width="40px" src={Vloumn} alt=""></img>
        </Box>
      </Button>
    </Box>
  );
};
