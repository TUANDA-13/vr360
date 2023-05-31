import Box from "@mui/material/Box/Box";
import Button from "@mui/material/Button/Button";
import { useRef } from "react";
import Vloumn from "../../../assets/images/sound.png";
import { useState, useEffect } from "react";
export const AudioDefault = () => {
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
    <Box position="absolute" top="0px" left="0px" zIndex="-1">
      <audio
        ref={audioRef}
        controls
        loop
        autoPlay
        style={{
          // visibility: "hidden",
        }}
      >
        <source
          src="https://res.cloudinary.com/dssmcuelj/video/upload/v1685373653/y2mate_mp3cut.net_qgqnpl.mp3"
          type="audio/wav"
        />
      </audio>
    </Box>
  );
};
