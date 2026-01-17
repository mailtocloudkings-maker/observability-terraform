resource "google_monitoring_alert_policy" "dev_cpu_high" {
  display_name = "DEV – High CPU Usage"
  combiner     = "OR"

  conditions {
    display_name = "CPU Utilization > 80%"

    condition_threshold {
      filter          = "metric.type=\"compute.googleapis.com/instance/cpu/utilization\""
      comparison      = "COMPARISON_GT"
      threshold_value = 0.8
      duration        = "120s"
    }
  }

  notification_channels = [
    google_monitoring_notification_channel.email.id

    # PRODUCTION
    # google_monitoring_notification_channel.pagerduty.id,
    # google_monitoring_notification_channel.servicenow.id
  ]
}
