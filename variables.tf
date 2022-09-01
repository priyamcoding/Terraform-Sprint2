variable "ins_type" {
    type = string
    # default = "t2.micro"
}
variable "tag_name1" {
    type = list(any)
}

variable "tag_name2" {
    type = map

}

# variable "ami_id_web" {
#   type = string
# }