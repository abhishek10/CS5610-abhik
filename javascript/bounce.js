imageArray = new Array;

imageArray[0] = new Image;
imageArray[0].src = "../../images/experiments/ball0.gif";

imageArray[1] = new Image;
imageArray[1].src = "../../images/experiments/ball1.gif";

imageArray[2] = new Image;
imageArray[2].src = "../../images/experiments/ball2.gif";

imageArray[3] = new Image;
imageArray[3].src = "../../images/experiments/ball3.gif";

imageArray[4] = new Image;
imageArray[4].src = "../../images/experiments/ball4.gif";

imageArray[5] = new Image;
imageArray[5].src = "../../images/experiments/ball5.gif";

function bounce() {

    //document.images['ball'].src = "../../images/experiments/ball4.gif";

    setTimeout("document.images['ball'].src = imageArray[0].src", 100);
    setTimeout("document.images['ball'].src = imageArray[1].src", 200);
    setTimeout("document.images['ball'].src = imageArray[2].src", 300);
    setTimeout("document.images['ball'].src = imageArray[3].src", 400);
    setTimeout("document.images['ball'].src = imageArray[4].src", 500);
    setTimeout("document.images['ball'].src = imageArray[5].src", 600);
    setTimeout("document.images['ball'].src = imageArray[4].src", 700);
    setTimeout("document.images['ball'].src = imageArray[3].src", 800);
    setTimeout("document.images['ball'].src = imageArray[2].src", 900);
    setTimeout("document.images['ball'].src = imageArray[1].src", 1000);
    setTimeout("document.images['ball'].src = imageArray[0].src", 1100);
}