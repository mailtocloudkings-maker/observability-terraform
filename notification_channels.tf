# =========================
# DEMO EMAIL CHANNEL
# =========================
resource "google_monitoring_notification_channel" "email" {
  display_name = "Dev Email Alerts"
  type         = "email"

  labels = {
    email_address = "sarajendran@altimetrik.com"
  }
}

# =========================
# PAGERDUTY (PRODUCTION)
# =========================
# resource "google_monitoring_notification_channel" "pagerduty" {
#   display_name = "PagerDuty Channel"
#   type         = "pagerduty"
#
#   labels = {
#     service_key = "PAGERDUTY_INTEGRATION_KEY"
#   }
# }

# =========================
# SERVICENOW (PRODUCTION)
# =========================
# resource "google_monitoring_notification_channel" "servicenow" {
#   display_name = "ServiceNow Webhook"
#   type         = "webhook"
#
#   labels = {
#     url = "https://<instance>/api/now/table/incident"
#   }
# }
