resource "google_container_node_pool" "my_node_pool" {
  name       = "pool-challenge"
  location   = "us-central1-a"
  cluster    = "cluster-challenge"
  node_count = 3

  node_config {
    machine_type = "e2-small"
    disk_size_gb = 10
    disk_type    = "pd-standard"
  }
}
