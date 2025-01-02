import express from "express";
import authController from "../controllers/authController.js";
const authRouter = express.Router();

//user register
authRouter.post("/register", authController.userRegister);

//user login
authRouter.post("/login", authController.userLogin);
export default authRouter;