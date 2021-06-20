let options = {
    root: document,
    rootMargin: '0px',
    threshold: 1.0,
};

const header = document.querySelector('.header');
const navbar = document.querySelector('.navbar')

let observer = new IntersectionObserver(() => {
    navbar.classList.toggle('bg-onscroll')
}, options);

observer.observe(header);
