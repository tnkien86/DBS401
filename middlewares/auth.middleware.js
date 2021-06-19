module.exports.requireAuth = async (req, res, next) => {
    if (!req.signedCookies.userId) {
        res.redirect('/auth/signin');
        return;
    }

    try {
        const user = await User.findOne({ _id: req.signedCookies.userId });
    } catch (err) {
        console.log(err);
    }

    if (!user) {
        res.redirect('/auth/signin');
        return;
    }
    next();
};
