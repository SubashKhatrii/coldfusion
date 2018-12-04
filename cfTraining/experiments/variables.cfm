<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<!--- step 1 - Create 2 variables using cfset--->
	<cfset firstName = 'subash'/>
	<cfset lastName = 'khatri'/>
	<cfoutput >
		<p>
			my first name is #firstName# and my last name is #lastName# 
		</p>
		
	</cfoutput>
	
	
	<!--- step 2 - Use cfoutput --->
	<cfset theNum= 10/>
	<cfset newNum= theNum + 5/>
	<cfoutput >
		<p>
			#newNum#
		</p>
		
	</cfoutput>
	

	<!---Step 3 - experiment with typeless variables--->
	
	
	
	<!---Step 4 - Copy /paste the above 3 lines below this comment--->
    

	<!---Step 5 - Experiment with the CGI scope--->
	
	
	
	<!---Step 6 - The server scope --->
	<cfdump var="#server#" >
	
</body>
</html>
