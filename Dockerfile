# syntax=docker/dockerfile:1
# Build en la CPU del host (Mac ARM); runtime para TARGETPLATFORM (linux/amd64 en VPS).

FROM --platform=$BUILDPLATFORM node:22-alpine AS build

WORKDIR /app

RUN npm install -g pnpm@10.15.1

COPY package.json pnpm-lock.yaml ./
RUN pnpm config set fetch-retries 5 \
 && pnpm config set fetch-timeout 300000 \
 && pnpm install --frozen-lockfile

COPY . .

ARG SITE
ARG BASE_PATH
ENV SITE=${SITE:-https://fyarza.github.io}
ENV BASE_PATH=${BASE_PATH:-/}

RUN pnpm build

FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
