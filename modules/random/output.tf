
output "ips" {
  value = ["${random_integer.Server.*.result}"]
}

