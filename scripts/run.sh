#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-health-service}"
IMAGE_TAG="${IMAGE_TAG:-latest}"
HOST_PORT="${HOST_PORT:-8080}"

podman run --rm -p "${HOST_PORT}:8080" "${IMAGE_NAME}:${IMAGE_TAG}"
