<?php 

ini_set(display_errors,1);
include("db.php");
$database = new database('localhost', 'root', 'vsspl');
$database->connectdb();
$database->select('bug_tracker');

$q = intval($_GET['q']);

$rec_limit=5;

if($q==1)
{
	$start=$q;
	$stop=$q*$rec_limit;
}
else{
	
	 $p=$q-1;
	 $start=($rec_limit*$p)+1;
	 $stop=$q*$rec_limit;
	
}

$result3=mysql_query("select * From bugs where ID>=$start and ID<=$stop");

for($d=$start;$d<=$stop;$d++)
{
	$row=mysql_fetch_array($result3);
	echo '<tr id=content><td id="cid">'.$row['ID'].'</td><td id="cflag">'.$row['flag'].'</td><td id="cdescription">'.$row['description'].'</td><td id="cproject">'.$row['project'].'</td><td id="ccategory">'.$row['category'].'</td><td id="creportedby">'.$row['reported_by'].'</td><td id="creportedon">'.$row['reported_on'].'</td><td id="cpriority">'.$row['priority'].'</td><td id="cassignedto">'.$row['assigned_to'].'</td><td id="cstatus">'.$row['status'].'<td id="clastupdatedby">'.$row['last_updated_by'].'</td><td id="clastupdatedon">'.$row['last_updated_on'].'</td></tr>';
   
 }	

?>









<script>
function showUser(str)
{
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {
  	// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("tabledata").innerHTML=xmlhttp.responseText;                      
    
    }
  }
xmlhttp.open("GET","paging.php?q="+str,true);
xmlhttp.send();
}
</script>







echo '<form>
<select name="users" onclick="showUser(this.value)">
<option value="">select page:</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
</form>
<br>