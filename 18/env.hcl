variable "version" {
  default = "18.0.1.1"
}
variable "major" {
  default = "18"
}
variable "minor" {
  default = "18.0"
}

group "default" {
  targets = ["jdk-bullseye-slim"]
}
