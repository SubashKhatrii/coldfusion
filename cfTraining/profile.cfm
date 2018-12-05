
<!---Form Processing scripts starts here --->
<cfif structKeyExists(form, 'fld_editUserSubmit')>
	<!---Server side data validation --->
	<cfset aErrorMessages = ArrayNew(1) />
	<cfset variables.formSubmitComplete = false />
	
	<!---Validate first name --->
	<cfif form.fld_userFirstName EQ ''>
		<cfset arrayAppend(aErrorMessages,'Please provide first name') />
		
	</cfif>
		<!---Validate last name --->
	<cfif form.fld_userLastName EQ ''>
		<cfset arrayAppend(aErrorMessages,'Please provide last name') />
		
	</cfif>
		<!---Validate email --->
	<cfif form.fld_userEmail EQ '' OR NOT isValid("eMail", form.fld_userEmail)>
		<cfset arrayAppend(aErrorMessages,'Please provide Email Address') />
		
	</cfif>
	<!---Validate the password match and confirmation  --->
	<cfif form.fld_userPassword NEQ form.fld_userPasswordConfirm >
		<cfset arrayAppend(aErrorMessages,'The password and the password confirmation donot match.') />
		
	</cfif>

<!---Continue Form processing if the aErrorMessages array is empty--->
<cfif arrayIsEmpty(aErrorMessages) >
	<cfquery datasource="hdStreet" >
		UPDATE TBL_USERS 
		SET
		FLD_USERFIRSTNAME ='#form.fld_userFirstName#',
		FLD_USERLASTNAME ='#form.fld_userLastName#',
		FLD_USEREMAIL ='#form.fld_userEmail#',
		FLD_USERPASSWORD ='#form.fld_userPassword#',
		FLD_USERINSTRUMENT =#form.fld_userInstrument#,
		FLD_USERCOMMENT ='#form.fld_userComment#'
		
		WHERE FLD_USERID= #form.fld_userID#	
	<cfset variables.formSubmitComplete = true />
	
		</cfquery>
		
		</cfif>
	
</cfif>



<!---Form processing ends here--->

<!---Get user to update--->
<cfquery datasource="hdStreet" name="rsUserUpdate">
	SELECT FLD_USERID, FLD_USERFIRSTNAME, FLD_USERLASTNAME, FLD_USEREMAIL, FLD_USERPASSWORD, FLD_USERCOMMENT, FLD_USERINSTRUMENT
	FROM TBL_USERS
	WHERE FLD_USERID = 19
	
	
</cfquery>

<!---Get instruments to feed the form's Drop-Down list--->
<cfquery datasource="hdStreet" name="rsInstrumentsList">
	SELECT FLD_INSTRUMENTID, FLD_INSTRUMENTNAME
	FROM TBL_INSTRUMENTS
	ORDER BY FLD_INSTRUMENTNAME ASC
</cfquery>
<cfmodule template="customTags/front.cfm" title="Nepal band- My Profile Page">
	<div id="pageBody">
		<h1>Update your profile</h1>
		<cfform id="frm_editUser" name="fld_editUserSubmit">
			<fieldset>
				<legend>Your profile</legend>
				<!---Output error messages if any--->
				
				<!---Output feedback message if form has been successfully submitted--->
				<cfif structKeyExists(variables,'formSubmitComplete') AND variables.formSubmitComplete>
					<p class="feedback"> 
						Your Profile Has been Updated !
						
					</p>
					
				</cfif>
				
				<dl>
					<!---First name text field--->
					<cfinput name="fld_userID" value="#rsUserUpdate.FLD_USERID#" type="hidden" >
					<dt><label for="fld_userFirstName">First Name</label></dt>
					<dd><cfinput name="fld_userFirstName" id="fld_userFirstName" Value="#rsUserUpdate.FLD_USERFIRSTNAME#" required="true" message="Please provide a valid first name" validateAt="onSubmit" /></dd>
					<!---Last name text field--->
					<dt><label for="fld_userLastName">Last Name</label></dt>
					<dd><cfinput name="fld_userLastName" id="fld_userLastName" Value="#rsUserUpdate.FLD_USERLASTNAME#" required="true" message="Please, provide a valid last name" validateAt="onSubmit" /></dd>
					<!---E-Mail Address text field--->
					<dt><label for="fld_userEmail">E-mail Address</label></dt>
					<dd><cfinput name="fld_userEmail" id="fld_userEmail" required="true" Value="#rsUserUpdate.FLD_USEREMAIL#" validate="email" message="Please, provide a valid e-mail Address" validateAt="onSubmit" /></dd>
					<!---Password text field--->
					<dt><label for="fld_userPassword">Password</label></dt>
					<dd><cfinput type="password" name="fld_userPassword" id="fld_userPassword" Value="#rsUserUpdate.FLD_USERPASSWORD#" required="true" message="Please, provide a password" validateAt="onSubmit" /></dd>
					<dt><label for="fld_userPasswordConfirm">Confirm password</label></dt>
					<dd><cfinput type="password" name="fld_userPasswordConfirm" id="fld_userPasswordConfirm" Value="#rsUserUpdate.FLD_USERPASSWORD#" required="true" message="Please, confirm your password" validateAt="onSubmit" /></dd>
					<!---Instruments drop-down list--->
					<dt><label for="fld_userInstrument">Instrument</label></dt>
					<dd>
						<cfselect name="fld_userInstrument" id="fld_userInstrument" query="rsInstrumentsList" value="FLD_INSTRUMENTID" display="FLD_INSTRUMENTNAME" queryposition="below" selected="#rsUserUpdate.FLD_USERINSTRUMENT#">
							<option value="0">Please choose your instrument</option>
						</cfselect>
					</dd>
					<!---Comment Textarea--->
					<dt><label for="fld_userComment">Comment</label></dt>
					<dd><cftextarea name="fld_userComment" id="fld_userComment" richtext="true" toolbar="Basic"><cfoutput >
						
					     	#rsUserUpdate.FLD_USERCOMMENT#
					     </cfoutput></cftextarea></dd>
				</dl>
				<!---Submit button--->
				<input type="submit" name="fld_editUserSubmit" id="fld_editUserSubmit" value="Update my profile" />
			</fieldset>
		</cfform>
	</div>
</cfmodule>