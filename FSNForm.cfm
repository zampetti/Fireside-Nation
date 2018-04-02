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
<link href="FSNcontactstyle.css" rel="stylesheet" />
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
    <div id="wrapper">
        
        <cfif isdefined("form.insertAns")> 
            <cfset dirname = #firstname# & " " & #lastname# />
            <!--- <cfset newDirectory = "#expandPath("./Audio/")#" & trim(#username#) /> --->
            <cfset newDirectory = "C:/ColdFusion2016/cfusion/wwwroot/DigitalHistoryProject/Audio/" & trim(#dirname#) />
            <cfdirectory action="create" directory="#newDirectory#" />
            
            <cffile action="uploadall"
                    destination=#newDirectory#
                    nameConflict="makeunique" />
            <cfoutput><p>Thank you, your files have been uploaded.</p>
                      <p><a href="FSNAbout.html">Return to Home Page</a></p></cfoutput>
            <cfelse>         
    
        <form name="insertAns" id="insertAns" method="post" action="FSNForm.cfm" enctype="multipart/form-data">
            <table id="contact">
                <div class="jumbotron">
                    <h1>Heroes</h1> 
                    <p>Heroes can take different forms. They can be role models, family members, even movie characters.</p> 
                  </div>
                <tr>
                    <td>
                    <label for="question1">Who is your hero?</label>
                    </td>
                    <td>
                        <dl>
                            <dt>What is their name?</dt>
                            <dd><input type="text" name="answer1" id="question1" size="50"></dd>
                            <dt>How do you know them?</dt> 
                            <dd><select name="selection1">
                                    <option value="0">Select from the following:</option>
                                    <option value="1">Family Member</option>
                                    <option value="2">Friend</option>
                                    <option value="3">Educator</option>
                                    <option value="4">Historical Figure</option>
                                    <option value="5">Religious/Spiritual Figure</option>
                                    <option value="6">Role Model</option>
                                    <option value="7">Celebrity</option>
                                    <option value="8">Fictional Character</option>
                                </select></dd>
                        </dl>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="audiofile">Describe a memory you have of your hero, even if you think it's only important to you.</label>
                    </td>
                    <td>
                        <button type="button" id="btn-status" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-upload"></span> Upload Audio</button>
                          <!-- Modal -->
                          <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h4 class="modal-title">Upload Audio</h4>
                                </div>
                                <div class="modal-body">
                                    <label for="file">Upload Audio</label>
                                    <input type="file" name="fileData" id="audioUpload" accept=".mp3, .wav" value="audio1" />
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                              </div>
                            </div>
                          </div>
                    </td>
                </tr>
                <tr>
                    <td>
                    <label for="question2">How do you try to be like your hero?</label>
                    </td>
                    <td>
                        <dl>
                            <dt>Which of your hero's traits do you try to emulate?</dt>
                            <dd><textarea type="text" name="answer2" id="question2" rows="4" cols="50"></textarea></dd>
                            <dt>Which trait is most important?</dt> 
                            <dd><select name="selection2">
                                    <option value="0">Select from the following:</option>
                                    <option value="1">Kindness</option>
                                    <option value="2">Strength</option>
                                    <option value="3">Intelligence</option>
                                    <option value="4">Leadership</option>
                                    <option value="5">Attractiveness</option>
                                    <option value="6">Humor</option>
                                    <option value="7">Artistic Ability</option>
                                </select></dd>
                        </dl>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="audiofile">Give an example from your life in which you tried to be like your hero.</label>
                    </td>
                    <td>
                        <button type="button" id="btn-status" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-upload"></span> Upload Audio</button>
                          <!-- Modal -->
                          <div class="modal fade" id="myModal2" role="dialog">
                            <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h4 class="modal-title">Upload Audio</h4>
                                </div>
                                <div class="modal-body">
                                    <label for="file">Upload Audio</label>
                                    <input type="file" name="fileData" id="audioUpload" accept=".mp3, .wav" />
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                              </div>
                            </div>
                          </div>
                    </td>
                </tr>
                <tr>
                    <td>
                    <label for="question3">Where did your hero come from?</label>
                    </td>
                    <td>
                        <dl>
                            <dt>1) Describe your first encounter with your hero. If you've never actually met, describe how you came to idolize them.</dt>
                            <dd><textarea type="text" name="answer3" id="question3" rows="4" cols="50"></textarea></dd>
                            <dt>2) When in life did it happen?</dt> 
                            <dd><select name="selection3">
                                    <option value="0">Select from the following:</option>
                                    <option value="1">All your life</option>
                                    <option value="2">Very Young</option>
                                    <option value="3">Adolescence</option>
                                    <option value="4">Young Adult</option>
                                    <option value="5">Middle Age</option>
                                    <option value="6">Twilight</option>
                                </select></dd>
                        </dl>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="audiofile">Call your Mother!</label><br />Or Father... or son or daughter or whoever. Tell them about your hero, and ask what they think. And don't forget to record it!
                    </td>
                    <td>
                        <button type="button" id="btn-status" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-upload"></span> Upload Audio</button>
                          <!-- Modal -->
                          <div class="modal fade" id="myModal3" role="dialog">
                            <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h4 class="modal-title">Upload Audio</h4>
                                </div>
                                <div class="modal-body">
                                    <label for="file">Upload Audio</label>
                                    <input type="file" name="fileData" id="audioUpload" accept=".mp3, .wav" />
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                              </div>
                            </div>
                          </div>
                    </td>
                </tr>
            </table>
            <table class="well">
                <h3>Now tell us about you</h3>
                <tr>
                    <td id="aboutYou">
                    <label for="firstName">What's your first name?</label>
                    </td>
                    <td id="aboutYou">
                    <input type="text" name="firstname" id="wholeName" size="20" />
                    </td>
                </tr>
                <tr>
                    <td id="aboutYou">
                    <label for="lastName">What's your last name?</label>
                    </td>
                    <td id="aboutYou">
                    <input type="text" name="lastname" id="wholeName" size="20" />
                    </td>
                </tr>
                <tr>
                    <td id="aboutYou">
                    <label for="email">What's your email?</label>
                    </td>
                    <td id="aboutYou">
                    <input type="email" name="email" id="email" size="20" />
                    </td>
                </tr>
                <tr>
                    <td id="aboutYou">
                    <label for="address">What's your zip code?</label>
                    </td>
                    <td id="aboutYou">
                    <input type="text" name="location" id="location" size="20" />
                    </td>
                </tr>
            </table>
            <input type="submit" name="insertAns" value="Submit to Your Archive" id="submit" class="btn-default btn-lg" />
        </form>
        </cfif>
        <cfif IsDefined("form.insertAns")>
            <cfset username = #firstname# & " " & #lastname# />
            <cfquery datasource="digital_history">
                INSERT INTO heroes (answer1, selection1, answer2, selection2, answer3, selection3, audioLoc, username, email, location)
                VALUES ('#form.answer1#', #form.selection1#, '#form.answer2#', #form.selection2#, '#form.answer3#', #form.selection3#, '#newDirectory#', '#username#', '#form.email#', '#form.location#');
            </cfquery>
        </cfif>
                        <script>
                            var inputArray = [].slice.call(document.querySelectorAll("#audioUpload"));
                                                                                                                
                            var pullfiles=function(){ 
                                for (var i=0; i<inputArray.length; i++) {
                                    var fileInput = inputArray[i];
                                    var files = fileInput.files;
                                    var fl = files.length;
                                    console.log(files);
                                    
                                    if (fl > 0) {
                                        var addCheck = document.querySelectorAll(".glyphicon");
                                        var checkSuccess = document.querySelectorAll("#btn-status");
                                        var checkArray = [].slice.call(addCheck);
                                        var successArray = [].slice.call(checkSuccess);
                                        
                                        for (var r=0; r<3; r++) {
                                            if (r == i) {
                                                checkArray[r].classList.remove("glyphicon-upload");
                                                //checkArray[r].classList.add("glyphicon-ok");
                                                successArray[r].classList.remove("btn-info");
                                                successArray[r].classList.add("btn-success");
                                                successArray[r].innerHTML =  '<span class="glyphicon glyphicon-ok"></span>' + " Success!";
                                            }
                                        }
                                    } console.log(fl) ;
                                }
                            }
                            
                            for (var i=0; i<inputArray.length; i++) {inputArray[i].onchange=pullfiles};
                                                          
                        </script>
            
            <script>
                window.onscroll = function() {myFunction()};

                var navbar = document.getElementById("mainnav");
                var sticky = navbar.offsetTop;

                function myFunction() {
                  if (window.pageYOffset >= sticky) {
                    navbar.classList.add("sticky")
                  } else {
                    navbar.classList.remove("sticky");
                  }
                }
            </script>
            
        </div>
                        
    <footer>
    <p>&copy; Fireside Nation  All Rights Reserved</p>
</footer>
    </body>
</html>