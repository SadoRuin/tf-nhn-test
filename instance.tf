# u2 인스턴스 생성
resource "nhncloud_compute_instance_v2" "tf_instance_01" {
  name = "tf_instance_01"
  # region            = "KR1"
  key_pair          = "iac-test-key"
  image_id          = data.nhncloud_images_image_v2.centos_7_20230822.id
  flavor_id         = data.nhncloud_compute_flavor_v2.u2c1m1.id
  security_groups   = ["default"]
  availability_zone = "kr-pub-a"

  network {
    name = nhncloud_networking_vpc_v2.tf-vpc-01.name
    uuid = nhncloud_networking_vpc_v2.tf-vpc-01.id
  }

  network {
    port = nhncloud_networking_port_v2.tf_port_1.id
  }

  block_device {
    uuid                  = data.nhncloud_images_image_v2.centos_7_20230822.id
    source_type           = "image"
    destination_type      = "local"
    boot_index            = 0
    delete_on_termination = true
    volume_size           = 20
  }
}

/*
# u2 외의 인스턴스 타입
# 네트워크 추가, 블록 스토리지 추가된 인스턴스 생성
resource "nhncloud_compute_instance_v2" "tf_instance_02" {
  name            = "tf_instance_02"
  region          = "KR1"
  key_pair        = "terraform-keypair"
  flavor_id       = data.nhncloud_compute_flavor_v2.m2c1m2.id
  security_groups = ["default", "web"]

  network {
    name = data.nhncloud_networking_vpc_v2.default_network.name
    uuid = data.nhncloud_networking_vpc_v2.default_network.id
  }

  network {
    port = nhncloud_networking_port_v2.port_1.id
  }

  block_device {
    uuid                  = data.nhncloud_images_image_v2.ubuntu_2004_20201222.id
    source_type           = "image"
    destination_type      = "volume"
    boot_index            = 0
    volume_size           = 20
    delete_on_termination = true
  }

  block_device {
    source_type           = "blank"
    destination_type      = "volume"
    boot_index            = 1
    volume_size           = 20
    delete_on_termination = true
  }
}
*/
