mkdir -p workshop/GIS
mkdir -p workshop/staypoints

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        #Get staypoints
        wget "https://www.dropbox.com/s/ofvppvez6d47zhd/normalDay.csv?dl=0" -O workshop/staypoints/normalDay.csv
        wget "https://www.dropbox.com/s/yfntvutym1zvm4t/LaVueltaDay.csv?dl=0" -O workshop/staypoints/LaVueltaDay.csv
        wget "https://www.dropbox.com/s/w2qvx1rjnfjzwp2/CirqueDuSoleilDay.csv?dl=0" -O workshop/staypoints/CirqueDuSoleilDay.csv

        #Get GIS
        wget "https://www.dropbox.com/s/ubmm9w4zg8u09ib/ActivitiesZones.geojson?dl=0" -O workshop/GIS/ActivitiesZones.geojson
        wget "https://www.dropbox.com/s/tdlhok3b9vleznv/buildings.geojson?dl=0" -O workshop/GIS/buildings.geojson
        wget "https://www.dropbox.com/s/eumkg39izn30kq9/Parishes.geojson?dl=0" -O workshop/GIS/Parishes.geojson
        wget "https://www.dropbox.com/s/1ghj4twm8hlbb7x/POIs.geojson?dl=0" -O workshop/GIS/POIs.geojson

        #Get mccmnc
        wget "https://www.dropbox.com/s/uu6cgvlozstydhj/mcc-mnc-table.csv?dl=0" -O workshop/mcc-mnc-table.csv



elif [[ "$OSTYPE" == "darwin"* ]]; then
        #Get staypoints
        curl -L -o workshop/staypoints/normalDay.csv https://www.dropbox.com/s/ofvppvez6d47zhd/normalDay.csv?dl=0
        curl -L -o workshop/staypoints/LaVueltaDay.csv https://www.dropbox.com/s/yfntvutym1zvm4t/LaVueltaDay.csv?dl=0
        curl -L -o workshop/staypoints/CirqueDuSoleilDay.csv https://www.dropbox.com/s/w2qvx1rjnfjzwp2/CirqueDuSoleilDay.csv?dl=0

        #Get GIS
        curl -L -o workshop/GIS/ActivitiesZones.geojson https://www.dropbox.com/s/ubmm9w4zg8u09ib/ActivitiesZones.geojson?dl=0
        curl -L -o workshop/GIS/buildings.geojson https://www.dropbox.com/s/tdlhok3b9vleznv/buildings.geojson?dl=0
        curl -L -o workshop/GIS/Parishes.geojson https://www.dropbox.com/s/eumkg39izn30kq9/Parishes.geojson?dl=0
        curl -L -o workshop/GIS/POIs.geojson https://www.dropbox.com/s/1ghj4twm8hlbb7x/POIs.geojson?dl=0

        #Get mccmnc
        curl -L -o workshop/mcc-mnc-table.csv https://www.dropbox.com/s/uu6cgvlozstydhj/mcc-mnc-table.csv?dl=0


fi
