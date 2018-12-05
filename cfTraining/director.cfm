<cfinclude template="includes/myFunctions.cfm" />
<cfset rsPage = getPageContent(1) />


<!---Get page content--->
<cfmodule template="customTags/front.cfm" title="Nepal band- director Page">
  <div id="pageBody">
  	<cfoutput >
  		
  		<h1>#rsPage.FLD_PAGETITLE#</h1>
    
    #rsPage.FLD_PAGECONTENT#
  		
  	</cfoutput>
  	</div>

  </cfmodule>