resource "google_compute_network" "gcp-network" {
  name = "${var.network}-${var.subnetwork-region}"
}

resource "google_compute_subnetwork" "network_subnetwork" {
  name          = "${var.network}-subnetwork-${var.subnetwork-region}"
  region        = "${var.subnetwork-region}"
  network       = "${google_compute_network.gcp-network.self_link}"
  ip_cidr_range =  "${var.ip_cidr_range}"
}
