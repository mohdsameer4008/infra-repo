resource "aws_ecr_repository" "my_ecr_repo" {
    name                 = "my-ecr-repo"
    image_tag_mutability = var.image_tag_mutability

     image_scanning_configuration {
        scan_on_push = var.scan_on_push   
     }
}