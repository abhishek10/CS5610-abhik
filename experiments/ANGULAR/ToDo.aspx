<!DOCTYPE html>
<html lang="en">
<head>
  <title>To Do List using AngularJS</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
</head>

<body ng-app ng-controller="todoCtrl">
<div>
 <h2>About the Experiment</h2> 
  <p>Displaying To Do List using angularJS</p>
</div>
<hr />
<div>
     <h2>Demo</h2>

<h2>My Todo List</h2>

<form ng-submit="todoAdd()">
    <input type="text" ng-model="todoInput" size="50" placeholder="Add New">
    <input type="submit" value="Add New">
</form>

<br>

<div ng-repeat="x in todoList">
    <input type="checkbox" ng-model="x.done"> <span ng-bind="x.todoText"></span>
</div>

<p><button ng-click="remove()">Remove marked</button></p>

<script>
    function todoCtrl($scope) {
        $scope.todoList = [{ todoText: 'Clean House', done: false }];

        $scope.todoAdd = function () {
            $scope.todoList.push({ todoText: $scope.todoInput, done: false });
            $scope.todoInput = "";
        };

        $scope.remove = function () {
            var oldList = $scope.todoList;
            $scope.todoList = [];
            angular.forEach(oldList, function (x) {
                if (!x.done) $scope.todoList.push(x);
            });
        };
    }
</script>
    </div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;div class=&quot;container&quot;&gt;
  &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;Default&lt;/button&gt;
  &lt;button type=&quot;button&quot; class=&quot;btn btn-primary&quot;&gt;Primary&lt;/button&gt;
  &lt;button type=&quot;button&quot; class=&quot;btn btn-info&quot;&gt;Info&lt;/button&gt;
  &lt;button type=&quot;button&quot; class=&quot;btn btn-warning&quot;&gt;Warning&lt;/button&gt;
  &lt;button type=&quot;button&quot; class=&quot;btn btn-danger&quot;&gt;Danger&lt;/button&gt;  
&lt;/div&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/ANGULAR/ToDo.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
