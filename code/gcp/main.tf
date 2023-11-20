# Specify the GCP provider configuration
provider "google" {
  project     = "firm-mariner-405508"  # Remove the curly braces from the project ID
  credentials = file("C:/Users/LENOVO/Documents/projects/pipelineMagic/code/gcp/key/firm-mariner-405508-c0022e7d63fa.json")
  region      = "us-central1"
  
}

# Create a GCP instance
resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }
  
}# Kubernetes - Google Kubernetes Engine (GKE)
resource "google_container_cluster" "my_cluster" {
  name     = "my-gke-cluster"
  location = "us-central1-a"

  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-1"
  }
}
