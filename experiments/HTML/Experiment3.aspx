<!DOCTYPE html>

<html lang='en'>

<head id="head1" runat="server">
    <meta charset="utf-8" />
    <title>Experiment 3</title>
    <style type="text/css">
        body {
          font-size: 15px;
          text-align: left;
          background: #E3CAA1;
        }

        ul {
          text-align: left;
          display: inline;
          margin: 0;
          padding: 15px 4px 17px 0;
          list-style: none;
        }
        ul li {
          font: bold 12px/18px sans-serif;
          display: inline-block;
          margin-right: -4px;
          position: relative;
          padding: 15px 20px;
          background: #fff;
          cursor: pointer;
        }
        ul li:hover {
          background: #555;
          color: #fff;
        }
        ul li ul {
          padding: 0;
          position: absolute;
          top: 48px;
          left: 0;
          width: 150px;
          -webkit-box-shadow: none;
          -moz-box-shadow: none;
          box-shadow: none;
          display: none;
          opacity: 0;
          visibility: hidden;
        }
        ul li ul li { 
          background: #555; 
          display: block; 
          color: #fff;
          text-shadow: 0 -1px 0 #000;
        }
        ul li ul li:hover { background: #666; }
        ul li:hover ul {
          display: block;
          opacity: 1;
          visibility: visible;
        }
    </style>
</head>
<body>

    <div>
       <h2>About the Experiment</h2> 
       <p>Selecting value from Drop Down Menu using CSS</p>
    </div>
    <hr />

<div>
    <h2>Demo</h2> 
<ul>
  <li>
    Home
      <ul>
          <li>New</li>
          <li>Open</li>
          <li>Search</li>
      </ul>
  </li>
  <li>
    Topics
    <ul>
      <li>Web Design</li>
      <li>Web Development</li>
      <li>Illustrations</li>
    </ul>
  </li>
  <li>Contact
    <ul>
      <li>test@test.com</li>
    </ul>
  </li>
</ul>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
    &lt;style type=&quot;text/css&quot;&gt;
        body {
          font-size: 15px;
          text-align: left;
          background: #E3CAA1;
        }

        ul {
          text-align: left;
          display: inline;
          margin: 0;
          padding: 15px 4px 17px 0;
          list-style: none;
        }
        ul li {
          font: bold 12px/18px sans-serif;
          display: inline-block;
          margin-right: -4px;
          position: relative;
          padding: 15px 20px;
          background: #fff;
          cursor: pointer;
        }
        ul li:hover {
          background: #555;
          color: #fff;
        }
        ul li ul {
          padding: 0;
          position: absolute;
          top: 48px;
          left: 0;
          width: 150px;
          -webkit-box-shadow: none;
          -moz-box-shadow: none;
          box-shadow: none;
          display: none;
          opacity: 0;
          visibility: hidden;
        }
        ul li ul li { 
          background: #555; 
          display: block; 
          color: #fff;
          text-shadow: 0 -1px 0 #000;
        }
        ul li ul li:hover { background: #666; }
        ul li:hover ul {
          display: block;
          opacity: 1;
          visibility: visible;
        }
    &lt;/style&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/HTML/Experiment3.aspx" target="_blank">View Source</a>
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