
resource "nhncloud_networking_vpc_v2" "tf-vpc-01" {
  name   = "tf-vpc-01"
  cidrv4 = "10.0.0.0/16"
}
