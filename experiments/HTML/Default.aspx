<%@ Page Language="C#" %>

<!DOCTYPE html>

<html lang='en'>

<head id="head1" runat="server">
    <meta charset="utf-8" />
    <title>Source Server</title>
    <style type="text/css">
      ul.master_navigation
      {
          font-size: 100%;
          font-weight: bold;
          text-align: left;
          list-style: none;
          margin: 0.5em 0;
          padding: 50px;
          display: initial;
      }
    </style>
    <style type="text/css">
      body {
          background: url(images/background/other2.jpg) no-repeat center center fixed; 
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
      }
    </style>
</head>

<body>

<div class="pad">

<form id="form1" runat="server">

<div>

<ul class="master_navigation">
    <a href="experiment1.aspx">Experiment1</a>
    <a href="experiment2.aspx">Experiment2</a>
    <a href="experiment3.aspx">Experiment3</a>
</ul>
</div>
</form>
</div>    
</body>

</html>
