#!/usr/bin/env bash
# Exit on error
set -o errexit

echo "Starting Unified Build Process..."

# 1. Install Backend Dependencies
echo "Installing Python dependencies..."
pip install -r backend/requirements.txt

# 2. Build the React Frontend
echo "Building React Frontend..."
cd frontend
npm install --legacy-peer-deps
export VITE_API_BASE=""
export VITE_API_URL=""
npm run build
cd ..

echo "Build Complete! Everything is ready for FastAPI."
