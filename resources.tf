resource "aws_ce_anomaly_monitor" "anomaly_monitor" {
  name              = "AWSServiceMonitor"
  monitor_type      = "DIMENSIONAL"
  monitor_dimension = "SERVICE"
}
resource "aws_ce_anomaly_subscription" "realtime_subscription" {
  name      = "RealtimeAnomalySubscription"
  frequency = "DAILY"

  threshold_expression {
    or {
      dimension {
        key           = "ANOMALY_TOTAL_IMPACT_PERCENTAGE"
        values        = [var.raise_amount_percent]
        match_options = ["GREATER_THAN_OR_EQUAL"]
      }
    }
    or {
      dimension {
        key           = "ANOMALY_TOTAL_IMPACT_ABSOLUTE"
        values        = [var.raise_amount_absolute]
        match_options = ["GREATER_THAN_OR_EQUAL"]
      }
    }
  }

  monitor_arn_list = [
    aws_ce_anomaly_monitor.anomaly_monitor.arn,
  ]

  dynamic "subscriber" {
    for_each = var.emails
    content {
      type    = "EMAIL"
      address = subscriber.value
    }
  }
}