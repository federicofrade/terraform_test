
      module "create_role" {
        source = "../templates/aws/iam"
        name_role = "fedestack4-management"
        name_policy = "fedestack4-management_tags_only"
        path_policy = "/fedestack4/"
        boundary_policy = "arn:aws:iam::189262533280:policy/MELIBoundaries"
        role_service = ["ec2.amazonaws.com"]
        policy_limits_resource = ["*"]
        effect = "Allow"
        tags = {
          ServiceBucket = "fedestack4"
          Name = "fedestack4_role"
        }
      }
    