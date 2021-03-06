<!---Get news years--->
<cfquery  name="rsNewsYears">
	SELECT FLD_NEWSCREATIONDATE AS fld_newsYear
	FROM TBL_NEWS
	ORDER BY FLD_NEWSCREATIONDATE DESC
	
	
</cfquery>
<cf_front title="Nepal band-News Page">
  <div id="pageBody">
    <div id="calendarContent">
    	<cfif isDefined('url.newsID')>
<cfquery  name="rsSingleNews">
	SELECT TBL_NEWS.FLD_NEWSCONTENT, TBL_NEWS.FLD_NEWSTITLE, TBL_NEWS.FLD_NEWSCREATIONDATE, TBL_USERS.FLD_USERFIRSTNAME, TBL_USERS.FLD_USERLASTNAME
	FROM TBL_NEWS INNER JOIN TBL_USERS ON TBL_NEWS.FLD_NEWSAUTHOR = TBL_USERS.FLD_USERID
	WHERE FLD_NEWSID = #url.newsID#
	
</cfquery>
<cfoutput >
	<h1>
		#rsSingleNews.FLD_NEWSTITLE#
	</h1>
	<p class="metadata">
		Published on #dateFormat(rsSingleNews.FLD_NEWSCREATIONDATE,'mmm dd yyyy')# by #rsSingleNews.FLD_USERFIRSTNAME# #rsSingleNews.FLD_USERLASTNAME# 
		
	</p>
	#rsSingleNews.FLD_NEWSCONTENT#
	
</cfoutput>

<cfelseif isDefined('url.year')>
<cfquery  name="rsNewsOfYear">
	SELECT FLD_NEWSTITLE, FLD_NEWSCREATIONDATE, FLD_NEWSID
	FROM TBL_NEWS
	WHERE year(FLD_NEWSCREATIONDATE) = #url.year#
	ORDER BY FLD_NEWSCREATIONDATE DESC 
	
	
</cfquery>
FLD_NEWSCREATIONDATEFLD_NEWSCREATIONDATEFLD_NEWSCREATIONDATEFLD_NEWSCREATIONDATEAPP.TBL_NEWSAPP.TBL_NEWSFLD_NEWSCREATIONDATEFLD_NEWSCREATIONDATE
<h1> All the News Of year<cfoutput> #url.year# </cfoutput></h1>
      <table>
		<!---Output  news in a table--->
		<cfoutput query="rsNewsOfYear" >
			<tr>
				<td >
					#dateFormat(FLD_NEWSCREATIONDATE,'mm dd yyyy')#
					
				</td>
				<td>
					#FLD_NEWSTITLE#
					
					
				</td>
				<td >
					<a href="news.cfm?newsID=#FLD_NEWSID#">Read More
						
					</a>
				</td>
			</tr>
			
		</cfoutput>
		
      </table>


    		<cfelse>
    		

<!---Get all news--->
<cfquery  name="rsAllNews">
	SELECT FLD_NEWSTITLE, FLD_NEWSCREATIONDATE, FLD_NEWSID
	FROM TBL_NEWS
	ORDER BY FLD_NEWSCREATIONDATE DESC
	
	
</cfquery>


	  <h1> News</h1>
      <table>
		<!---Output  news in a table--->
		<cfoutput query="rsAllNews" >
			<tr>
				<td >
					#dateFormat(FLD_NEWSCREATIONDATE,'mm dd yyyy')#
					
				</td>
				<td>
					#FLD_NEWSTITLE#
					
					
				</td>
				<td >
					<a href="news.cfm?newsID=#FLD_NEWSID#">Read More
						
					</a>
				</td>
			</tr>
			
		</cfoutput>
		
      </table>
      
    	</cfif>

</div>
    <div id="calendarSideBar">
<h1>News archive</h1>
      <ul>
       <cfoutput query="rsNewsYears" group="fld_newsYear">
       	<li ><a href="news.cfm?year=#fld_newsYear#">#fld_newsYear#
       		
       	</a>
       		
       	</li>
       	
       </cfoutput>
      </ul>
      <p class="alignRight">&nbsp;</p>
</div>
  </div>
</cf_front>
