# locals {
#   subnet_name        = ["webPubSunet1", "webPubSunet2", "webPubSunet3"]
#   availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }

# resource "aws_subnet" "webServersSubnet" {
#   count             = 3
#   vpc_id            = aws_vpc.webVPC.id
#   cidr_block        = var.cidr_block[count.index]
#   availability_zone = local.availability_zones[count.index]

#   tags = {
#     Name = local.subnet_name[count.index]
#   }
# }

resource "aws_subnet" "webPubSunet1" {
  vpc_id            = aws_vpc.webVPC.id
  cidr_block        = var.cidr_block[1]
  availability_zone = var.availability_zones[0]

  tags = {
    Name = var.tags[1]
  }
}

resource "aws_subnet" "webPubSunet2" {
  vpc_id            = aws_vpc.webVPC.id
  cidr_block        = var.cidr_block[2]
  availability_zone = var.availability_zones[1]

  tags = {
    Name = var.tags[2]
  }
}

resource "aws_subnet" "webPubSunet3" {
  vpc_id            = aws_vpc.webVPC.id
  cidr_block        = var.cidr_block[3]
  availability_zone = var.availability_zones[2]

  tags = {
    Name = var.tags[3]
  }
}