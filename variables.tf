variable "gcp_project" {
  type        = "string"
  description = "GCP Project ID"
  default     = ""
}

variable "gcp_region" {
  type        = "string"
  description = "GCP Region"
  default     = "europe-west2"
}

variable "cluster_name" {
  type        = "string"
  description = "Name of the Kubernetes cluster"
  default     = ""
}

variable "kubernetes_gcp_zone" {
  type        = "string"
  description = "Zone to launch the GKE cluster in"
  default     = "europe-west2-a"
}

variable "initial_node_count" {
  type        = "string"
  description = "Number of nodes in the cluster"
  default     = "3"
}

variable "min_master_version" {
  type        = "string"
  description = "The minimum version of the master"
  default     = "1.9.4-gke.1"
}
