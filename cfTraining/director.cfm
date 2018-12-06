<cfinclude template="includes/myFunctions.cfm" />
<cfset rsPage = getPageContent(1) />


<!---Get page content--->
<cf_front title="Nepal band- director Page">
  <div id="pageBody">
  	<cfoutput >
  		
  		<h1>#rsPage.FLD_PAGETITLE#</h1>
    
    #rsPage.FLD_PAGECONTENT#
  		
  	</cfoutput>
  	</div>

 </cf_front>