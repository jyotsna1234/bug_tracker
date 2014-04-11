
<?php
session_start();
include("db.php");
$database = new database('localhost', 'root', 'vsspl');
$database->connectdb();
$database->select('bug_tracker');

if (isset($_POST['submit']))
{
         
       if(!empty($_POST['UserName']) && !empty($_POST['Password']))
{
  $UserNamef = $_POST['UserName'];
  $Passwordf = $_POST['Password'];

   $checklogin = mysql_query('SELECT * from login_users where UserName = "'. $UserNamef.'" ') or die(mysql_error());

    $row = mysql_fetch_array($checklogin);
     
    $UserNamedb = $row['UserName'];
$Passworddb = $row['Password'];
    //comparison start
if($UserNamef != $UserNamedb)
     {
      $feedback="Your account was not found, please try again.";

     }
else
{
if($Passwordf != $Passworddb)
{
$feedback="Your password is incorrect";
}
else
{
$_SESSION['UserName2']= $_POST['UserName'];
header('location:php/bugs_page.php');	
}
}
     //comparison done
}
    else
   {
        $feedback="Please fill in all the blank areas.";
   }

}
//$database->disconnectdb();
?>

<html>
<head>
<title>bugapp login page</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/home.css">
</head>
<body style="size: 100%;">
<div class="logo"><b>BugTracker</b></div>
<div class="first">
<h1>SIGN IN TO YOUR ACCOUNT</h1>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" name="myForm" >
<ul>
<div class="error">
<?php echo $feedback ?>
</div>

<li>
<label for="UserName" >UserName</label>
<input id="UserName" name="UserName" class="input">
</li>
<li>
<label for="Password">Password</label>
<input type="Password" id="Password" name="Password" class="input">
</li>
<li>
<input type="submit" id="submit" name="submit" value="submit" >
</li>
</ul>
</form>
</div>
<sidebar>
<ul>
<li><a href="#">BugTracker</a></li>
<li><a href="#">Help</a></li>
<li><a href="#">Feedback</a></li>
<li><a href="#">About</a></li>
<li><a href="#">Donate</a></li>
</ul>
</sidebar>
</body>
</html>

  