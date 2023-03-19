output "instance_id" {
  description = "The server-assigned unique identifier of this instance."
  value       = google_compute_instance.default.instance_id
}