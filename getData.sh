mkdir -p data/GIS
mkdir -p data/staypoints

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        #Get staypoints
        wget "https://www.dropbox.com/s/tjm8chqfv62etdo/normalDay.csv?dl=0" -O data/staypoints/normalDay.csv
        wget "https://www.dropbox.com/s/bkvxyh6xyv7var9/LaVueltaDay.csv?dl=0" -O data/staypoints/LaVueltaDay.csv
        wget "https://www.dropbox.com/s/hv5dafntummc86n/CirqueDuSoleilDay.csv?dl=0" -O data/staypoints/CirqueDuSoleilDay.csv

        #Get GIS
        wget "https://www.dropbox.com/s/ubmm9w4zg8u09ib/ActivitiesZones.geojson?dl=0" -O data/GIS/ActivitiesZones.geojson
        wget "https://www.dropbox.com/s/tdlhok3b9vleznv/buildings.geojson?dl=0" -O data/GIS/buildings.geojson
        wget "https://www.dropbox.com/s/rntbtezjmiv0lkr/Parishes.geojson?dl=0" -O data/GIS/Parishes.geojson
        wget "https://www.dropbox.com/s/1ghj4twm8hlbb7x/POIs.geojson?dl=0" -O data/GIS/POIs.geojson

        #Get mccmnc
        wget "https://www.dropbox.com/s/uu6cgvlozstydhj/mcc-mnc-table.csv?dl=0" -O data/mcc-mnc-table.csv



elif [[ "$OSTYPE" == "darwin"* ]]; then
        #Get staypoints
        curl -L -o data/staypoints/normalDay.csv https://www.dropbox.com/s/tjm8chqfv62etdo/normalDay.csv?dl=0
        curl -L -o data/staypoints/LaVueltaDay.csv https://www.dropbox.com/s/bkvxyh6xyv7var9/LaVueltaDay.csv?dl=0
        curl -L -o data/staypoints/CirqueDuSoleilDay.csv https://www.dropbox.com/s/hv5dafntummc86n/CirqueDuSoleilDay.csv?dl=0

        #Get GIS
        curl -L -o data/GIS/ActivitiesZones.geojson https://www.dropbox.com/s/ubmm9w4zg8u09ib/ActivitiesZones.geojson?dl=0
        curl -L -o data/GIS/buildings.geojson https://www.dropbox.com/s/tdlhok3b9vleznv/buildings.geojson?dl=0
        curl -L -o data/GIS/Parishes.geojson https://www.dropbox.com/s/rntbtezjmiv0lkr/Parishes.geojson?dl=0
        curl -L -o data/GIS/POIs.geojson https://www.dropbox.com/s/1ghj4twm8hlbb7x/POIs.geojson?dl=0

        #Get mccmnc
        curl -L -o data/mcc-mnc-table.csv https://www.dropbox.com/s/uu6cgvlozstydhj/mcc-mnc-table.csv?dl=0


fi
