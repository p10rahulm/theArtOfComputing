:: Type the command "cmd < syncCloud.sh"
:: Preliminary Checks:
:: 1. Ensure "gcloud auth login" is already done
:: 2. Ensure that you are on the IISc CISCO VPN

gsutil -m rsync -r assets gs://the-art-of-computing/assets
echo "Assets Directory Synced"
gsutil -m rsync -r content gs://the-art-of-computing/content
echo "Contents Directory Synced"
gsutil -m rsync ./ gs://the-art-of-computing
:: gsutil cp index.html gs://the-art-of-computing
echo "Base Directory Synced"


:: Now Git changes
git add -A
git commit -m "content changes"
git push


:: Now attempt to directly update website through SSH
plink msrseminar@csacloud.iisc.ac.in -P 3232 -pw msr$em1nar
./sync.sh
echo "Please check that the website https://www.csa.iisc.ac.in/theoryseminars/ is updated"
exit
