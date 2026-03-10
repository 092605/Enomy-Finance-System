let lastScroll = 0;
const navbar = document.querySelector(".navbar");

window.addEventListener("scroll", () => {

    const currentScroll = window.pageYOffset;

    if (currentScroll <= 0) {
        navbar.classList.remove("navbar-hide");
        return;
    }

    if (currentScroll > lastScroll) {
        navbar.classList.add("navbar-hide");
    } else {
        navbar.classList.remove("navbar-hide");
    }

    lastScroll = currentScroll;

});




