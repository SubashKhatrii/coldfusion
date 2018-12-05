
<cfmodule template="customTags/front.cfm" title="Nepal band- Agenda Page"> 
  <div id="pageBody">
    <div id="calendarContent">
    	<cfquery datasource="hdStreet" name="rsCurrentEvents" >
    		SELECT FLD_EVENTID, FLD_EVENTNAME, FLD_EVENTDATETIME, FLD_EVENTLOCATION, FLD_EVENTVENUE
    		FROM TBL_EVENTS
    		
    		ORDER BY FLD_EVENTDATETIME ASC 
    		
    	</cfquery>
<h1> Agenda</h1>
<cfif rsCurrentEvents.recordCount EQ 0>
	<p>
		Sorry No event to display at this time
	</p>
	

<cfelse>
<table >
	<cfoutput query="rsCurrentEvents">
		<tr>
			<th >
				#dateFormat(FLD_EVENTDATETIME,'mmm dd yyyy')#
				
			</th>
			<td >#FLD_EVENTNAME# - #FLD_EVENTLOCATION# (#FLD_EVENTVENUE#)
				
			</td>
			<td >
				<a href="agenda.cfm">
					Read More>>
				</a>
				
			</td>
		</tr>
		
	</cfoutput>
	
</table>

 
</cfif>    
</div>
    <div id="calendarSideBar">
    	
    	<cfif rsCurrentEvents.recordCount EQ 0>
	<p>
		Sorry No event to display at this time
	</p>
	

<cfelse>
<cfoutput>
<h1>Next Event</h1>
      <div id="EventDetails">
        <p id="eventDate"><span id="month">#dateFormat(rsCurrentEvents.FLD_EVENTDATETIME, 'mmm')#</span> <span id="days">#dateFormat(rsCurrentEvents.FLD_EVENTDATETIME, 'dd')#</span></p>
        <h2>#rsCurrentEvents.FLD_EVENTNAME# -- #rsCurrentEvents.FLD_EVENTLOCATION#</h2>
      </div>
      <p> #rsCurrentEvents.FLD_EVENTVENUE# </p>
      <p class="alignRight"><a href="events/20110719.html">Read More</a></p>
</cfoutput>
</div>
  </div>
  </cfif>
 </cfmodule>