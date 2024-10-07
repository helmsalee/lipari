# Create Random ID
resource "random_id" "instance_id" {
  byte_length = 4
}

# Create VM
resource "google_compute_instance" "lipari-vm" {
  name         = "lipari-${random_id.instance_id.hex}"
  machine_type = var.e2-standard-8
  allow_stopping_for_update = true
  tags         = ["ssh","http"]
  labels = {
    "owner" = "anthonya"
  }

  boot_disk {
    initialize_params {
      image = var.ubuntu_2204_lts_sku
      size = 100
    }
  }

  metadata_startup_script = file("startup.sh")

  metadata = {
    ssh-keys = "anthony_a:${file("~/.ssh/lipari.pub")}"
  }

  network_interface {
    network = "default"
    access_config {}
  }
}