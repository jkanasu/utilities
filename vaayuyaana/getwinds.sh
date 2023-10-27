#!/bin/sh
# In the for loop select appropriately
for region in sfo #pac bos mia chi dfw slc sfo alaska hawaii other_pac
do
    for fcst in 06 12 24
    do
        for level in low #high
        do
            echo Processing region ${region} for forecast ${fcst} for level ${level}
            rawfile=winds_${region}_${fcst}_${level}.out
            echo curl -s 'https://aviationweather.gov/api/data/windtemp?level='${level}'&fcst='${fcst}'&region='${region}'&layout=off&date=' -o ${rawfile}
            curl -s 'https://aviationweather.gov/api/data/windtemp?level='${level}'&fcst='${fcst}'&region='${region}'&layout=off&date=' -o ${rawfile}
            csvfilename=${region}_${fcst}_${level}_`cat ${rawfile} | grep -v -E '<|>|"|{|}' | grep -E 'BASED|VALID' | xargs echo | awk '{print "BASED_"$4"_VALID_"$6"_FORUSE_"$9"csv"}'`
            cat ${rawfile} | grep -v -E 'Extracted|BASED|VALID|FD.US.|^000|^FB.' | grep -v -E '<|>|"|{|}' | sed 's/^\(.\{3\}\)./\1,/' | sed 's/^\(.\{8\}\)./\1,/' | sed 's/^\(.\{16\}\)./\1,/' | sed 's/^\(.\{24\}\)./\1,/' | sed 's/^\(.\{32\}\)./\1,/' | sed 's/^\(.\{40\}\)./\1,/' | sed 's/^\(.\{48\}\)./\1,/' | sed 's/^\(.\{55\}\)./\1,/' | sed 's/^\(.\{62\}\)./\1,/' | grep -v '^$' > ${csvfilename}
        done
    done
done
