resource "google_compute_instance" "gcp-engine-instance" {
  count        = "${var.instance_count}"
  name         = "${var.instance_prefix}-${count.index}"
  machine_type = "${var.vm_type["1point7gig"]}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-mysql",
    "${var.network}-firewall-sql",
  ]

  boot_disk {
    initialize_params {
    image = "${var.os["ubuntu-1604-lts"]}"
    }
  }

  metadata {
    sshKeys = "${var.user}:${file(var.gce_ssh_pub_key_file)}"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.network_subnetwork.name}"

    access_config {

    }
  }
}

