import axios, { AxiosInstance } from "axios";

const baseURL = process.env.REACT_APP_API_URL; // Replace with your API base URL

const axiosInstance: AxiosInstance = axios.create({
  baseURL,
});

export default axiosInstance;
