import './configs/env.config.js';
import './configs/db.config.js';
import express from 'express';
import session from 'express-session';
import cookieParser from 'cookie-parser';
import { signIn, postSignIn, getProducts, addToCart, getCart } from './controllers';
import { cartMiddleware } from './middlewares';

const app = express();

app.use(
    session({
        secret: 'secret',
        resave: true,
        saveUninitialized: true,
    })
);

app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.set('views', './views');
app.use('/', express.static('./public'));
app.use('/styles', express.static('./views/styles'));
app.set('view engine', 'pug');

app.use(cartMiddleware);
// Auth route
app.get('/auth', signIn);
app.post('/auth', postSignIn);

// Products route
app.get('/', getProducts);
app.get('/addToCart', addToCart);

// Cart route
app.get('/cart', getCart)

const PORT = process.env.PORT || 1402;
app.listen(PORT, () => {
    console.log(`Server starting on port ${PORT}`);
});
