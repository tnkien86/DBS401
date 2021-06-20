import Product from '../models/product.model.js';
import b64 from 'base-64';
import getCartFromCookies from '../utils/getCartFromCookies.utils.js';

export const getProducts = async (req, res) => {
    const products = await Product.findAll();

    res.render('../views/products', {
        products,
    });
};

export const addToCart = async (req, res) => {
    const { id } = req.query;
    const product = await Product.findById(id);

    if (!product) {
        res.redirect('/');
    }

    const cart = getCartFromCookies(req.cookies);
    
    const newId = Object.values(cart).length + 1;

    cart[newId] = {
        id: product.id,
        name: product.name,
        price: product.price,
    };

    res.cookie('cart', b64.encode(JSON.stringify(cart)), {
        maxAge: 900000,
        httpOnly: true,
    });

    res.redirect('/');
};
