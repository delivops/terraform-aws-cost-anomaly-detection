module "cost-anomaly-detector" {
  source                = "delivops/cost-anomaly-detection/aws"
  version               = "0.0.5"
  region                = "eu-west-1"
  emails                = ["shlomo123@gmail.com ,"moshe456@gmail.com", "osnat529@gmail.com"]
  create_anomaly_monitor = false
  anomaly_monitor_arn = "arn:aws:ce::xxxxxxx:anomalymonitor/3577afba-xxxx-446b-xxxx-bfda07570304"
  raise_amount_percent  = "10"
  raise_amount_absolute = "15"
  resource_tags = {
    Environment = "global"
    Terraform   = "true"
  }
}