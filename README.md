<div align="center">

# Tech-Buy US
</div>

<p align="center">
    <img src="https://img.shields.io/badge/Mysql-v8.0-blue">
    <img src="https://img.shields.io/badge/Symfony-v6.2-blue">
    <img src="https://img.shields.io/badge/Angular-v15.2.0-blue">
    <img src="https://img.shields.io/badge/docker--build-passing-brightgreen">
  <br><br><br>
</p>

# Prerequisites
To run this web application you need the following tool:
- Docker

# Installation and startup
Clone the project to get started:
```
git clone https://github.com/jeremieborrotzu-blip/Tech-Buy-US.git
cd Tech-Buy-US
```
To start the project:
```
docker compose up --build -d
```

The site will be available at: **http://localhost:8080**

## To stop the project
Make sure you are in the project folder (where the docker-compose.yml file is located):
```
docker compose down
```

## End of session
If you are done with the project, you can remove Docker files and images to free up disk space.

Warning: this removes all Docker projects on your computer.

```
docker system prune -a

=> type Y then Enter
```
