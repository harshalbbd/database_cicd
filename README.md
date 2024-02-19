# EV_Station_Database_Design

The EV station project is focused on online booking for user on ev station.


## ER Diagram
![App Screenshot](MicrosoftTeams-image (1).png)


### Steps To Create RDS Using Terraform
- Download Aws Cli and terraform and add the path into system env variables
- Create I AM user with permission of Administrator access
- Create Access Key for User to connect with terraform cli
- Configure Profile of User
- aws configure --profile user_name
- add the access keys and access secret key and region
- create a terraform file and configure it with the setting
- enter the command in directory of terraform file
- terraform init
- terraform apply
- The database will be created in aws rds
- now download and install flyway migration tool for desktop
- login in it
- create the new project add the end point ,port and username,password of your database
- click on connect
- add the cicd yml file in .github/workflows folder
- then commit and push the changes the migration will be deployed successfully

 
## Features

- Login & Auth
- Station Availability
- Book A appointment
- Find Station on Maps
- User Feedback On Station
- Station Creation And Slots Creation
- Booking Canclation

### Optional Features
- Payment Functionality
- Refund On Canclation
