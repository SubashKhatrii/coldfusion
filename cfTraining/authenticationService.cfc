<cfcomponent output="false">
	

	<cffunction name="doLogout" access="public" output="false" returntype="void">
		<!---Delete User Data From The Session Scope --->
		<cfset structdelete(session, 'stLoggedInUser') />
<!--- Log the User Out From the Session--->

<cflogout />


	</cffunction>
	
<!---User login method are here--->
	<cffunction name="validateUser" access="public" output="false" returntype="array">
		<cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPassword" type="string" required="true" />
			<cfset var aErrorMessages= ArrayNew(1)/>
<!---The Validation of the user email--->
<cfif NOT isValid('email', arguments.userEmail)>
	<cfset arrayAppend(aErrorMessages,'Please provide a valid emailId')/>
	
</cfif>
	
<!---The Validation of the user Password--->
<cfif arguments.userPassword EQ ''>
	<cfset arrayAppend(aErrorMessages,'Please provide a valid password')/>
	
</cfif>
	
	<cfreturn aErrorMessages />

	</cffunction>
	<!---User do method are here!--->

	<cffunction name="doLogin" access="public" output="false" returntype="boolean">
		<cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPassword" type="string" required="true" />
		<!---Create the isUserLoggegIn varaible--->
		<cfset var isUserLoggedIn= false />
		<!---Get the user data from the database  --->
		<cfquery name="rsLoginUser">
			SELECT TBL_USERS.FLD_USERFIRSTNAME, TBL_USERS.FLD_USERLASTNAME, TBL_USERS.FLD_USERID, TBL_USERS.FLD_USEREMAIL, TBL_USERS.FLD_USERPASSWORD, TBL_ROLES.FLD_ROLENAME
			FROM TBL_USERS INNER JOIN TBL_ROLES ON TBL_USERS.FLD_USERROLE = TBL_ROLES.FLD_ROLEID
			WHERE FLD_USEREMAIL ='#arguments.userEmail#' AND FLD_USERPASSWORD = '#arguments.userPassword#' AND FLD_USERISACTIVE = 1
			
			
		</cfquery>
			
		
		<!---check if the query returns only one user or not  --->
		<cfif rsLoginUser.recordCount EQ 1 >
		
		<!--- Log the user in --->
		<cflogin>
			<cfloginuser name="#rsLoginUser.FLD_USERFIRSTNAME# #rsLoginUser.FLD_USERLASTNAME# " password="#rsLoginUser.FLD_USERPASSWORD#" roles="#rsLoginUser.FLD_ROLENAME#" >
			
		</cflogin>
		<!---save user data in session scope  --->
		<cfset session.stLoggedInuser={'userFirstName'= rsLoginUser.FLD_USERFIRSTNAME,'userLastName'=rsLoginUser.FLD_USERLASTNAME, 'userID'=rsLoginUser.FLD_USERID} />
		<!---Change the isuser logged in varaible is true or not ..if not true then return false  --->
		<cfset var isUserLoggedIn= true />
		
		</cfif>
		<!---Return the is userloggin varaible without any error  --->
		<cfreturn isUserLoggedIn/>
	</cffunction>

</cfcomponent>