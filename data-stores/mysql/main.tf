terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-pjwooda"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = var.db_name
  username            = var.db_username

  # _export TF_VAR_db_password="(YOUR_DB_PASSWORD)"
  # terraform apply
  password            = var.db_password
  skip_final_snapshot = true
}
