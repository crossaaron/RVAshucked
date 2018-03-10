var express = require('express');
var router = express.Router();
var expressValidator = require('express-validator');
var passport = require('passport');
var bcrypt = require('bcrypt');
const saltRounds = 10;

/* GET home page. */
router.get('/', function(req, res) {
    console.log(req.user);
    console.log(req.isAuthenticated());
    res.render('home', { title: 'Home' });
});

router.get('/register', function(req, res, next) {
    res.render('register', { title: 'Registration' });
});

router.get('/profile', authentificationMiddleware(), function(req, res, next) {
    res.render('profile', { title: 'Profile' });
});


router.get('/login', function(req, res, next) {
    res.render('login', { title: 'Login' });
});

router.post('/login', passport.authenticate('local', {
    successRedirect: '/profile',
    failureRedirect: '/login'
}));

router.get('/logout', function(req, res, next) {
    req.logout();
    req.session.destroy();
    res.redirect('/');
});

router.get('/availability', function(req, res, next) {
    res.render('availability', { title: 'Availability' });
});

router.get('/oysters', function(req, res, next) {
    res.json()
});

router.post("/api/tasting_notes", function(req, res) {
    console.log(req.body);
    res.json();
})

router.post('/register', function(req, res, next) {


    req.checkBody('username', 'Username field cannot be empty.').notEmpty();
    req.checkBody('email', 'Email field cannot be empty.').notEmpty();
    req.checkBody('password', 'Password field cannot be empty.').notEmpty();

    const errors = req.validationErrors();

    if (errors) {
        console.log(`errors; ${JSON.stringify(errors)}`);

        res.render('register', {
            title: 'Registration Error',
            errors: errors
        });
    } else {

        const username = req.body.username;
        const email = req.body.email;
        const password = req.body.password;

        const db = require('./../db.js');

        bcrypt.hash(password, saltRounds, function(err, hash) {
            db.query('INSERT INTO users (username, email, password) VALUES (?, ?, ?)', [username, email, hash], function(error, results, fields) {
                if (error) throw error;

                db.query('SELECT LAST_INSERT_ID() as user_id', function(error, results, fields) {
                    if (error) throw error;

                    const user_id = results[0];

                    req.login(user_id, function(err) {
                        res.redirect('/profile');
                    });
                });

            });
        });
    };
});

passport.serializeUser(function(user_id, done) {
    done(null, user_id);
});

passport.deserializeUser(function(user_id, done) {
    done(null, user_id);
});

function authentificationMiddleware() {
    return (req, res, next) => {
        console.log(
            `req.session.passport.user: ${JSON.stringify(req.session.passport)}`);
        if (req.isAuthenticated()) return next();
    };
    res.redirect('/login');
}

module.exports = router;