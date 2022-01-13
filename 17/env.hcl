variable "version" {
  default = "17.0.1"
}
variable "major" {
  default = "17"
}
variable "minor" {
  default = "17.0"
}

group "default" {
  targets = ["jdk-bullseye-slim"]
}
