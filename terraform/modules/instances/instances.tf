resource "google_compute_instance" "server-4linux" {
    name                    = "server-4linux"
    machine_type            = var.machine_type
    project                 = var.project_id
    zone                    = var.zone

    allow_stopping_for_update = true

    boot_disk {
        initialize_params {
            image  = var.instances_image
        }
    }

    network_interface {
        network = var.network_name

        access_config {
            network_tier = "PREMIUM"
        }
    }

    
}

resource "google_compute_instance" "client-4linux" {
    name                    = "client-4linux"
    machine_type            = var.machine_type
    project                 = var.project_id
    zone                    = var.zone

    allow_stopping_for_update = true

    boot_disk {
        initialize_params {
            image  = var.instances_image
        }
    }

    network_interface {
        network            = var.network_name

        access_config {
            network_tier = "PREMIUM"
        }
    }
}

# resource "google_compute_instance" "tf-instance-3" {
#     name                    = "tf-instance-3"
#     machine_type            = var.machine_type
#     project                 = var.project_id
#     zone                    = var.zone

#         metadata_startup_script = <<-EOT
#             #!/bin/bash
#         EOT

#     allow_stopping_for_update = true

#     boot_disk {
#         initialize_params {
#             image  = var.instances_image
#         }
#     }

#     network_interface {
#         network            = var.network_name
#         # subnetwork = "subnet-02"

#         access_config {
#             network_tier = "PREMIUM"
#         }
#     }
# }