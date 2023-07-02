import styled, { keyframes } from "styled-components";

const animate1 = keyframes`
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
}`;
const animate2 = keyframes`
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
}`;
const animate3 = keyframes`
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
}`;
const animate4 = keyframes`
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
}`;
export const HomeStyled = styled.div`
  .container {
    .char-item {
      transition: 0.3 !important;
      text-shadow: 0 0 0 #fff;
      margin:0px 15px;

      :hover {
        text-shadow: 0 0 7px #fff, 0 0 10px #fff, 0 0 21px #fff,
          0 0 42px #5271ff, 0 0 82px #5271ff, 0 0 92px #5271ff,
          0 0 102px #5271ff, 0 0 151px #5271ff;
        transform: scale(1.1);
      }
    }
    .background {
      object-fit: cover;
    }
    .name {
      margin-bottom: 20px;
      color: white;
    }

    .overlay {
      position: absolute;
      top: 0px;
      left: 0px;
      right: 0px;
      bottom: 0px;
      background-color: rgb(0, 0, 0, 0.6);
    }

    .btn-explore {
      margin-top: 20px;
      padding: 15px 30px;
      color: white;
      cursor: pointer;
      position: relative;
      overflow: hidden;
      text-transform: uppercase;
      display: flex;
      align-items: center;
      transition: all 0.3s ease-in-out;

      .right-arrow {
        transition: width 0.3s;
        margin-left: 10px;
        margin-right: 5px;
        transition: all 0.2s ease-in-out;
      }
      :hover {
        background-color: var(--btn-explore);
        color: var(--main-content-text-color);
        box-shadow: 0 0 7px var(--btn-explore), 0 0 10px var(--btn-explore), 0 0 21px var(--btn-explore), 0 0 42px #5271ff,
          0 0 82px #5271ff, 0 0 92px #5271ff, 0 0 102px #5271ff,
          0 0 151px #5271ff;

        .right-arrow {
          margin-left: 15px;
          margin-right: 0px;
        }

        span {
          display: none;
        }
      }
      span {
        display: block;
        position: absolute;
        /* animation: ${animate1} 1s linear infinite; */
        z-index: 2000;
      }

      span:nth-child(1) {
        top: 0;
        left: -100%;
        width: 100%;
        height: 2px;
        background: linear-gradient(90deg, transparent, white);
        animation: ${animate1} 2s linear infinite;
      }

      span:nth-child(2) {
        top: -100%;
        right: 0;
        width: 2px;
        height: 100%;
        background: linear-gradient(180deg, transparent, white);
        animation: ${animate2} 2s linear infinite;
        animation-delay: 0.5s;
      }

      span:nth-child(3) {
        right: -100%;
        bottom: 0;
        width: 100%;
        height: 2px;
        background: linear-gradient(270deg, transparent, white);
        animation: ${animate3} 2s linear infinite;
        animation-delay: 1s;
      }

      span:nth-child(4) {
        bottom: -100%;
        left: 0;
        height: 100%;
        width: 2px;
        background: linear-gradient(360deg, transparent, white);
        animation: ${animate4} 2s linear infinite;
        animation-delay: 1.5s;
      }
    }
  }
`;
