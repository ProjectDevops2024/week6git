# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "custom" {
  name              = "custom_gitlamyserverb"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = " sudo yum install -y httpd && sudo systemctl start httpd && echo '<h1>Deployed via Terraform'"
  
  #key_pair_name     = "some_key_name"
    tags = {
    Team = "DevOps"
    env = "dev"
    create_by ="terraform"

  }
}