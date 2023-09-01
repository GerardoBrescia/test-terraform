# Definizione di una subnet
resource "aws_subnet" "example_subnet" {
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  vpc_id = var.vpc_id
}

# Definizione di un gruppo di sicurezza
resource "aws_security_group" "example_security_group" {
  name_prefix = "example-"
  
  // Regole per consentire il traffico HTTP e SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_cidr]
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.allowed_cidr]
  }
}

# Definizione di un router
resource "aws_router" "example_router" {
  vpc_id = var.vpc_id
}

# Definizione di una route table
resource "aws_route_table" "example_route_table" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_router.example_router.id
  }
}

