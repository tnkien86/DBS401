import b64 from 'base-64';

const getCart = (cookies) =>
    cookies['cart'] ? JSON.parse(b64.decode(cookies['cart'])) : {};

export default getCart;
