<!DOCTYPE HTML>
<html>
<head>
<title>Fireside Nation</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="FSNstylesheet.css" rel="stylesheet">    
</head>
<body>
<header>
    
    <div class="headImg">
        <!--- <img id="logo" src="Images/History_Speeches_1145_FDR_Banking_Crisis_still_624x352.jpg" alt="FDR header image"> --->
        <div class="top-left">Fireside Nation</div>
    </div>
    
    
</header>
<div id="mainnav">
    
        <a href="FSNAbout.html">About</a>
        <a href="FSNTopics.html">Topic</a>
        <a href="FSNForm.cfm">Submissions</a>
        <a href="FSNMap.cfm">Archive</a>
    
</div>
<!--- <div id="mapAndArchive" style="margin: auto; width: 80%;">
        <iframe width="100%" height="600" frameborder="0" allowfullscreen src="https://www.historypin.org/en/fireside-nation-map/geo/37.09024,-95.712891,3/bounds/-7.362467,-133.564911,65.440002,-57.860871/paging/1"></iframe>
</div> --->
    
<cfquery datasource="digital_history" name="submissions">
SELECT location, username 
FROM heroes;
</cfquery>
        
<div class="col-md-8" style="margin: 5% 0 5% 0;">
    <cfajaximport params="#{googlemapkey = 'AIzaSyB-e-yVh4wxBjdtYl2nw2CaLm0a0VObtcI'}#" />
    <cfmap
        centerAddress="United States"
        height="600"
        width="800"
        zoomlevel="5"
           >        
        <cfloop query="submissions">
            <cfmapitem address=#location# markerwindowcontent="<input type='button' value=#location# class='btn btn-info btn-lg' id='mapclick' onclick='showZip()' />" />
        </cfloop>
    </cfmap>
</div>
    
<h2>Topics</h2><hr>
<div class="col-md-4" id="topicTables">
    <div class="panel-group" id="accordion">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
            Heroes</a>
          </h4>
        </div>
        <div id="collapse1" class="panel-collapse collapse">
          <div class="panel-body">
            <cfinclude template="topic_table.cfm" />
          </div>
        </div>
      </div>
    </div>
</div>
    
<script>
    function showZip() {
        var value = document.getElementById('mapclick').value;
        var showMsg = document.getElementById('locTable');
        var hideMsg = document.getElementById('msg1');
        showMsg.style.display = 'table-row-group';
        hideMsg.style.display = 'none';
        $("#locTable tr").filter(function() { $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    }
</script>
            
<footer>
    <p>&copy; Fireside Nation  All Rights Reserved</p>
</footer>
</body>
</html>