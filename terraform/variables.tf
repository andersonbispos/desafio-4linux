variable "project_id" {
  description = "The project ID to host the network in"
  default     = "dio-dataproc-lab"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  default = "e2-standard-2"
  # default = "n1-standard-2"
}

variable "instances_image" {
  default = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-10-buster-v20210721"
}

variable "network_name" {
  default = "default"
  # default = "terraform-vpc"
}
