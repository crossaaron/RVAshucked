var express = require("express");

var router = express.Router();

var db = require("../models/");



// get route, edited to match sequelize
router.get("/api/oysters", function(req, res) {
  // replace old function with sequelize function
  db.Oyster.findAll()
    // use promise method to pass the burgers...
    .then(function(dbOyster) {
      console.log(dbOyster);
      // into the main index, updating the page
      res.json(dbOyster);
    });
});

// router.post("/burgers/create", function(req, res) {
//   // edited burger create to add in a burger_name
//   db.Burger.create({
//     burger_name: req.body.burger_name
//   })
//     // pass the result of our call
//   .then(function(dbBurger) {
//       // log the result to our terminal/bash window
//     console.log(dbBurger);
//       // redirect
//     res.redirect("/");
//   });
// });