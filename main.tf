# creating an EC2 instance and using count 

resource "aws_instance" "web" {

  count = length(var.tag_name1)
  ami           = local.ami
  instance_type = var.ins_type
  instance_initiated_shutdown_behavior = "stop"

  tags = {
    Name = var.tag_name1[count.index]
    Owner = local.owner
    Purpose = "training"
    # Component = "nomad-server"
  }
  }

  locals {
    ami = "ami-0cff7528ff583bf9a"
    # ami = data.aws_ami.web.id
    owner = "priyam.mahajan@cloudeq.com"
  }

# creating S3 Bucket 

resource "aws_s3_bucket" "A" {
  for_each = var.tag_name2
  bucket =  "priyam-bucket"

tags = {
  Name = each.value
  Owner = "priyam.mahajan@cloudeq.com"
  Purpose = "practice"

}
}

#data block

# data "aws_ami" "web" {
#   id = "ami-0cff7528ff583bf9a"
  



