
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bugsearch</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
<link rel="stylesheet" href="../css/header_bugsearch.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<style>
#ui-datepicker-div { font-size: 12px; } 
#datepicker{float:left; height:18px;}
</style>
<script>
$(function() {
    $(".datepicker").datepicker({
       //showOn: both - datepicker will come clicking the input box as well as the calendar icon
       //showOn: button - datepicker will come only clicking the calendar icon
       showOn: 'button',
       //you can use your local path also eg. buttonImage: 'images/x_office_calendar.png'
       buttonImage: 'http://theonlytutorials.com/demo/x_office_calendar.png',
       buttonImageOnly: true,
       changeMonth: true,
       changeYear: true,
       showAnim: 'slideDown',
       duration: 'fast',
       dateFormat: 'dd-mm-yy'
    });
});
</script>
</head>
<body>
	<div id="wrap">
		
		<div id="content">
			<p>Hold control to select multiple values</p>
			<div id="reportlb">
				<label>reported by:</label>
				<br>
				<select id="lb1"      name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			<div id="categorylb">
				<label>category:</label>
				<br>
				<select  id="lb2"     name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			
			<div id="prioritylb">
				<label>Priority:</label>
				<br>
				<select id="lb3"    name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			
			

			<div id="assignedtolb">
				<label>Assigned to:</label>
				<br>
				<select id="lb4"     name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			<div id="statuslb">
				<label>Status:</label>
				<br>
				<select id="lb5"   name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			
			<div id="orglb">
				<label>Organization:</label>
				<br>
				<select id="lb6" name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			
			<div id="projectlb">
				<label>Project:</label>
				<br>
				<select id="lb7" name="list_box_name[]" size="number_of_options" multiple="multiple">
					<option value="option1">Option1</option>
					<option value="option2">Option2</option>
					<option value="Option3">Option3</option>
					</select>
			</div>
			
				<form>
				
					<div id="fe1"><label id="labeldesc" >Bug description contains:</label><input id="inputdesc" type="text" name="bugdesc" ></div>
					<div id="fe2"><label id="labelcmt">Bug comments contains:</label><input id="inputcmt" type="text" name="bugdesc"></div>
					<div id="fe3"><label id="labelsince">Bug comments since: </label><input id="datepicker" class="datepicker" type="text" name="cmtsince"/> </div>
					<div id="fe4"><label id="reporton">"Reported on " from date:</label><input id="inputreport" class="datepicker" type="text" name="inputreport" /> <label id="report2">to:</label> <input id="inputreport2" class="datepicker" type="text" name="inputreport2"/></div>
					<div id="fe5"><label id="update">"last updated on" from date:</label><input id="inputupdate" class="datepicker" type="text" name="inputupdate" /> <label id="updateon2">to:</label> <input id="inputupdate2" class="datepicker" type="text" name="inputupdate2"/></div>
						
					<div id="fe6"> <label id= "process"  >Process :</label>
					<select id="lb8" name="list_box_name[]" size="3" multiple="multiple">
					<option value="option1">Option1</option>
					
					</select>
					
						</div>
						<div id="fe7"><label id="tcids">TC IDs contains: </label><input id="inputtcids" type="text" name="tcids" /></div>
						<div id="fe8"> <label id= "bugtype"  >Bug type:</label>
							<select id="lb9" name="list_box_name[]" size="3" multiple="multiple">
					<option value="option1">Option1</option>
					
					</select>
					
						</div>
						<div id="fe9"><label id="tcid">TC ID contains: </label><input id="inputtcid" type="text" name="tcid" /></div>
				
				<div id="fe10"><label>Use"and"logic :</label><input type="radio" for="use and logic" name="group"/><label>Use"or"logic :</label><input type="radio" for="useorlogic" name="group"/><br></div>
				
				<div id="fe11">
				<input  id="b1"  type="button" value="Search"/>
				<input id="b2"  type="button" value="Save Search criteria as query"/>
				</div>
				
				</form>
			
					
		
			
		
			
		</div>
		
		
	</div>
</body>
</html>
