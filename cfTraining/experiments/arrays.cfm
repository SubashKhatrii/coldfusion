<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<!---Step 1 - Create an array using explicit notation--->
	<cfset aColors= arrayNew(1)/>
	<cfset aColors[1]= 'Red'/>
	<cfset aColors[2]= 'Green'/>
	<cfset aColors[3]= 'Blue'/>

	<p>Dump the explicit array</p>
	<cfdump var="#aColors#" >
	
	<!---Step 2 - Create an array using the implicit array notation--->
	<cfset aColorImplicit=['Red','Green','Blue'] />
	
	<p>Dump the implicit array</p>
	<cfdump var="#aColorImplicit#" >
	
	
	<!---Step 3 - use arrayLen()--->
	
    
	<h1>The aColors array contains <cfoutput >#arrayLen(aColors)#
	    	
	    </cfoutput> Elements</h1>
    
	<!---Step 4 - use <cfloop> to loop over the array--->
	<cfoutput >
		<cfloop from="1" to="#arrayLen(aColors)#" index="i">
			#i#= #aColors[i]#<br/>
		</cfloop>
		
	</cfoutput>
    

	<!--- Step 5 - Use arrayAppend() and arrayPrepend() --->
	<cfset arrayAppend(aColors,'Orange') />
	<cfset arrayPrepend(aColors,'Yellow') />
	<cfdump var="#aColors#" label="The use of Prepend Array and append array" />
	
	
	<br />
	<!---Step 6 - Use arrayDeleteAt() --->
	<cfset arrayDeleteAt(aColors,4) />
	<cfdump var="#aColors#" label="Explicit Array after delete" >


</body>
</html>