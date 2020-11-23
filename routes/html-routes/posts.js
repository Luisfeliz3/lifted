const express = require("express");

const router = express.Router();
const db = require("../../models");

// routing (html) /posts
router.get("/", (req, res) => {
  // get posts from db and send to template
  db.workouts
    .findAll({
      order: [["id", "DESC"]]
    })
    .then(workouts => 
      
      res.render("index", {workouts : workouts} )
    )
    .catch((err) => {
      res.status(500);
      next(err);      
    });
}); 




module.exports = router;