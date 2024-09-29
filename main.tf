# Create Random ID
resource "random_id" "instance_id" {
  byte_length = 4
}

# Create VM
resource "google_compute_instance" "lipari-vm" {
  name         = "lipari-${random_id.instance_id.hex}"
  machine_type = var.f1-micro
  tags         = ["ssh","http"]
  labels = {
    "owner" = "anthonya"
  }

  boot_disk {
    initialize_params {
      image = var.ubuntu_2204_minimal_sku
    }
  }

  metadata_startup_script = file("startup.sh")

  metadata = {
    ssh-keys = "anthony_a:${file("~/.ssh/id_rsa.pub")}"
  }

  network_interface {
    network = "default"
    access_config {}
  }
}