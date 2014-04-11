<?php

 include("db.php");
$databasee = new database('localhost', 'root', 'vsspl');
$databasee->connectdb();
$databasee->select('bug_tracker');

/*$sql="CREATE TABLE bugs(descp VARCHAR(30),proj VARCHAR(30),org VARCHAR(30),category VARCHAR(30),priority VARCHAR(30),assign VARCHAR(30),status VARCHAR(30),bugtype VARCHAR(30),build VARCHAR(30),app VARCHAR(30),modapp VARCHAR(30),comments VARCHAR(30))";
if (mysqli_query($con,$sql))
  {
  echo "Table bugs created successfully";
  }
else
  {
  echo "Error creating table: " . mysqli_error($con);
  }*/
  /*echo $_POST['descp'];*/
$sql="INSERT INTO bugs(description,project,organisation ,category,priority,assigned_to,status,bugtype,build,app,modapp,comments)
VALUES('$_POST[descp]','$_POST[proj]','$_POST[org]','$_POST[category]','$_POST[priority]','$_POST[assign]','$_POST[status]','$_POST[bugtype]','$_POST[build]','$_POST[app]','$_POST[modapp]','$_POST[comments]')";
if (!mysql_query($sql))
  {
  die('Error: ' . mysql_error());
  }
  
  
echo "1 record added";
?>