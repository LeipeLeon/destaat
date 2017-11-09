
    ffserver -f ffserver.conf
    # Keep it on sreen
    ffserver -f ffserver.conf | tee logs/access.log

    # Get the input from iPhone
    ffmpeg -i http://192.168.3.23/live -r 15 http://localhost:8090/destaat.ffm
    # This can be viewed on:
    http://localhost:8090/destaat.mjpg

    # Grab incoming w/ a Intensity Shuttle
    cd /Users/berl/Projects/Blackmagic\ DeckLink\ SDK\ 10.9.5/Mac/Samples/bmdtools/
    ./bmdcapture -m 11 -V 3 -A 2 -F nut -f pipe:1 | ffmpeg -i - -r 15 http://localhost:8090/monitoring1.ffm
    ./bmdcapture -m 14 -V 3 -A 2 -F nut -f pipe:1 | ffmpeg -i - -r 5 -q 1 http://localhost:8090/monitoring1.ffm

    # For modes:
    ./bmdcapture -h
