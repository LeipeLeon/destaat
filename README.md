
On a linux server (Digital Ocean):

    apt-get install ffmpeg
    # and copy the config `ffserver.conf`

Start server

    ffserver -f ffserver.conf

Start server, log to an access file but keep it on sreen

    ffserver -f ffserver.conf | tee -a logs/access.log

On a remote server:

    ulimit -Hn 200000 # Hard limit open file descriptors for shell session
    ulimit -Sn 65536 # Soft limit open file descriptors for shell session
    nohup ffserver -f ffserver.conf | tee -a logs/access.log &

Kill it

    killall ffserver

Get the input from iPhone

    ffmpeg -i http://192.168.99.43/live -r 15 http://188.226.129.169:8090/destaat.ffm

This can be viewed on:

    http://188.226.129.169:8090/UN5E.mjpg

Text for in SMS message:

HELP YOURSELF

http://destaat.zenduit.nl/?UN5E

Grab incoming w/ a Intensity Shuttle

    cd /Users/berl/Projects/Blackmagic\ DeckLink\ SDK\ 10.9.5/Mac/Samples/bmdtools/
    ./bmdcapture -m 11 -V 3 -A 2 -F nut -f pipe:1 | ffmpeg -i - -r 15 http://localhost:8090/monitoring1.ffm
    ./bmdcapture -m 14 -V 3 -A 2 -F nut -f pipe:1 | ffmpeg -i - -r 5 -q 1 http://localhost:8090/monitoring1.ffm

For modes:

    ./bmdcapture -h

Generate a unique code:

    genUniqueCode.rb


Run local (development) PHP server

    php -S localhost:8000
