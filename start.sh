#!/bin/bash

# Check if a model name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <model-name>"
  exit 1
fi

export MODEL_NAME="$1"

# Start Docker Compose with the environment variable
docker compose up --build

docker exec -it ollama bash -c "ollama/run_model.sh $MODEL_NAME"
echo "Ollama is running with model: $MODEL_NAME"
