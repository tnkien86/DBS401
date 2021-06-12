var mysql = require("mysql");
var express = require("express");
var session = require("express-session");
var path = require("path");
let multer = require("multer");

var connection = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "Anbo2004trung",
	database: "mydb",
});

var app = express();
app.use(
	session({
		secret: "secret",
		resave: true,
		saveUninitialized: true,
	})
);
app.use(multer().array());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.set("views", path.join(__dirname, "views"));
app.use(express.static(__dirname + "/views"));
app.set("view engine", "pug");

app.get("/", function (req, res) {
	res.render("login");
});

app.post("/auth", function (req, res) {
	console.log(req);
	var username = req.body.username;
	var password = req.body.password;
	if (username && password) {
		connection.query(
			"SELECT * FROM user WHERE username = ? AND password = ?",
			[username, password],
			function (error, results, fields) {
				if (results.length > 0) {
					req.session.loggedin = true;
					req.session.username = username;
					res.redirect("/home");
				} else {
					res.send("Incorrect Username and/or Password!");
				}
				res.end();
			}
		);
	} else {
		res.send("Please enter Username and Password!");
		res.end();
	}
});

app.get("/home", function (req, res) {
	res.render("home");
});

app.listen(1103);
