variable current_path{
  type = string
  default = "%CD%" /*Linux: "${path,module}"  */
}
variable profile{
  type = string
  default = "devares" /*your profile name*/
}

terraform {
  required_providers {
    aws = {
    source = "hashicorp/aws"
    version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  shared_config_files      = ["{var.current_path}/../config"]
  shared_credentials_files = ["{var.current_path}/../credentials"]
  profile                  = "devares"
}