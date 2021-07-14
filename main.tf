provider "aws" {
  region               = var.region
}

resource "aws_ecr_repository" "ecr_repo" {
  name                 = var.name
  image_tag_mutability = var.mutablity
  tags                 = var.tags


  image_scanning_configuration {
    scan_on_push = var.scan
  }

  encryption_configuration {
      encryption_type = var.encryption_type
      kms_key         = var.kms_key
    }  
}


data "template_file" "policy" { 
  template = "${file("${policy.json")}"
  }
}

resource "aws_ecr_repository_policy" "policy" {
  repository = "${aws_ecr_repository.ecr_repo.name}"

   policy = "${data.template_file.policy.rendered}"


}




