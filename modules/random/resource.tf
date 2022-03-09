
resource "random_integer" "Server" {
    min     = 10000
    max     = 99999
    keepers = {
      first = "${timestamp()}"
    }
    count   = "${var.numberOfMachines}"
}

resource "random_id" "rng" {
  keepers = {
    first = "${timestamp()}"
  }     
  byte_length = 5
}
