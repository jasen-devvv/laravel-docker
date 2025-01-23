# Laravel Docker Setup

## Prerequisites
- Docker
- Docker Compose

## Docker Image
- PHP 8.2 FPM
- MySQL 8.0
- NGINX 
- COMPOSER 

## Project Structure
```
laravel-docker/
├── docker/
│   ├── nginx/
│   │   └── default.conf
│   ├── php/
│   │   └── Dockerfile
│   │   └── php.ini
│   ├── mysql/
│   │   └── init.sql
│   ├── .env
│   └── .env.example
├── src/
│   └── .gitkeep
├── docker-compose.yml
├── Makefile
└── README.md
```

## Makefile Commands
- Start services: `make up`
- Stop services: `make down`
- Restart services: `make restart`
- View logs: `make logs`
- Clean up Docker containers and volumes: `make clean`
- Access MySQL shell: `make db-shell`
- Run Composer commands: `make composer <command>`
- Run Artisan commands: `make artisan <command>`
- Run PHP commands: `make php <command>`

## Setup Instructions
1. Clone the repository 

    ```bash
    git clone https://github.com/jasen-devvv/laravel-docker.git
    cd laravel-docker
    ```   
2. Copy the .env.example file

    ```bash
    cp .env.example .env
    ```
2. Build image with command :

   ```bash 
   make build
   ```
3. Start container with command:

   ```bash 
   make up
   ```
4. Delete the .gitkeep file in the src folder

5. Create Project laravel with Composer:

    ```bash
    make composer create-project laravel/laravel .
    ```
6. Access the application at `http://localhost`

## Contributing
1. Fork the repository
2. Create a new branch:

    ```bash
    git checkout -b feature/your-feature-name
    ```
3. Commit your changes:

    ```bash
    git commit -m "Add your message here"
    ```

4. Push to the branch:

    ```bash
    git push origin feature/your-feature-name
    ```

5. Open a pull request.

## License

This project is licensed under the [MIT LICENSE](LICENSE).

## Thanks
Thank you for visiting my project! I hope you find it helpful.