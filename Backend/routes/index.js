const routes = require("express").Router();

const UserRoutes = require("./UserRoutes");
//const LoanRoutes = require("./loan");

routes.use("/user", UserRoutes);
//routes.use("/loan", LoanRoutes);

module.exports = routes;