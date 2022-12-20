module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0f5e8a042c8bfcd5e"
  instance_type          = "t2.micro"
  key_name               = "MJ"
  monitoring             = true
  vpc_security_group_ids = ["sg-02996b017be267f5c"]
  subnet_id              = "subnet-02285fefaf8fcf474"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
