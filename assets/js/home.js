
function clickLogo() {
    console.log('reloaded');
    window.location = "index.html";

}

function clickTalk(link_name) {
    var myLink = link_name + ".html"
    console.log('myLink='+myLink)
    window.location = myLink;
}


// When the user scrolls the page, execute myFunction
window.onscroll = function() {stickyHeader()};


function stickyHeader(){
    if (headerTitle==null || stickyOffset==null || headerElem==null || logoImage==null){
        var headerElem = document.getElementsByClassName("header")[0]
        var logoImage = document.getElementById('HeaderLogo')
        var headerTitle = document.getElementById('HeaderTitle')
        var stickyOffset = headerTitle.offsetTop;
        // console.log("stickyOffset=",stickyOffset)
    }
    if (window.innerWidth <= 515) {
        if (window.pageYOffset > stickyOffset) {
            headerElem.classList.add("sticky");
            logoImage.classList.add("disappear")
        } else {
            headerElem.classList.remove("sticky");
            logoImage.classList.remove("disappear")
        }
    } else {
        headerElem.classList.add("sticky");
    }
};