

<cfinclude template="includes/myFunctions.cfm" />
<cfset rsPage = getPageContent(2) />



<cfmodule template="customTags/front.cfm" title="Nepal band- history Page">

  <div id="pageBody">
<cfoutput >
  		
  		<h1>#rsPage.FLD_PAGETITLE#</h1>
    
    #rsPage.FLD_PAGECONTENT#
  		
  	</cfoutput>
</div>
  </cfmodule>
