# -------------------------🧩 APP-------------------------
app.init:
	cd frontend && npm install && cd ../backend && npm install

# Development
app.build_dev:
	docker compose -f docker-compose.dev.yml build \
	; docker compose -f docker-compose.dev.yml down

app.start_prod:
	docker compose -f docker-compose.dev.yml down && \
	docker compose -f docker-compose.dev.yml up \
	; docker compose -f docker-compose.dev.yml down

app.stop_dev:
	docker compose -f docker-compose.dev.yml down

# -----------------------

# Production
app.build_prod:
	docker compose -f docker-compose.prod.yml build \
	; docker compose -f docker-compose.prod.yml down

app.start_prod:
	docker compose -f docker-compose.prod.yml down && \
	docker compose -f docker-compose.prod.yml up \
	; docker compose -f docker-compose.prod.yml down

app.stop_prod:
	docker compose -f docker-compose.prod.yml down

# -------------------------🔖 FRONTEND-------------------------

# Development
frontend.init_dev:
	cd frontend && npm install

frontend.build_dev:
	docker compose -f docker-compose.dev.yml build frontend

frontend.start_dev:
	docker compose -f docker-compose.dev.yml run \
	--rm --name host-stack-frontend --service-ports frontend \
	; docker compose down

frontend.stop_dev:
	docker compose -f docker-compose.dev.yml stop frontend

# -----------------------

# Production
frontend.init_prod:
	cd frontend && npm install

frontend.build_prod:
	docker compose -f docker-compose.prod.yml build frontend

frontend.start_prod:
	docker compose -f docker-compose.prod.yml run \
	--rm --name host-prod-frontend --service-ports frontend \
	; make frontend.stop_prod && make backend.stop_prod

frontend.stop_prod:
	docker compose -f docker-compose.prod.yml down frontend

# -------------------------🗂️ BACKEND-------------------------

# Development
backend.init_dev:
	cd backend && npm install

backend.build_dev:
	docker compose -f docker-compose.dev.yml build backend

backend.start_dev:
	docker compose -f docker-compose.dev.yml run \
	--rm --name host-stack-backend --service-ports backend \
	; docker compose down

backend.stop_dev:
	docker compose -f docker-compose.dev.yml down backend

# -----------------------

# Production
backend.init_prod:
	cd backend && npm install

backend.build_prod:
	docker compose -f docker-compose.prod.yml build backend

backend.start_prod:
	docker compose -f docker-compose.prod.yml run \
	--rm --name host-prod-backend --service-ports backend \
	; docker compose down

backend.stop_prod:
	docker compose -f docker-compose.prod.yml down backend