# Docker Exercise Tasks

## Exercise 1: Containerized Static Web Application
Static website served via Nginx Docker container.

| Folder | Description |
|--------|-------------|
| `Exercise-1/docker-web-v1/` | Version 1 — served on port 8080 |
| `Exercise-1/docker-web-v2/` | Version 2 — served on port 8081 |

**Build & Run:**
```bash
# v1
cd Exercise-1/docker-web-v1
docker build -t my-web:v1 .
docker run -d -p 8080:80 --name my-web-v1 my-web:v1

# v2
cd Exercise-1/docker-web-v2
docker build -t my-web:v2 .
docker run -d -p 8081:80 --name my-web-v2 my-web:v2
```

---

## Exercise 2: Linux System Report Container
Shell script that generates a system report inside an Alpine container.

| Folder | Description |
|--------|-------------|
| `Exercise-2/system-report/` | report.sh + Dockerfile |

**Build & Run:**
```bash
cd Exercise-2/system-report
docker build -t system-report:v1 .
docker run --name system-report-v1 system-report:v1

# With custom server name
docker run --rm system-report:v1 /app/report.sh "DevOps-Server-01"
```

---

## Exercise 3: Container Application Troubleshooting
Continuously running shell application reading from a config file.

| Folder | Description |
|--------|-------------|
| `Exercise-3/app/` | app.sh + config.txt + Dockerfile |

**Build & Run:**
```bash
cd Exercise-3/app
docker build -t training-app:v1 .
docker run -d --name training-app training-app:v1
docker logs --tail 10 training-app
docker exec -it training-app sh
docker stats training-app --no-stream
```

---

**Author:** Rajasekar  
**Course:** Docker  
**Date:** 2026-10-05
