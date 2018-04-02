resource "google_container_node_pool" "kubernetes_node_pool" {
  name               = "${var.cluster_name}-node-pool"
  zone               = "${var.gcp_region}-${var.gcp_zones[0]}"
  cluster            = "${google_container_cluster.kubernetes.name}"
  initial_node_count = 1

  autoscaling {
    min_node_count = "${var.min_node_count}"
    max_node_count = "${var.max_node_count}"
  }

  management {
    auto_repair  = true
    auto_upgrade = false
  }

  node_config {
    preemptible  = "${var.preemptible}"
    disk_size_gb = "${var.disk_size_gb}"
    machine_type = "n1-standard-1"

    oauth_scopes = [
      "compute-rw",
      "storage-ro",
      "logging-write",
      "monitoring",
    ]
  }
}

resource "google_container_cluster" "kubernetes" {
  name               = "${var.cluster_name}"
  zone               = "${var.gcp_region}-${var.gcp_zones[0]}"
  min_master_version = "${var.min_master_version}"

  additional_zones = [
    "${var.gcp_region}-${var.gcp_zones[1]}",
    "${var.gcp_region}-${var.gcp_zones[2]}",
  ]

  lifecycle {
    ignore_changes = ["node_pool"]
  }

  node_pool {
    name = "default-pool"
  }
}
