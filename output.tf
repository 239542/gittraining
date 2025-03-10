output "subnet_id" { 
  description = "The ID of the created subnet" 
  value       = aws_subnet.main.id 
} 
output "subnet_cidr" { 
  description = "The CIDR block of the subnet" 
  value       = aws_subnet.main.cidr_block 
} 
