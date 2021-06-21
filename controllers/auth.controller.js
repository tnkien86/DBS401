import md5 from 'md5';
import User from '../models/user.model.js';

export const signIn = (_, res) => {
    res.render('../views/auth');
};

export const postSignIn = async (req, res) => {
    const { username, password } = req.body;
    try {
        const user = await User.findOne(username);
        const hashPassword = md5(password);

        if (!user || hashPassword !== user.password) {
            return res.render('../views/auth', {
                values: req.body,
                error: 'Wrong username or password',
            });
        }
        
        user.password = null;

        req.session.loggedin = true;
        req.session.user = user;
        res.redirect('/');
    } catch (error) {
        console.log(error);
        res.render('../views/auth', {
            values: req.body,
            error: 'Something went wrong :(',
        });
    }
};

export const logOut = (req, res) => {
    req.session.destroy();
    res.redirect('/')
}
