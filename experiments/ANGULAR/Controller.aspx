<!DOCTYPE html>
<html lang="en">
<head>
  <title>Controller using AngularJS</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
</head>

<body>
    <div>
 <h2>About the Experiment</h2> 
  <p>Controller using angularJS</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<div ng-app="" ng-controller="personController">

First Name: <input type="text" ng-model="firstName"><br>
Last Name: <input type="text" ng-model="lastName"><br>
<br>
Full Name: {{firstName + " " + lastName}}

</div>

<script>
function personController($scope) {
    $scope.firstName = "",
    $scope.lastName = ""
}
</script>
    </div>
    <hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;div ng-app=&quot;&quot; ng-controller=&quot;personController&quot;&gt;

First Name: &lt;input type=&quot;text&quot; ng-model=&quot;firstName&quot;&gt;&lt;br&gt;
Last Name: &lt;input type=&quot;text&quot; ng-model=&quot;lastName&quot;&gt;&lt;br&gt;
&lt;br&gt;
Full Name: {{firstName + &quot; &quot; + lastName}}

&lt;/div&gt;

&lt;script&gt;
function personController($scope) {
    $scope.firstName = &quot;&quot;,
    $scope.lastName = &quot;&quot;
}
&lt;/script&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/ANGULAR/Controller.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
