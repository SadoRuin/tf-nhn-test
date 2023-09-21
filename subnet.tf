resource "nhncloud_networking_vpcsubnet_v2" "tf-sn-pub-01" {
  name   = "tf-sn-pub-01"
  vpc_id = nhncloud_networking_vpc_v2.tf-vpc-01.id
  cidr   = "10.0.0.0/24"
}

resource "nhncloud_networking_vpcsubnet_v2" "tf-sn-pri-01" {
  name   = "tf-sn-pri-01"
  vpc_id = nhncloud_networking_vpc_v2.tf-vpc-01.id
  cidr   = "10.0.1.0/24"
}
