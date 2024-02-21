variable "vpc_input" {
    type = object({
        name = string
        cidr_block = string
        tenancy = optional(string)
        tags = optional(map(string))
    })
   description = "vpc cidr block | you should specify this in input.tfvars"
}

variable "internet_gateway" {
    type = object({
        name = string
        tags = optional(map(string))
    })
}

variable "public_subnets" {
      type = map(object({
               name = string
               subnet = string
               tags = optional(map(string))
      }))
    description = "map of region AZ to number that should be used for public subnets"
}


# # nacle public egress dynamic block
# variable "nacl_public_egress" {
#   type = list(object({
#     protocol   = string
#     rule_no    = number
#     action     = string
#     cidr_block = string
#     from_port  = number
#     to_port    = number
#   }))
#   description = "dynamic block of public nacl egress rules"
# }
#
#
# # nacle public ingress dynamic block
# variable "nacl_public_ingress" {
#   type = list(object({
#     protocol   = string
#     rule_no    = number
#     action     = string
#     cidr_block = string
#     from_port  = number
#     to_port    = number
#   }))
#   description = "dynamic block of public nacl ingress rules"
# }
#
#
# # nacle private egress dynamic block
# variable "nacl_private_egress" {
#   type = list(object({
#     protocol   = string
#     rule_no    = number
#     action     = string
#     cidr_block = string
#     from_port  = number
#     to_port    = number
#   }))
#   description = "dynamic block of private nacl egress rules"
# }
#
#
# # nacle private ingress dynamic block
# variable "nacl_private_ingress" {
#   type = list(object({
#     protocol   = string
#     rule_no    = number
#     action     = string
#     cidr_block = string
#     from_port  = number
#     to_port    = number
#   }))
#   description = "dynamic block of private nacl ingress rules"
# }
