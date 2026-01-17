output "dashboard_id" {
  value = google_monitoring_dashboard.dev_dashboard.id
}

output "cpu_alert_id" {
  value = google_monitoring_alert_policy.dev_cpu_high.id
}

output "email_channel_id" {
  value = google_monitoring_notification_channel.email.id
}
