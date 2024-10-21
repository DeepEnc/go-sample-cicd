# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-file-dev-1.0"
#     key            = "state/dev.tfstate"    
#     region         = "us-east-1" 
#     encrypt        = true
#     dynamodb_table = "terraform-lock"           
#   }
# }