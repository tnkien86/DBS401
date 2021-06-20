import getCartFromCookies from '../utils/getCartFromCookies.utils';

export const userMiddleware = async (req, res, next) => {
    const cart = Object.values(getCartFromCookies(req.cookies)).length;
	const {user} = req.session;

	res.locals = {
		...res.locals,
		user,
		cart
	}
	next();
};
