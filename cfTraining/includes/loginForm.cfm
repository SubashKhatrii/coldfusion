<!---Handle the logout--->
<cfif structKeyExists(URL,'logout') >
	<cfset createObject("component",'cfTraining.authenticationService').doLogout() />
	
</cfif>

<!---Form processing begins here--->
<cfif structkeyExists(form,'fld_submitLogin') >
	<!---Create an instance of the authentication serveice component--->
	<cfset authenticationService = createobject("component",'cfTraining.authenticationService') />
	<!--- Server side Validation--->
	<cfset aErrorMessages= authenticationService.validateUser(form.fld_userEmail, form.fld_userPassword) />
	<cfif ArrayisEmpty(aErrorMessages)>
		<!--- proceed to the login procedures--->
		<cfset isUserLoggedIn=authenticationService.dologin(form.fld_userEmail, form.fld_userPassword)/>
		
		
	</cfif>
</cfif>
<!--- Form procession ends here--->

<cfform id="frmConnexion" preservedata="true">
	<fieldset>
    <legend>Login</legend>
    <cfif structKeyExists(variables,'aErrorMessages') AND NOT ArrayIsEmpty(aErrorMessages)>
    	<cfoutput >
    		<cfloop array="#aErrorMessages#" item="message">
    			<p class="errorMessages">
    				#message#
    			</p>
    			
    		</cfloop>
    		
    	</cfoutput>
    </cfif>
    <cfif structKeyExists(variables,'isUserLoggedIn') AND isUserLoggedIn EQ false>
    	<p class="errorMessage">
    		User Not Found. Please try again !
    		
    	</p>
    	
    </cfif>
    <cfif structKeyExists(session,'stLoggedInUser')>
    	<!---Display a message of welcome to the website--->
    	<p>
    		<cfoutput >Welcome #session.stLoggedInUser.userFirstName# #session.stLoggedInUser.userLastName#!
    			
    		</cfoutput>
    	</p>
    	<p>
    		<a href="/cfTraining/profile.cfm">My Profile
    			
    		</a><a href="/cfTraining/index.cfm?logout">Logout
    			
    		</a>
    	</p>
    	<cfif isUserInRole('Administrator') >
    		<p>
    			<a href="/cfTraining/admin.cfm">
    				Site Administration
    			</a>
    		</p>
    		
    	</cfif>
    	<cfelse>
    </cfif>
		<dl>
        	<dt><label for="fld_userEmail">E-mail address</label></dt>
            <dd><cfinput type="text" name="fld_userEmail" id="fld_userEmail" required="true" validate="email" validateAt="onSubmit" message="Please enter a valid e-mail Address" /></dd>
    		<dt><label for="fld_userPassword">Password</label></dt>
            <dd><cfinput type="password" name="fld_userPassword" id="fld_userPassword" required="true"  validateAt="onSubmit" message="Please provide a password" /></dd>
        </dl>
        <cfinput type="submit" name="fld_submitLogin" id="fld_submitLogin" value="Login" />
    </fieldset>
</cfform>
