# use data source to get a registered amazon linux 2 ami
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


# data "aws_ami" "my_custom_ami" {
#   most_recent = false
#   owners      = ["self"]

#   filter {
#     name   = "image-id"
#     values = ["ami-0814126370f1c430a"]  
#   }
# }
