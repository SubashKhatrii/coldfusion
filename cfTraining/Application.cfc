<cfcomponent output="false">
<cfset this.name="hdStreetWebsite" />
<cfset this.applicationTimeout = createtimespan(0,2,0,0) />
<cfset this.datasource='hdStreet' />
<cfset this.customTagPaths = expandPath('/cfTraining/customTags')/>
<!---Application starts methods--->
<cffunction name="onApllicationStart" returntype="boolean" >
	
	<cfreturn true />
	
	
</cffunction>
</cfcomponent>