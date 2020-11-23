const express = require("express");

const Sequelize = require("sequelize");

const router = express.Router();
const db = require("../../models");

router.get('/:text', (req, res) => {

  const { term } = req.params.text;
  db.workouts.findAll({ 
      // where: { title: { [Op.like]: '%' + term + '%'}}
  })
  .then(workouts => res.render('search', {workouts}))
  .catch(err => console.log(err))

})

module.exports = router;
