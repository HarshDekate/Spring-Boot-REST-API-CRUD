# Spring Boot REST API CRUD Project

This project is a Spring Boot application that provides a RESTful API for performing CRUD (Create, Read, Update, Delete) operations on a `Student` entity. The application uses Spring Data JPA to interact with a MySQL database.

## Prerequisites

Before running the application, make sure you have the following prerequisites installed:

- Java Development Kit (JDK) 17 or higher
- Maven
- MySQL Server (or any other compatible database)

## Getting Started

1. Clone the repository:

```
git clone https://github.com/your-username/spring-boot-rest-api-crud.git
```

2. Navigate to the project directory:

```
cd spring-boot-rest-api-crud
```

3. Configure the database connection:

Open the `application.properties` file and update the following properties with your MySQL database credentials:

```
spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name
spring.datasource.username=your_username
spring.datasource.password=your_password
```

4. Build the project:

```
mvn clean package
```

5. Run the application:

```
java -jar target/your-app.jar
```

Replace `your-app.jar` with the actual name of your built JAR file.

## API Endpoints

The application provides the following API endpoints:

- `GET /students`: Retrieve a list of all students
- `GET /students/{id}`: Retrieve a student by ID
- `POST /students`: Create a new student
- `PUT /students/{id}`: Update an existing student
- `DELETE /students/{id}`: Delete a student

### Request and Response Examples

#### GET /students

**Response:**

```json
[
  {
    "id": 1,
    "name": "John Doe",
    "age": 25
  },
  {
    "id": 2,
    "name": "Jane Smith",
    "age": 22
  }
]
```

#### POST /students

**Request Body:**

```json
{
  "name": "New Student",
  "age": 20
}
```

**Response:**

```json
{
  "id": 3,
  "name": "New Student",
  "age": 20
}
```

## Docker Deployment

This project can be containerized using Docker. Follow these steps to build and run the application as a Docker container:

1. Build the Docker image:

```
docker build -t spring-boot-rest-api .
```

2. Run the Docker container:

```
docker run -p 8080:8080 spring-boot-rest-api
```

This command will start the container and map port 8080 of the container to port 8080 on your host machine.

3. Access the application at `http://localhost:8080`.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.
