var db = require("../models");

module.exports = function(app) {

    // GET route for getting all of the todos
    app.get("/api/oysters", function(req, res) {
        // findAll returns all entries for a table when used with no options
        console.log(db.oysters)
        db.oysters.findAll({}).then(function(dbOyster) {
            // We have access to the oysters as an argument inside of the callback function
            res.json(dbOyster);
        });
    });

    app.get("/api/restaurants_has_oysters", function(req, res) {
        // findAll returns all entries for a table when used with no options
        console.log(db.restaurants_has_oysters);
        db.restaurants_has_oysters.findAll({}).then(function(dbOystId) {
            // We have access to the oysters as an argument inside of the callback function
            res.json(db.OystId);
        });
    });

    app.post("/api/oysters", function(req, res) {
        console.log(req.body);
        // create takes an argument of an object describing the item we want to
        // insert into our table. In this case we just we pass in an object with a text
        // and complete property (req.body)
        db.oysters.create({
            name: req.body.name,
            zone: req.body.zone,
            location: req.body.location,
            profile: req.body.profile
        }).then(function(dbOyster) {
            // We have access to the new oyster as an argument inside of the callback function
            res.json(dbOyster);
        });
    });

    //app.post("/api/tasting_notes", function(req, res) {
    //    console.log(req.body);
    //})

};