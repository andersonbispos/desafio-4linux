provider "google" {
  credentials = file("/Users/anderson/Documents/dio-dataproc-lab-e1b29a12c8e1.json")

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

provider "google-beta" {
  credentials = file("/Users/anderson/Documents/dio-dataproc-lab-e1b29a12c8e1.json")

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "instances" {
  source = "./modules/instances/"

  machine_type    = var.machine_type
  instances_image = var.instances_image
  network_name    = var.network_name

  project_id = var.project_id
  region     = var.region
  zone       = var.zone
}

# resource "google_compute_firewall" "default" {
#   name    = "tf-firewall"
#   network = var.network_name
#   source_ranges = ["0.0.0.0/0"]

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }

#   #   allow {
#   #   protocol = "tcp"
#   #   ports    = ["22"]
#   # }
# }