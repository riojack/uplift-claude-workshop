#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

IMAGE_NAME="${IMAGE_NAME:-health-service}"
IMAGE_TAG="${IMAGE_TAG:-latest}"

podman build -t "${IMAGE_NAME}:${IMAGE_TAG}" -f HealthService/Dockerfile HealthService
