import getCartFromCookies from '../utils/getCartFromCookies.utils';

export const cartMiddleware = async (req, res, next) => {
    const cart = getCartFromCookies(req.cookies);
	res.locals.cart = Object.values(cart).length;
	next();
};
