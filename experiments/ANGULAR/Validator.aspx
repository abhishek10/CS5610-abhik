<!DOCTYPE html>
<html lang="en">
<head>
  <title>Validator using AngularJS</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
</head>
    
<body>

    <div>
 <h2>About the Experiment</h2> 
  <p>Perform email type validation using angularJS</p>
</div>
<hr />
<div>
     <h2>Demo</h2>

<form ng-app="" ng-controller="validateCtrl" 
name="myForm" novalidate>

<p>Email:<br>
<input type="email" name="email" ng-model="email" required>
<span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
<span ng-show="myForm.email.$error.required">Email is required.</span>
<span ng-show="myForm.email.$error.email">Invalid email address.</span>
</span>
</p>

<p>
<input type="submit"
ng-disabled="myForm.email.$dirty && myForm.email.$invalid">
</p>

</form>

<script>
function validateCtrl($scope) {
    $scope.email = '';
}
</script>
    </div>
    <hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;form ng-app=&quot;&quot; ng-controller=&quot;validateCtrl&quot; 
name=&quot;myForm&quot; novalidate&gt;
&lt;p&gt;Email:&lt;br&gt;
&lt;input type=&quot;email&quot; name=&quot;email&quot; ng-model=&quot;email&quot; required&gt;
&lt;span style=&quot;color:red&quot; ng-show=&quot;myForm.email.$dirty &amp;&amp; myForm.email.$invalid&quot;&gt;
&lt;span ng-show=&quot;myForm.email.$error.required&quot;&gt;Email is required.&lt;/span&gt;
&lt;span ng-show=&quot;myForm.email.$error.email&quot;&gt;Invalid email address.&lt;/span&gt;
&lt;/span&gt;
&lt;/p&gt;
&lt;p&gt;
&lt;input type=&quot;submit&quot;
ng-disabled=&quot;myForm.email.$dirty &amp;&amp; myForm.email.$invalid&quot;&gt;
&lt;/p&gt;
&lt;/form&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/ANGULAR/Validator.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
