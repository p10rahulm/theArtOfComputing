# In this file we will setup the sync
cd the-art-of-computing
git pull origin main
echo 'fetched latest files from git'
cp ./* /var/www/events/the-art-of-computing/
echo 'synced base directory files to website directory'
cp -R ./assets /var/www/events/the-art-of-computing/
echo 'copied files in assets directory'
