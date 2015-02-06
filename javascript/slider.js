var myPix = new Array("../../images/experiments/slider1.jpg", "../../images/experiments/slider2.jpg", "../../images/experiments/slider3.jpg", "../../images/experiments/slider4.jpg", "../../images/experiments/slider5.jpg");
var thisPic = 0;

function processPrevious() {
    if (document.images && thisPic > 0) {
        thisPic--;
        document.myPicture.src = myPix[thisPic];
    }
}

function processNext() {
    if (document.images && thisPic < 4) {
        thisPic++;
        document.myPicture.src = myPix[thisPic];
    }
}