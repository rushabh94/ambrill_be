const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const appRouter = require("./src/routes/index.js");
const app = express();
require("dotenv").config();
app.use(cors());

// Parse JSON bodies
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json({ type: "application/json" }));
app.use(express.urlencoded({ extended: true }));

app.use("/", appRouter);

const PORT = process.env.PORT;
try {
  app.listen(PORT, () => console.log(`App started on port ${PORT}`));
  console.log("DB Connection has been established successfully.");
} catch (error) {
  console.error("DB Connection Error: ", error);
}
