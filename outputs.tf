output "dashboard_name" {
  description = "The display name of the dashboard"
  value       = "DEV Observability Dashboard"
}


output "cpu_alert_name" {
  description = "The display name of the CPU alert policy"
  value       = google_monitoring_alert_policy.dev_cpu_high.display_name
}

output "email_channel_address" {
  description = "The email address used in the DEV email notification channel"
  value       = google_monitoring_notification_channel.email.labels["email_address"]
}
