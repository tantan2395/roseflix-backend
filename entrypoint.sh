#!/bin/bash
set -e

echo "Generating config.env..."

cat <<EOF > ./config.env
DATABASE_URL=${DATABASE_URL}
PORT=${PORT:-8080}
SECRET_KEY=${SECRET_KEY}
EOF

echo "Config ENV created"

# Now run the server
exec node ./src/server.ts
