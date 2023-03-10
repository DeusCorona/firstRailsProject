var toggle = true;
var navbarMenuButton = document.getElementById("navbar--menuButton");
var navbarCloseButton = document.getElementById("navbar--closeButton");
var navbar = document.getElementById("navbar");
navbarMenuButton.addEventListener("click",navbarToggle);
navbarCloseButton.addEventListener("click",navbarToggle);

function navbarToggle()
{
    if(toggle === false)
    {
        navbar.style.display = "none";
        toggle = true;
    }else
    {
        navbar.style.display = "block";
        toggle = false;
    }

}

function fixTailwind()
{
    if(window.screen.availWidth >= 768)
    {
        navbar.style.display = "block";
        toggle = false;
    }
    setTimeout(fixTailwind, 1000);
}

fixTailwind();