resource "aws_instance" "terraform" {

  ami = var.ami_id
  instance_type = var.instance_types
  vpc_security_group_ids = var.vpc_sg_ids
  count = length(var.instance_names)

  tags =  {
       Name = var.instance_names[count.index]
    }
}
