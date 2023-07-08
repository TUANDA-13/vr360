import Box from "@mui/material/Box/Box";
import { useRef } from "react";
import { useState, useEffect } from "react";
// import sound from "../../../assets/sound/nhac-tinh-tam.wav";
export const AudioDefault = () => {
  const [delay, setDelay] = useState(true);
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const playAudio = () => {
    audioRef.current?.play();
  };

  useEffect(() => {
    setTimeout(() => {
      setDelay(false);
    }, 1000);
    playAudio();
  }, []);

  if (delay) {
    return <></>;
  }

  return (
    <Box position="absolute" top="0px" left="0px" zIndex="-1">
      <audio
        ref={audioRef}
        // controls
        loop
        autoPlay
        style={
          {
            // visibility: "hidden",
          }
        }
      >
        <source
          src="https://res.cloudinary.com/dssmcuelj/video/upload/v1685373653/y2mate_mp3cut.net_qgqnpl.mp3"
          type="audio/wav"
        />
      </audio>
    </Box>
  );
};
