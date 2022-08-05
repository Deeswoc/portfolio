#!/bin/sh

cp -r /home/app-cache/node_modules/. /home/app/node_modules/
cp -r /home/app-cache/styles/. /home/app/styles/
touch /home/app/this-script-is-working
mv /home/app/this-script-is-working /home/app/node_modules
exec npm run dev