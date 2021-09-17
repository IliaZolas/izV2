const navbarScroll = () => {
    const navbar = document.querySelector(".navbar");

    window.onscroll = () => {
        if (window.scrollY > 300) {
            navbar.classList.add("nav-scroll");
        } else {
            navbar.classList.remove("nav-scroll");
        }
    };
}

export { navbarScroll } ;