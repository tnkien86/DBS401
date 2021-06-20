import getCartFromCookies from '../utils/getCartFromCookies.utils';

export const getCart = (req, res) => {
    const cart = getCartFromCookies(req.cookies);
    const prices = Object.values(cart).map(product => {
        const {price} = product;
        return price.substring(1);
    }).join('+');
    const total = eval(prices) || 0;
    
    res.render('../views/cart', {
        total: total.toFixed(2),
        amount: Object.values(cart).length
    })
};
