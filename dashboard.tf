resource "google_monitoring_dashboard" "dev_dashboard" {
  dashboard_json = file("${path.module}/dashboard.json")
}
