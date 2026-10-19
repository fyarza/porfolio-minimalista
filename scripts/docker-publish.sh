#!/usr/bin/env bash
# Publica el portafolio en Docker Hub, versionado.
# Por defecto construye para linux/amd64 (VPS / EasyPanel).
#
# Uso:
#   ./scripts/docker-publish.sh            # 0.1.0
#   ./scripts/docker-publish.sh 0.1.1
#
# Variables opcionales (env):
#   DOCKERHUB_USER   (default: fyarza)
#   DOCKER_PLATFORM  (default: linux/amd64)
#   SITE             URL pública horneada en el build (canonical y sitemap)
#   BASE_PATH        ruta base (default: /)
#
# Ejemplo:
#   SITE=https://tudominio.com BASE_PATH=/ ./scripts/docker-publish.sh 0.1.1

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

DOCKERHUB_USER="${DOCKERHUB_USER:-fyarza}"
DOCKER_PLATFORM="${DOCKER_PLATFORM:-linux/amd64}"
VERSION="${1:-0.1.0}"
SITE="${SITE:-https://fyarza.github.io}"
BASE_PATH="${BASE_PATH:-/}"

IMAGE="${DOCKERHUB_USER}/portafolio"

echo "==> Docker Hub user: ${DOCKERHUB_USER}"
echo "==> Version:         ${VERSION}"
echo "==> Platform:        ${DOCKER_PLATFORM}"
echo "==> Image:           ${IMAGE}:${VERSION}"
echo "==> Site:            ${SITE}"
echo "==> Base path:       ${BASE_PATH}"
echo

if ! docker info >/dev/null 2>&1; then
  echo "Error: Docker daemon no está corriendo (Colima/Docker)." >&2
  exit 1
fi

if ! docker buildx version >/dev/null 2>&1; then
  echo "Error: falta docker buildx (brew install docker-buildx)." >&2
  exit 1
fi

if docker buildx ls 2>/dev/null | grep -q '^colima'; then
  docker buildx use colima >/dev/null 2>&1 || true
fi

echo "==> Building+push ${IMAGE}:${VERSION} (${DOCKER_PLATFORM})"
docker buildx build \
  --platform "${DOCKER_PLATFORM}" \
  --build-arg "SITE=${SITE}" \
  --build-arg "BASE_PATH=${BASE_PATH}" \
  -t "${IMAGE}:${VERSION}" \
  -t "${IMAGE}:latest" \
  --push \
  .

echo
echo "Listo. Imágenes publicadas (${DOCKER_PLATFORM}):"
echo "  - ${IMAGE}:${VERSION}"
echo "  - ${IMAGE}:latest"
echo
echo "Nota: esta versión quedó con"
echo "  SITE=${SITE}"
echo "  BASE_PATH=${BASE_PATH}"
echo "En EasyPanel usa el tag fijo, no :latest:"
echo "  ${IMAGE}:${VERSION}"
