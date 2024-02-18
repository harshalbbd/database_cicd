# configured aws provider with proper credentials
provider "aws" {
  region  = "eu-west-1"
  profile = "rds_instance_user"
}


# create default vpc if one does not exit
resource "aws_default_vpc" "default_vpc" {

  tags = {
    Name = "default vpc"
  }
}


# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}


# create a default subnet in the first az if one does not exit
resource "aws_default_subnet" "subnet_az1" {
  availability_zone = data.aws_availability_zones.available_zones.names[0]
}

# create a default subnet in the second az if one does not exit
resource "aws_default_subnet" "subnet_az2" {
  availability_zone = data.aws_availability_zones.available_zones.names[1]
}

# create security group for the web server
resource "aws_security_group" "webserver_security_group_2" {
  name        = "webserver security group 2"
  description = "enable http access on port 80"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
    description = "http access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webserver security group 2"
  }
}

# create security group for the database
resource "aws_security_group" "database_security_group_2" {
  name        = "database security group 2"
  description = "enable sql server access on port 3306"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
    description     = "sql server access"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.webserver_security_group_2.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "database security group 2"
  }
}


# create the subnet group for the rds instance
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "database-subnets-2"
  subnet_ids  = [aws_default_subnet.subnet_az1.id, aws_default_subnet.subnet_az2.id]
  description = "Subnets for database instance"

  tags = {
    Name = "database-subnets-2"
  }
}



# create the rds instance
resource "aws_db_instance" "ev" {
  engine         = "sqlserver-ex"
  engine_version = "16.00.4095.4.v1"
  multi_az       = false
  identifier     = "evstation"
  password       = var.password
  username       = var.username
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids = [aws_security_group.database_security_group_2.id]
  availability_zone      = data.aws_availability_zones.available_zones.names[0]
  skip_final_snapshot = true
  publicly_accessible = true

}