from fastapi import FastAPI
import mysql.connector

app = FastAPI()

# Database Connection Configuration
db_config = {
    "host": "db",             # Use the service name defined in docker-compose.yml
    "user": "myuser",
    "password": "mypassword",
    "database": "mydatabase",
}

# Test Endpoint
@app.get("/")
async def root():
    # Connect to the database
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()

    # Execute a sample query
    cursor.execute("SHOW TABLES;")
    result = cursor.fetchall()

    # Close the database connection
    cursor.close()
    connection.close()

    return {"data": result}
