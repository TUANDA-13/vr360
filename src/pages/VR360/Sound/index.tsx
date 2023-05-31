import Box from "@mui/material/Box/Box";
import Button from "@mui/material/Button/Button";
import { useRef } from "react";
import Vloumn from "../../../assets/images/sound.png";
import { useState, useEffect } from "react";
import { play } from "../../../app/slice/soundSlice";
import { useSelector, useDispatch } from "react-redux";
import { RootState } from "../../../app/store";
interface AudioPlayerInterFace {
  url: string;
}
export const AudioPlayer = ({ url }: AudioPlayerInterFace) => {
  const [isPlay, setIsPlay] = useState(true);
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const dispatch = useDispatch();
  
  const [audiourl, setAudioUrl] = useState("");
  const playAudio = () => {
    audioRef.current?.play();
    // dispatch(play());
  };
  const pauseAudio = () => {
    audioRef.current?.pause();
    dispatch(play());
  };

  const Audio = () => {
    const isTurnOnVolumn = useSelector((state: RootState) => {
      return state?.sound?.play;
    });
    useEffect(() => {
      console.log(isTurnOnVolumn);
    }, [isTurnOnVolumn]);
    return (
      <>
        {isTurnOnVolumn && (
          <Box position="absolute" right="0px">
            {
              <audio
                ref={audioRef}
                controls
                autoPlay
                style={{
                  visibility: "hidden",
                  // position: "absolute",
                  left: "-320px",
                }}
              >
                <source src={audiourl} type="audio/wav" />
              </audio>
            }
          </Box>
        )}
      </>
    );
  };
  useEffect(() => {
    playAudio();
  });

  useEffect(() => {
    // if (isPlay) {
    //   playAudio();
    // } else {
    //   pauseAudio();
    // }
    // let timer1 = setTimeout(() => playAudio(), 1000);
    // return () => clearTimeout(timer1);
    setAudioUrl(url);
  }, [isPlay, url]);
  return (
    <Box>
      {/* <Box position="absolute" right="0px">
        {audiourl && (
          <audio
            ref={audioRef}
            controls
            autoPlay
            style={{
              // visibility: "hidden",
              // position: "absolute",
              left: "-320px",
            }}
          >
            <source src={audiourl} type="audio/wav" />
          </audio>
        )}
      </Box> */}
      <Audio />
      <Button
        onClick={() => {
          // setIsPlay(!isPlay);
          // playAudio();
          console.log("HELLO");
          dispatch(play());
        }}
      >
        <Box display="flex">
          <img width="40px" src={Vloumn} alt=""></img>
        </Box>
      </Button>
    </Box>
  );
};
