Deployment Documentation (DEPLOY.md)

This document provides information on deploying and managing the Awesome Inc. application. It includes details on the contents of the deployment archive, instructions for unarchiving, starting and stopping the application, customizing application logs, and verifying the application's health.
Archive Contents

The deployment archive, named awesome-website.zip, contains the following assets:

    awesome-api binary: This is the executable file for the Awesome Inc. API.
    dist/ directory: This directory contains the necessary files for running the Awesome Inc. application.

Unarchiving the Deployment Package

To unarchive the deployment package, follow these steps:

    Download the awesome-website.zip archive to your local machine.
    Extract the contents of the archive to a directory of your choice.
    You should now have the awesome-api binary and the dist/ directory available for deployment.

Starting and Stopping the Application

To start the Awesome Inc. application, navigate to the directory where you extracted the deployment package and run the following command:

shell

./awesome-api

The application will start, and you should see relevant logs and output in the console.

To stop the application gracefully, you can use the Ctrl+C command in the terminal where the application is running. This will terminate the application process.
Customizing Application Logs

The Awesome Inc. application provides flexibility in customizing the location of application logs. By default, the logs are written to the console. However, if you want to redirect the logs to a file, you can use the following command:

shell

./awesome-api > log.txt

In the above command, log.txt is the file where the logs will be written. You can replace it with the desired file name or path.
Verifying Application Health (Healthcheck)

To quickly verify that the Awesome Inc. application is running and in a healthy state, you can perform a healthcheck. The healthcheck endpoint can be accessed using a web browser or a command-line tool like cURL.

Using a web browser:

    Open a web browser of your choice.
    Enter the following URL:

    bash

    http://localhost:8080/health

    If the application is running correctly, you should see a response indicating that the application is healthy.

Using cURL:

Run the following command in your terminal:

shell

curl http://localhost:8080/health

If the application is running correctly, you should see a response indicating that the application is healthy.

Please note that the URL and port may vary depending on your specific deployment configuration.

That concludes the deployment documentation for the Awesome Inc. application. If you have any further questions or issues, please reach out to the development team for assistance.