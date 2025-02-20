# Create the base image
FROM python:3.7-slim

# Change the working directory
WORKDIR /app/

# Install Dependency
COPY requirements.txt /app/
RUN pip install -r ./requirements.txt

# Copy local folder into the container
COPY app.py .
COPY *.pkl ./
COPY templates/*.html ./templates/
COPY test_data.csv .

# Set "python" as the entry point
ENTRYPOINT ["python"]

#Expose the post 5000.
EXPOSE 5000

# Set the command as the script name
CMD ["app.py"]
