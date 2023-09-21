resource "nhncloud_networking_floatingip_v2" "fip_01" {
  pool = "Public Network"
}
/*
resource "nhncloud_networking_floatingip_associate_v2" "fip_01_associate" {
  floating_ip = nhncloud_networking_floatingip_v2.fip_01.address
  port_id     = nhncloud_networking_port_v2.tf_port_1.id
}
*/
