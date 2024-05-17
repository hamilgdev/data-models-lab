# DataModels

El proyecto a desplegar en este laboratorio es una aplicación web. La aplicación permite visualizar una colección de recursos, para efectos de este caso, modelos de aprendizaje de máquina. Igualmente, cuando el usuario selecciona alguno de los recursos, se ofrece una vista con información detallada sobre el recurso seleccionado. La información de los recursos (p.ej., modelos) se encuentra almacenada en base de datos (p.ej., Dynamo DB). La aplicación tiene tres (vistas): raíz (“/”, home), descripción detallada de los modelos  y acerca de.

## 🗃️ Environment

You can use the `.env.template` file to create your `.env` file. This file is used to set the environment variables.

## 📚 Folder Structure

- `frontend/`: Source code base. Frontend made with **ReactJS**
- `backend/`: Source code base. Backend made with **NodejS**
- `provision/`: The files to provision the Docker containers
- `Makefile`: The file to run the commands to initialize, execute and more the application

## 🐳 Running the app inside containers

To run the application with containers you will need:

- Docker. [👉 Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose. [👉 Install Docker Compose](https://docs.docker.com/compose/install/)

then run the following command int the root `/` to initialize the application:

Build the containers

```bash
  make app.build_dev
```

Run the containers

```bash
  make app.start_dev
```

Or you can run the **frontend** container with one command

```bash
  make frontend.start
```

Or you can run the **backend** container with one command

```bash
  make backend.start
```

Also you can run the **database** container with one command

```bash
  make database.start
```

## 🚀 Running the implementation

When the application is running, usging the default configuration

you can access the **frontend** in the following url:

- [http://localhost:4200](http://localhost:4200)

you can access the **backend** in the following url:

- [http://localhost:3000](http://localhost:3000)

and, you can access the swagger documentation of the **backend** in the following url:

- [http://localhost:3000/api](http://localhost:3000/api)
