# Utilizzo del modulo "network-module" per creare una subnet, un gruppo di sicurezza, un router e una route table
module "network" {
  source = "./network-module"

  subnet_cidr       = "10.0.1.0/24"
  availability_zone = "us-east-1b"
  vpc_id            = "vpc-0123456789abcdef0"
  allowed_cidr      = "0.0.0.0/0"

  # Altre variabili specifiche per il modulo, se necessario
  router_name       = "example-router1"
  route_table_name  = "example-route-table"
}
