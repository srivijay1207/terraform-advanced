variable "ami_id" {
  default = "ami-04cb4ca688797756f"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "cidr_block" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_group" {
  default = "allow_tls"
}
