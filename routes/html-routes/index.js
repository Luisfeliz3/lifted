const express = require("express");

const router = express.Router();
const postsRoute = require("./posts");
const searchRoute = require("./search");

// get route -> index
router.get("/", (req, res) => {
  res.redirect("/posts");
});

// get route -> index
router.get("/search", (req, res) => {
  res.redirect("/search");
});

// how to page
router.use("/posts", postsRoute);
router.use("/search", searchRoute);

module.exports = router;
