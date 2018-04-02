resource "google_container_cluster" "kubernetes" {
  name               = "${var.cluster_name}"
  zone               = "${var.kubernetes_gcp_zone}"
  initial_node_count = "${var.initial_node_count}"

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    preemptible  = "${var.preemptible}"
    disk_size_gb = "${var.disk_size_gb}"
  }

  min_master_version = "${var.min_master_version}"
}
