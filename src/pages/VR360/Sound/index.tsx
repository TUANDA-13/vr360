import Box from "@mui/material/Box/Box";
import Button from "@mui/material/Button/Button";
import { useRef } from "react";
import Vloumn from "../../../assets/images/sound.png";
import { useState, useEffect } from "react";
export const AudioPlayer = () => {
  const [isPlay, setIsPlay] = useState(true);
  const audioRef = useRef<HTMLAudioElement | null>(null);

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
  }, [isPlay]);
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
          <source
            src="https://res.cloudinary.com/dssmcuelj/video/upload/v1684940260/nc8vv1xvzu3xy2hzgist.wav"
            type="audio/wav"
          />
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
