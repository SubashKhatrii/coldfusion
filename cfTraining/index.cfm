
<cfinclude template="includes/myFunctions.cfm" />

<cf_front >

  <div id="pageBody">
    <div id="homeContent">
    	<!---Display Latest news section--->
    	<cfset latestNews = getLatestNews(1) />

  
  <cfoutput >
  	<h1>
  		#latestNews.FLD_NEWSTITLE#
  	</h1>
  	<p class="metadata"> Published on #dateFormat(latestNews.FLD_NEWSCREATIONDATE,'mmm dd yyyy')# by
  	#latestNews.FLD_NEWSAUTHOR# 
  	#latestNews.FLD_NEWSCONTENT#
  		
  	</p>
  	
  </cfoutput>
  
     
    </div>
    <div id="homeSideBar">
      <div class="pod">
        <h1 id="nextEventsTitle">Next Events</h1>
        <cfset currentEvents = getEvents(2) />
        <cfoutput query="currentEvents" group="fld_eventID">
        <ul>
           <li><a href="event.cfm?eventID=#fld_eventID#"><strong>#dateFormat(fld_eventDateTime,'mmm-dd')#</strong> --- #fld_eventLocation#</a></li>
        </ul>        	
        </cfoutput>
      </div>
      <div class="pod">
        <h1 id="latestNewsTitle">latest News</h1>
        <cfset sideNews = getSideNews(4) />
   
        <ul>
        	<cfoutput query="sideNews" group="fld_newsID">
         
          <li><a href="news.cfm?newsID=#fld_newsID#"><strong>#dateFormat(fld_NewsCreationDate,'mmm-dd')#</strong> - #left(fld_newsTitle, 20)#</a></li>
        </cfoutput>
        </ul>
      </div>
    </div>
  </div>
</cf_front>