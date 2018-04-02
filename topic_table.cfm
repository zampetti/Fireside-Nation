<cfoutput>
    <p id="msg1"><i>(use the map markers to access the archive)</i></p>
    <table class="table">
        <thead>
        <tr>
            <th>Zip Code</th>
            <th>Name</th>
            <th>Archive</th>
        </tr>
        </thead>
        <tbody id="locTable" style="display: none;">
        <cfquery datasource="digital_history" name="submissions">
        SELECT location, audioLoc, username 
        FROM heroes
        </cfquery>
            
            <cfloop query="submissions">
                <tr>
                    <td>#submissions.location#</td>
                    <td>#submissions.username#</td>
                    <td>
                        <cfdirectory name="audio" action="list" directory="#expandPath("./Audio/#submissions.username#")#" sort="name ASC" />
                        <cfloop query=#audio#>                             
                            <audio controls><source src="Audio/#submissions.username#/#name#" /></audio>
                        </cfloop>
                    </td>
                </tr>
            </cfloop>
            
        </tbody>
    </table>
</cfoutput>

<!--- <cfoutput>
    <cfquery datasource="digital_history" name="submissions">
        SELECT location, audioLoc, username 
        FROM heroes
    </cfquery>
    
    <cfdirectory name="audio" action="list" directory="#expandPath("./Audio/#submissions.username#")#" sort="name ASC" />
              
    <CFTABLE QUERY = "audio" colHeaders>
            <CFCOL HEADER = "NAME:" TEXT = "#name#">
    </CFTABLE>
        
</cfoutput> --->