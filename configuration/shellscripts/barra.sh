for f in *Asset_ID.*; 
do
mv -n "$f" ../"$f"_"$(date -r "$f" +"%Y%m%d%H%M%S")";
done
