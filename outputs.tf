
output "op-web" {
  value = aws_instance.web[0].instance_type
}

output "op-A" {
#   value = aws_s3_bucket[1.].A.bucket
   value = {
    for k, v in aws_s3_bucket.A : k => v
}
}