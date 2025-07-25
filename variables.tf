variable "region" {
  type    = string
  default = "us-west-2"
}

variable "ami_map" {
  type = map(string)
  default = {
    "us-east-1"     = "ami-0c55b159cbfafe1f0"
    "us-west-2"     = "ami-0abcdef1234567890"
    "eu-central-1"  = "ami-0c1234abcd5678efg"
  }
}