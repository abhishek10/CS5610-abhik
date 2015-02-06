<%@ Page Language="C#" %>

<!DOCTYPE html>

<html lang='en'>

<head id="head1" runat="server">
    <meta charset="utf-8" />
    <title>Experiment 1</title>
    <link rel="stylesheet" type="text/css" href="exp1.css" />
    <style type="text/css">
        .thumbnail {
            width: auto;
            height: auto;
            margin: auto;
            display:block;
            top: auto;
            position: absolute;
            left: auto;
            float: left;
        }

        .image {
            max-width: 50%;
            height: auto;
            width: auto; 
        }

        .image img {
            -webkit-transition: all 1s ease; /* Safari and Chrome */
            -moz-transition: all 1s ease; /* Firefox */
            -ms-transition: all 1s ease; /* IE 9 */
            -o-transition: all 1s ease; /* Opera */
            transition: all 1s ease;
        }

        .image:hover img {
            -webkit-transform:scale(1.25); /* Safari and Chrome */
            -moz-transform:scale(1.25); /* Firefox */
            -ms-transform:scale(1.25); /* IE 9 */
            -o-transform:scale(1.25); /* Opera */
             transform:scale(1.25);
        }
    </style>
</head>
<body>
    <div>
       <h2>About the Experiment</h2> 
       <p>Hovering ove image enlarges image</p>
    </div>
    <hr />
<div>
    <h2>Demo</h2> 
<div class="thumbnail">
    <div class="image">
        <img src="../../images/background/download.jpg"/>
    </div>
</div>
<hr />
</div>
    <div>
       <h2>Code Snippet</h2> 
       <p>Hovering ove image enlarges image</p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <p>Hovering ove image enlarges image</p>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
       <p><a href="www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />



</body>
</html>