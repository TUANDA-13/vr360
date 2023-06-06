import Box from "@mui/material/Box/Box";
import Button from "@mui/material/Button/Button";
import { useRef } from "react";
import { ReactComponent as Vloumn } from "../../../assets/icons/sound.svg";
import { ReactComponent as Muted } from "../../../assets/icons/mute.svg";
import { useState, useEffect } from "react";
import { play } from "../../../app/slice/soundSlice";
import { useSelector, useDispatch } from "react-redux";
import { RootState } from "../../../app/store";
interface AudioPlayerInterFace {
  url: string;
}

export const AudioPlayer = ({ url }: AudioPlayerInterFace) => {
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const dispatch = useDispatch();
  const [audiourl, setAudioUrl] = useState("");

  const isTurnOnVolumn = useSelector((state: RootState) => {
    return state?.sound?.play;
  });
  const Audio = () => {
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
    setAudioUrl(url);
  }, [url]);
  return (
    <Box>
      <Audio />
      <Button
        onClick={() => {
          dispatch(play());
        }}
      >
        <Box display="flex">
          {isTurnOnVolumn ? (
            <Vloumn
              width="40px"
              height="40px"
              color="#fff"
              opacity="0.7"
              fill="#fff"
            />
          ) : (
            <Muted width="40px" opacity="0.7" height="40px" />
          )}
        </Box>
      </Button>
    </Box>
  );
};
