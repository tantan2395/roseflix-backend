#!/bin/bash
set -e

echo "Generating config.env..."

cat <<EOF > ./config.env
DATABASE_URL=mongodb://root:rvCxs4Q1483XyS47Zl6l642yBKkGUDWXvwlluSAefIIVjbRdinhjM1uFHrelnMTW@xw0w8okc0c44c0sc4sgk48ok:27017/?directConnection=true
PORT=8080
SECRET_KEY=xw0w8okc0c44c
EOF

echo "Config ENV created"

# Now run the server
exec node ./dist/server.js
