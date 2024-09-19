variable "ami_id" {
  type = string
}

variable "instance_types" {
  type = string
  default = "t3.micro"
  validation {
    condition = contains(["t3.micro","t3.small","t3.medium"], var.instance_types)
    error_message = "instance type can be one of the following t3.micro,t3.small,t3.medium"
  }
}
variable "instance_names" {
  type = list(string)
}
variable "vpc_sg_ids" {
  type = list(string)
}