
    ffserver -f ffserver.conf
    ./bmdcapture -m 11 -V 3 -A 2 -F nut -f pipe:1 | ffmpeg -i - -r 5 http://localhost:8090/monitoring1.ffm
