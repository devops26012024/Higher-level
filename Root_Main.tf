module "infra" {
  source = "./higher-level-module"

  vpc_cidr_block       = "10.0.0.0/16"
  ami_id               = "ami-053b12d3152c0cc71"
  instance_type        = "t2.micro"
  ec2_subnet_id        = "subnet-abc123"
  key_name             = "my-key-pair"
  rds_allocated_storage = 20
  rds_engine           = "mysql"
  rds_instance_class   = "db.t2.micro"
  rds_db_name          = "mydatabase"
  rds_username         = "admin"
  rds_password         = "password123"
  rds_db_subnet_group  = "my-subnet-group"
}
