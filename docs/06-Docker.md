# 06 - Docker

## Objective

Build local container fundamentals before pushing images to Azure Container Registry.

## Commands

```powershell
docker version
docker run hello-world
docker build -t aekp-nginx:1.0 .\docker\nginx-demo
docker run --rm -p 8080:80 aekp-nginx:1.0
```

## Verification

Open:

```text
http://localhost:8080
```

## Concepts

- Image
- Container
- Dockerfile
- Tag
- Registry
- Port mapping
- Layer cache

