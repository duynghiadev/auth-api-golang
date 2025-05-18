reference: https://github.com/trungaria/auth_api#

# Go Authentication API

A robust authentication API built with Go, implementing JWT-based authentication and secure user management.

## Features

- 🔐 JWT-based Authentication
- 👤 User Registration and Login
- 🔒 Secure Password Hashing
- 🚀 RESTful API Design
- 📝 Input Validation
- 🗄️ Database Integration

## Prerequisites

- Go 1.16 or higher
- PostgreSQL
- Docker (optional)

## Getting Started

### Installation

1. Clone the repository:

```bash
git clone https://github.com/your-username/auth-api-golang.git
cd auth-api-golang
```

2. Install dependencies:

```bash
go mod download
```

3. Set up environment variables:

```bash
cp .env.example .env
```

Update the .env file with your configuration:

```bash
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=your_password
DB_NAME=auth_db
JWT_SECRET=your_jwt_secret
```

### Running the Application

1. Start the server:

```bash
go run main.go
```

The server will start on http://localhost:8080

### Docker Setup

1. Build and run with Docker Compose:

```bash
docker-compose up --build
```

## API Endpoints

### Authentication

- POST /api/auth/register - Register a new user

  ```json
  {
    "username": "user123",
    "email": "user@example.com",
    "password": "securepassword"
  }
  ```

- POST /api/auth/login - Login user

  ```json
  {
    "email": "user@example.com",
    "password": "securepassword"
  }
  ```

### Protected Routes

- GET /api/user/profile - Get user profile (requires authentication)
- PUT /api/user/profile - Update user profile (requires authentication)

## Project Structure

```
├── cmd/
│   └── main.go          # Application entry 
point
├── internal/
│   ├── auth/            # Authentication logic
│   ├── handlers/        # HTTP handlers
│   ├── middleware/      # Custom middleware
│   ├── models/          # Data models
│   └── repository/      # Database operations
├── pkg/
│   ├── database/        # Database connection
│   └── utils/           # Utility functions
├── docker-compose.yml   # Docker compose 
configuration
└── Dockerfile          # Docker configuration
```

## Development

### Running Tests

```bash
go test ./...
```

### Code Style

This project follows the standard Go code style. Run:

```bash
go fmt ./...
golint ./...
```

## Security

- Passwords are hashed using bcrypt
- JWT tokens for authentication
- Input validation for all requests
- Secure HTTP headers

## Contributing

1. Fork the repository
2. Create your feature branch ( git checkout -b feature/amazing-feature )
3. Commit your changes ( git commit -m 'Add some amazing feature' )
4. Push to the branch ( git push origin feature/amazing-feature )
5. Open a Pull Request

## Acknowledgments

- Gin Web Framework
- GORM
- JWT-Go
