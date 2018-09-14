resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = "${google_compute_network.gcp-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-firewall-ssh"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "sql" {
  name    = "${var.network}-firewall-sql"
  network = "${google_compute_network.gcp-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["1433"]
  }

  target_tags   = ["${var.network}-firewall-sql"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "http" {
  name    = "${var.network}-firewall-http"
  network = "${google_compute_network.gcp-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["${var.network}-firewall-http"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "https" {
  name    = "${var.network}-firewall-https"
  network = "${google_compute_network.gcp-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags   = ["${var.network}-firewall-https"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "icmp" {
  name    = "${var.network}-firewall-icmp"
  network = "${google_compute_network.gcp-network.name}"

  allow {
    protocol = "icmp"
  }

  target_tags   = ["${var.network}-firewall-icmp"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "mysql" {
  name    = "${var.network}-firewall-mysql"
  network = "${google_compute_network.gcp-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }

  target_tags   = ["${var.network}-firewall-mysql"]
  source_ranges = ["0.0.0.0/0"]
}

