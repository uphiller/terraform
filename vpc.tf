resource "aws_vpc" "backend" {
  cidr_block = "10.0.0.0/16"
}

output "default_route_table_id" {
  description = "The ID of the default route table"
  value       = try(aws_vpc.backend[0].default_route_table_id, "")
}