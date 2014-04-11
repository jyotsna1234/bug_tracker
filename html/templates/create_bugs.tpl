<div class="labels">
			<form action="create_bugs_submit.php " method="post" name="form1" onsubmit="return validation()">
				<ul>
					<li>
						<label for="textbox1">Description:</label>
						<input type="input" id="textbox1" maxlength="200" name="descp" onkeyup="countCharacters('mycounter',200,'textbox1')"/>
						<div id="characters_remaining">
						<span id="mycounter">200</span> <span>Characters remaining</span>
						</div><br>
						<div class="sidebar">
							<p>Presets:
								<a href="#">use</a> /
								<a href="#">save</a>
							</p>
						</div>
						<br>
						<br>
					</li>
					<li>
						<label>Project:</label>
						<select name="proj">
						  	<option></option>
						  	<option>Shipping</option>
						  	<option>Checkout</option>  
						  	<option>Themes</option>
						  	<option>I18N</option>
						  	<option>API</option>
						  	<option>BigPay</option>
						</select>
					</li>
					<li>
						<label>Organisation:</label>
						<select name="org">
							<option></option>
						  	<option>Vasudhaika Software Solutions</option>
						</select>
					</li>
					<li>
						<label>Category:</label>
						<select name="category">
							<option></option>
							<option>Bug</option>
							<option>Enhancement</option>  
							<option>Clarification</option>
							<option>Questions</option>
							<option>Requirements</option>
						</select>
					</li>
					<li>
						<label>Priority:</label>
						<select name="priority">
							<option></option>
							<option>NO PRIORITY</option>
							<option>Low</option>
							<option>Medium</option>  
							<option>High</option>
						</select>
					</li>
					<li>
						<label>Assigned To:</label>
						<select name="assign">
							<option></option>
							<?php
							$result = mysql_query("SELECT * FROM Persons");
							while($row = mysql_fetch_assoc($result))
  								{
     							echo "<option>".$row['FirstName']."</option>";
								}
  							?>
  						</select>
					</li>
					<li>
						<label>Status:</label>
							<select name="status">
								<option></option>
								<option>New</option>
								<option>Checked IN</option>  
								<option>Closed</option>
								<option>In Progress</option>
								<option>ReOpen</option>
								<option>Not A Bug</option>
								<option>Postponed</option>
						</select>
					</li>
					<li>
						<label>Bug Type:</label>
						<select name="bugtype">
							<option></option>
							<option>Functional</option>
							<option>UI</option>  
						</select>			
					
					</li>
					<li>
						<label>Build:</label>
						<select name="build">
							<option></option>
							<option>Demo Issues</option>
						</select>			
					</li>
					<li>
						<label>Application:</label>
						<select name="app">
							<option></option>
							<option>iAgriMarC</option>
						</select>		
					</li>
					<li>
						<label>Modules/Applications:</label>
						<select name="modapp">
							<option></option>
							<option>DashBoard</option>
						</select>										
					</li>
				</ul>
			<div id="comments_section">
			<label class="commentsize" onclick="change_size(5)" name="+">[+]</label>&nbsp;
			<label class="commentsize" onclick="change_size(-5);" name="-">[-]</label>
			<label for="comment">Comments:</label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<!--<label id="textoncomment">Entering "bugid#999" in comment creates link to id 999</label>-->
			<textarea rows="5" cols="83" id="comment" name="comments"></textarea><br>
			<div id="submit">
				<input type="submit" value="Create" />
			</div>
			</div>
			</form>
		</div>
	</body>
</html>