ajax-pianobar
=============

Java script and php to control and view pianobar

This was made for a Raspberry Pi with raspian apache2, php5, and pianobar. 
I am not a software developer and this is my first attempt at java script and php

this project is intended to be a very basic starting point for pianobar web interface to be refined and built upon 

How it works:

For pianobar status:
pianobar is configured to execute eventcmd.sh on an event in the ~/.config/pianobar/config file with the "event_comman =" parameter
eventcmd.sh writes artist, song, and album to file /var/www/songinfo. apache does not like to access files outside of /var/www/
pianobar.html reads /var/www/songinfo every 5 seconds and updates the textarea with the text from that file.

For pianobar control:
pianobar is configured to be controled by reading a fifo file in the ~/.config/pianobar/config file with the "fifo =" parameter
the "fifo =" parameter was set to "fifo = /var/www/fifo" since apache does not like to access files outside of /var/www/
pianobar.html on button press GET "wrfifo.php" and sends the keypress as an argument (+ for love, - for ban, n for next..)
wrfifo.php gets the kepress in the argument and writes it to the "var/www/fifo" file.
pinaobar reads the "var/www/fifo" file as input to control the application.



