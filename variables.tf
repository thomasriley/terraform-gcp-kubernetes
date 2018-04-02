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

variable "gcp_zones" {
  type        = "list"
  description = "Zone to launch the GKE cluster in"
  default     = ["a", "b", "c"]
}

variable "min_node_count" {
  type        = "string"
  description = "Number min of nodes in the cluster"
  default     = "1"
}

variable "max_node_count" {
  type        = "string"
  description = "Number max of nodes in the cluster"
  default     = "3"
}

variable "min_master_version" {
  type        = "string"
  description = "The minimum version of the master"
  default     = "1.9.6-gke.0"
}

variable "preemptible" {
  description = "A boolean that represents whether or not the underlying node VMs are preemptible"
  default     = false
}

variable "disk_size_gb" {
  type        = "string"
  description = "Size of the disk attached to each node, specified in GB"
  default     = "10"
}
