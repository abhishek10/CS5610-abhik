<html>

<head>
<title>Image Slider</title>
<script type="text/javascript" src="../../javascript/slider.js"></script>
</head>

<body>
    <div>
    <h2>About the Experiment</h2> 
    <p>You can flip from one image to another using next/previous link</p>
</div>
<hr />
<div>
<h2>Demo</h2>
<div align="center">
<h1>Image Slider</h1>
<div>
<IMG SRC="../../images/experiments/slider1.jpg" NAME="myPicture">
</div>
<div>
<A HREF="javascript:processPrevious()">Previous</A>
<A HREF="javascript:processNext()">Next</A>
</div>
</div>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
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
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JAVASCRIPT/Slider.aspx" target="_blank">View Source</a>
    <hr />
    </div>
    <hr />

    <div>
       <h2>References</h2> 
       <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>