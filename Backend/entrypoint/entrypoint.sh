#!/bin/sh
set -e

echo "Running Prisma migrations..."
npx prisma migrate deploy

echo "Generating Prisma client..."
npx prisma generate

echo "Running database seed script..."
npm run seed

echo "Starting the application..."
npm run start

