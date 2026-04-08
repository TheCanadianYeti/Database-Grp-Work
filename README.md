# Fitness Center Database

A group project for a database design course. The goal was to design and implement a relational database for a fictional fitness center, starting from business rules and ending with working SQL.

## Project Overview

This project covers the full database design process:

- Conceptual modeling with an Entity-Relationship (ER) diagram
- Conversion to a relational model in Third Normal Form (3NF)
- SQL scripts to create tables and insert sample data
- SELECT queries to retrieve data based on app wireframes
- MongoDB collection conversion for two entities

## Repository Contents

| File | Description |
|------|-------------|
| `ER Model.png` | ER diagram image |
| `ER.drawio` | Editable ER diagram (draw.io) |
| `RM Model.png` | Relational model diagram image |
| `Relational Model.drawio` | Editable relational model (draw.io) |
| `gym_database.db` | SQLite database file |
| `query.sql` | SQL SELECT statements |
| `proposal.txt` | Original project requirements |
| `Database/` | Additional database scripts and files |

## Database Design

The database models a fitness center with entities derived from application wireframes. All tables are normalized to Third Normal Form (3NF).

Key entities include locations, coaches, and classes.

Sample query from `query.sql`:

```sql
SELECT classID
FROM class
WHERE price <= 25
```

## Tools Used

- draw.io for ER and relational model diagrams
- SQLite for the database
- SQL for table creation, data insertion, and querying
- MongoDB for NoSQL collection conversion

## How to Open the Database

1. Install [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Open `gym_database.db`
3. Run queries from `query.sql` in the Execute SQL tab

## How to View the Diagrams

Open `.drawio` files at [app.diagrams.net](https://app.diagrams.net/) or use the draw.io desktop app. The `.png` files are static exports for quick reference.
