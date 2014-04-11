<?php
/*//connecting to sql
$con=mysqli_connect("localhost","root","vsspl");

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
   //Create database
$sql="CREATE DATABASE bug_tracker";
if (mysqli_query($con,$sql))
  {
  echo "Database my_db created successfully";
  }
else
  {
  echo "Error creating database: " . mysqli_error($con);
  }
  
  //connecting to database bug_tracker
$con=mysqli_connect("localhost","root","vsspl","bug_tracker");

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
  //creating table
$tb="CREATE TABLE login_users(UserName VARCHAR(30),Password VARCHAR(30))";


if (mysqli_query($con,$tb))
  {
  echo "Table persons created successfully<br>";
  }
else
  {
  echo "Error creating table: " . mysqli_error($con);
  }
  
 //inserting data
mysqli_query($con,"INSERT INTO login_users (UserName,Password)
VALUES ('prathyusha1','pratyu')");
mysqli_query($con,"INSERT INTO login_users (UserName,Password)
VALUES ('Bhadram2', 'bhadra')");
mysqli_query($con,"INSERT INTO login_users (UserName,Password)
VALUES ('Naresh3', 'naresh')");
 
 */

 
 ?>