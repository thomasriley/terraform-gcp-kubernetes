output "cluster_endpoint" {
  value = "${google_container_cluster.kubernetes.endpoint}"
}
