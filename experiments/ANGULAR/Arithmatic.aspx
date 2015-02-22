<!DOCTYPE html>
<html lang="en">
<head>
  <title>Arithmatic using AngularJS</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
</head>

<body>
    <div>
 <h2>About the Experiment</h2> 
  <p>Perform Arithmatic operations using angularJS</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<div data-ng-app="" data-ng-init="quantity=1;price=5">

<h2>Calculator</h2>


<input type="number" ng-model="num1" value="0"> &nbsp + &nbsp <input type="number" ng-model="num2" value="0"> &nbsp = &nbsp{{num1 + num2}}
<br /> 
<br /> 
<input type="number" ng-model="num3" value="0"> &nbsp -  &nbsp <input type="number" ng-model="num4" value="0"> &nbsp = &nbsp{{num3 - num4}}


<br /> 



</div>
    </div>
    <hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;div data-ng-app=&quot;&quot; data-ng-init=&quot;quantity=1;price=5&quot;&gt;
&lt;h2&gt;Calculator&lt;/h2&gt;
&lt;input type=&quot;number&quot; ng-model=&quot;num1&quot; value=&quot;0&quot;&gt; &amp;nbsp + &amp;nbsp &lt;input type=&quot;number&quot; ng-model=&quot;num2&quot; value=&quot;0&quot;&gt; &amp;nbsp = &amp;nbsp{{num1 + num2}}
&lt;br /&gt; 
&lt;br /&gt; 
&lt;input type=&quot;number&quot; ng-model=&quot;num3&quot; value=&quot;0&quot;&gt; &amp;nbsp -  &amp;nbsp &lt;input type=&quot;number&quot; ng-model=&quot;num4&quot; value=&quot;0&quot;&gt; &amp;nbsp = &amp;nbsp{{num3 - num4}}
&lt;br /&gt; 
&lt;/div&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/ANGULAR/Arithmatic.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>