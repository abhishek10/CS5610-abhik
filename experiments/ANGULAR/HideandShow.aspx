<!DOCTYPE html>
<html lang="en">
<head>
  <title>Hide and Show using AngularJS</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
</head>

<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Hide and show test on button click using angularJS</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<div ng-app="" ng-controller="personalController">

<button ng-click="toggle()">Hide and Show</button>

<p ng-show="myVar">
Text: {{info.Text}}
</p>

</div>

<script>
function personalController($scope) {
    $scope.info = {
        Text: "Wikipedia is a live collaboration differing from paper-based reference sources in important ways. Unlike printed encyclopedias, Wikipedia is continually created and updated, with articles on historic events appearing within minutes, rather than months or years. Older articles tend to be more comprehensive and balanced; newer articles may contain misinformation and/or unencyclopedic content. Any article may contain undetected vandalism. Awareness of this helps the reader to obtain valid information and avoid recently added misinformation",
    };
    $scope.myVar = true;
    $scope.toggle = function() {
        $scope.myVar = !$scope.myVar;
    };
}
</script> 
    </div>
    <hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;div&gt;
 &lt;h2&gt;About the Experiment&lt;/h2&gt; 
  &lt;p&gt;Hide and show test on button click using angularJS&lt;/p&gt;
&lt;/div&gt;
&lt;hr /&gt;
&lt;div&gt;
     &lt;h2&gt;Demo&lt;/h2&gt;
&lt;div ng-app=&quot;&quot; ng-controller=&quot;personalController&quot;&gt;

&lt;button ng-click=&quot;toggle()&quot;&gt;Hide and Show&lt;/button&gt;

&lt;p ng-show=&quot;myVar&quot;&gt;
Text: {{info.Text}}
&lt;/p&gt;

&lt;/div&gt;

&lt;script&gt;
function personalController($scope) {
    $scope.info = {
        Text: &quot;Wikipedia is a live collaboration differing from paper-based reference sources in important ways. Unlike printed encyclopedias, Wikipedia is continually created and updated, with articles on historic events appearing within minutes, rather than months or years. Older articles tend to be more comprehensive and balanced; newer articles may contain misinformation and/or unencyclopedic content. Any article may contain undetected vandalism. Awareness of this helps the reader to obtain valid information and avoid recently added misinformation&quot;,
    };
    $scope.myVar = true;
    $scope.toggle = function() {
        $scope.myVar = !$scope.myVar;
    };
}
&lt;/script&gt; 
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/ANGULAR/HideandShow.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
