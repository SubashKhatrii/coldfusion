<cffunction name="getPageContent" returntype="query" >
	<cfargument name="pageID" type="numeric" required="true">
	<cfset var rsPage='' />
	<cfquery  name="rsPage">
	SELECT FLD_PAGETITLE, FLD_PAGECONTENT
	FROM TBL_PAGES
	WHERE FLD_PAGEID= #arguments.pageID# AND FLD_PAGEISACTIVE = 1
	
	
</cfquery>

<cfreturn rsPage>

	
</cffunction>

<cffunction name="getLatestNews" returntype="query" >
	<cfargument name="pageID" type="numeric" required="true">
	<cfset var latestNews='' />
<cfquery  name="latestNews">
	SELECT FLD_NEWSID, FLD_NEWSTITLE, FLD_NEWSAUTHOR, FLD_NEWSCREATIONDATE, FLD_NEWSCONTENT
	FROM TBL_NEWS INNER JOIN TBL_USERS ON TBL_NEWS.FLD_NEWSAUTHOR = TBL_USERS.FLD_USERID
	WHERE FLD_NEWSID= #arguments.pageID# 
	
	
</cfquery>
<cfreturn latestNews>
	
</cffunction>
<cffunction name="getSideNews" returntype="query" >
	<cfargument name="pageID" type="numeric" required="true">
	<cfset var sideNews='' />
<cfquery  name="sideNews">
	SELECT FLD_NEWSID, FLD_NEWSTITLE, FLD_NEWSAUTHOR, FLD_NEWSCREATIONDATE, FLD_NEWSCONTENT
	FROM TBL_NEWS INNER JOIN TBL_USERS ON TBL_NEWS.FLD_NEWSAUTHOR = TBL_USERS.FLD_USERID
	WHERE FLD_NEWSID= #arguments.pageID# 
	
	
</cfquery>
	
	<cfreturn sideNews>
</cffunction>

<cffunction name="getEvents" returntype="query" >
	<cfargument name="numEvents" type="numeric" required="false" default="-1">
	<cfset var currentEvents='' />
<cfquery  name="currentEvents" maxrows="#arguments.numEvents#">
	SELECT FLD_EVENTID, FLD_EVENTNAME, FLD_EVENTDATETIME, FLD_EVENTLOCATION, FLD_EVENTVENUE, FLD_EVENTDESCRIPTION  
	FROM TBL_EVENTS
	WHERE FLD_EVENTDATETIME >= #now()#
	ORDER BY FLD_EVENTDATETIME ASC 
	
	
</cfquery>
	
	<cfreturn currentEvents>
</cffunction>
