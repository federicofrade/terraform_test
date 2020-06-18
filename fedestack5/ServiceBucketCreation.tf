
      module "create_subnets" {
        source = "../templates/aws/vpc" 
        vpc_id = "vpc-0ffbd8de6390bb7d2"
        azs = ["us-east-1a", "us-east-1c"]
        private_subnets = ["10.196.104.0/28", "10.196.104.16/28"]
        tags = {
          ServiceBucket = "fedestack5"
          Name = "fedestack5_subnet"
        }
      }
    