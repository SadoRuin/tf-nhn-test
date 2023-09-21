data "nhncloud_images_image_v2" "centos_7_20230822" {
  name        = "CentOS 7.9 (2023.08.22)"
  most_recent = true
}

data "nhncloud_compute_flavor_v2" "u2c1m1" {
  name = "u2.c1m1"
}
