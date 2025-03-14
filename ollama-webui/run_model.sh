#!/bin/bash
sleep 5
# Check if a model name is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <model_name>"
    exit 1
fi

MODEL_NAME=$1

# Run the Ollama model
ollama run "$MODEL_NAME"
