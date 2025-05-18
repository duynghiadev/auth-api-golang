export APP_ENV=local
export APP_PORT=6000
export MYSQL_USER=root
export MYSQL_PASSWORD=duynghia123
export MYSQL_DATABASE=auth_admin
export MYSQL_PROTOCOL=tcp(127.0.0.1:3306)
export DEV_API_KEY=le_nguyen_duy_nghia
export ADMIN_JWT_SECRET_KEY=le_nguyen_duy_nghia_private

run dev:
	go run main.go

test:
	go test github.com/trungaria/auth_api.git/... -v

api-gen.type:
	oapi-codegen -generate "types" -package openapi openapi.yml > pkg/handler/openapi/type.gen.go

api-gen.server:
	oapi-codegen -generate "server" -package openapi openapi.yml > pkg/handler/openapi/server.gen.go