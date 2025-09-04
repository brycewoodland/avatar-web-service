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
