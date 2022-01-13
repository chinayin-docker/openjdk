variable "version" {
  default = "11.0.13"
}
variable "major" {
  default = "11"
}
variable "minor" {
  default = "11.0"
}

group "default" {
  targets = ["jdk-bullseye-slim", "jre-bullseye-slim"]
}
