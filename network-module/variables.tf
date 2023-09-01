# Dichiarazione delle variabili del modulo
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
}

variable "vpc_id" {
  description = "ID della VPC in cui creare la subnet"
}

variable "allowed_cidr" {
  description = "CIDR block consentito per le regole del gruppo di sicurezza"
}

# Nuove variabili specifiche per il modulo
variable "router_name" {
  description = "Nome del router"
}

variable "route_table_name" {
  description = "Nome della route table"
}
