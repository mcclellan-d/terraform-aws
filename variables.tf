# --- root/variables.tf
variable "aws_region" {
  default = "eu-north-1" #changed to eu-north-1 for t3.micro free-tier
}

variable "access_ip" {
  type = string
}

# --- database related variables ---

variable "dbname" {
  type = string
}

variable "dbuser" {
  type      = string
  sensitive = true
}

variable "dbpassword" {
  type      = string
  sensitive = true
}
