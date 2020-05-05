provider "aws" {
  endpoints {
      sts = "https://sts.us-east-2.amazonaws.com" # No trailing slash
  }
  region = "us-east-2"

  access_key = "AKIAICT3OG4G2IUCAJMA"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-097834fcb3081f51a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
