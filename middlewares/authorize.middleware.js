const User = require("../models/user.model");

module.exports = async (req, res, next) => {
  try {
    var user = await User.findOne({ _id: req.signedCookies.userId });
  } catch (err) {
    console.log(err);
  }
  res.locals.user = user;
  if (!(user && user.isAdmin)) {
    res.send("You cannot access this page.");
    return;
  }
  next();
};
