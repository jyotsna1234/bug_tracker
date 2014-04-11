<?php

session_start();
if(isset($_SESSION['UserName2']))
{
  unset($_SESSION['UserName2']);
}
session_destroy();
header('location:home.php');
?> 