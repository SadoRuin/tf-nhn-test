resource "nhncloud_networking_port_v2" "tf_port_1" {
  name       = "tf_port_1"
  network_id = nhncloud_networking_vpc_v2.tf-vpc-01.id
  fixed_ip {
    subnet_id = nhncloud_networking_vpcsubnet_v2.tf-sn-pub-01.id
  }
  admin_state_up = "true"
}
