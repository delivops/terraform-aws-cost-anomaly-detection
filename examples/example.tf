module "cost-anomaly-detector" {
  source                = "delivops/cost-anomaly-detection/aws"
  version               = "0.0.2"
  region                = "eu-west-1"
  emails                = ["shlomo123@gmail.com ,"moshe456@gmail.com", "osnat529@gmail.com"]
  raise_amount_percent  = "10"
  raise_amount_absolute = "15"
  resource_tags = {
    Environment = "global"
    Terraform   = "true"
  }
}