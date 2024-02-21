module "vpc" {
    source = "../"
        vpc_input = {
            name = "Test VPC"
            cidr_block = "10.0.0.0/17"
            # optional "tenancy"
            tags = {
                "Env" = "Test"
            }
        }

        internet_gateway = {
            name = "Test IG"
            tags = {
                "Env" = "test"
            }
        }

        public_subnets = {
            "us-east-1a" = {
               name = "Pub 1"
               subnet = "10.0.0.0/20" 
               tags = {
                   "Env" = "test"
               }
            },
            "us-east-1b" = {
               name = "Pub 2"
               subnet = "10.0.16.0/24" 
               tags = {
                   "Env" = "test"
               }
            }
        }
}
