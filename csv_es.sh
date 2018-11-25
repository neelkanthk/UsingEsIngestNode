#!/bin/bash
while read f1
do        
   curl -XPOST 'http://localhost:9200/subway_info_v1/station?pipeline=parse_nyc_csv' -H "Content-Type: application/json" -d "{ \"station\": \"$f1\" }"
done < NYC_Transit_Subway_Entrance_And_Exit_Data_Copy.csv
