# 📊 DataModels

The project to be deployed in this lab is a web application. The application allows visualizing a collection of resources, for the purposes of this case, machine learning models. Likewise, when the user selects one of the resources, a view with detailed information about the selected resource is provided. The resource information (e.g., models) is stored in a database (e.g., Dynamo DB). The application has three (views): root (“/”, home), detailed description of the models and about.

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
  make app.build_prod
```

Run the containers

```bash
  make app.start_prod
```

Or you can run the **frontend** container with one command

```bash
  make frontend.start_prod
```

Or you can run the **backend** container with one command

```bash
  make backend.start_prod
```

## 🚀 Running the implementation

When the application is running, usging the default configuration

you can access the **frontend** in the following url:

- [http://localhost](http://localhost:80)

you can access the **backend** in the following url:

- [http://localhost:5001/api/models/](http://localhost:5001/api/models/)

### 📝 Notes

ℹ This a Lab project for the course **Cloud Computing** at the **EAFIT** University. The project follows the guidelines of the [https://github.com/Course-ST0911/datamodels](https://github.com/Course-ST0911/datamodels) repository.
