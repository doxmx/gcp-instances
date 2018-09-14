provider "google" {
  credentials = "${file("${path.module}/../credentials.json")}"
  project     = "${var.project-name}"
  region      = "${var.region}"
}
