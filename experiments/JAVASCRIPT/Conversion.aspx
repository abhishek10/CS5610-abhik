<!DOCTYPE html>
<html>
<head>
    <title>Conversion </title>
<script type="text/javascript" src="../../javascript/conversion.js"></script>
</head>

<body>
<div>
    <h2>About the Experiment</h2> 
    <p>Conversion between Celsius and Fahrenheit</p>
</div>
<hr />
<div>
<h2>Demo</h2>
<p>Insert a number into one of the input fields</p>

<input id="c" onkeyup="convert('C')"> Degree Celsius
<br /><br />
<input id="f" onkeyup="convert('F')"> Degree Fahrenheit

</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
function convert(degree) {
    if (degree == "C") {
        F = document.getElementById("c").value * 9 / 5 + 32;
        document.getElementById("f").value = Math.round(F);
    } else {
        C = (document.getElementById("f").value - 32) * 5 / 9;
        document.getElementById("c").value = Math.round(C);
    }
}
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JAVASCRIPT/Conversion.aspx" target="_blank">View Source</a>
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