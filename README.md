# Avatar: The Last Airbender Web Service

![Avatar The Last Airbender](https://i.redd.it/6u7upwccu0my.png)

A RESTful API for managing Avatar: The Last Airbender universe data, including nations, factions, characters, 
locations, episodes, and more. Built with Go, PostgreSQL, and designed to be extendable for full CRUD operations.

## Features

- **Manage Nations** – Create, read, update, and delete nations.

- **Manage Factions** – Filter factions by nation, support pagination.

- **Manage Characters** – Detailed character info including birth/death, gender, hair/eye color, height.

- **Junction Tables** – Supports many-to-many relationships for characters, factions, bending styles, weapons, languages.

- **Locations, Episodes, Animals, Quotes** – Structured relational data for the Avatar universe.

- **Pagination & Filtering**– Supports query parameters for efficient API responses.

## Tech Stack

Backend: Go

Database: PostgreSQL

ORM / DB Access: Native database/sql

Environment Management: .env file

API: RESTful routes with JSON responses

## Getting Started

**1. Clone the repository**
```bash
git clone https://github.com/brycewoodland/avatar_go.git
cd avatar_go
```
**2. Set up environment variables**
2. Set up environment variables
```bash
DB_URL=postgres://username:password@localhost:5432/avatar_api?sslmode=disable
```
**Important**: .env is included in .gitignore to keep credentials safe.

**3. Install dependencies**
```bash
go mod tidy
```
**4. Set up the database**
Run the SQL scripts in db/migrations/ to create tables and relationships

**5. Run the server**
```bash
go run main.go
```

## API Endpoints
### Nations

- ```GET /api/v1/nations``` – Get all nations
  
### Characters

- ```GET /api/v1/characters``` – Get all characters
  
- ```GET /api/v1/characters?nation=1&page=1&pageSize=10``` – Get characters filtered by nation with pagination

### Factions

- ```GET /api/v1/factions``` – Get all factions

- ```GET /api/v1/factions?nation=1&page=1&pageSize=10``` – Get factions filtered by nation with pagination

## Pagination & Filtering

### Query parameters:

  - nation – Filter by nation ID

  - page – Page number (default 1)

  - pageSize – Number of results per page (default 10)

## Contributing

- Fork the repository
- Create your feature branch (git checkout -b feature/my-feature)
- Commit your changes (git commit -m 'Add some feature')
- Push to the branch (git push origin feature/my-feature)
- Open a Pull Request

## License

This project is MIT licensed. See LICENSE for details.
