module "minikube" {
  source = "thirupathi-chintu/minikube/aws"

  aws_region          = "ap-south-1"
  cluster_name        = "my-minikube"
  aws_instance_type   = "t2.medium"
  ssh_public_key      = "~/.ssh/id_rsa.pub"
  aws_subnet_id       = "subnet-8a3517f8"
  ami_image_id        = ""

  tags = {
    Application = "Minikube"
  }
  addons = [
    "https://raw.githubusercontent.com/thirupathi-chintu/terraform-aws-minikube/master/addons/cluster-autoscaler-autodiscover.yaml",
  ]
}

