<?php
switch ($_GET["action"]){

case start:    
    if (file_get_contents("pianobarpid") == "down"){
        shell_exec("pianobar > pianobarstdout & echo $! > pianobarpid");
        file_put_contents("songinfo","Waiting for song info");
        }  
    break;

case stop:
    shell_exec("killall pianobar");
    file_put_contents("pianobarpid","down");
    file_put_contents("songinfo","Service Stopped");
    break;
}
?>
