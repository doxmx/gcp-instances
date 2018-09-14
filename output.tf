output "ip_addresses" { 
   description = "List of IDs of instances"
   value = ["${google_compute_instance.gcp-engine-instance.*.network_interface.0.access_config.0.assigned_nat_ip}"]
}

