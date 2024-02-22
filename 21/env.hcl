variable "version" {
  default = "21.0.2_13"
}
variable "major" {
  default = "21"
}
variable "minor" {
  default = "21.0"
}

group "default" {
  targets = ["jdk-bookworm-slim", "jre-bookworm-slim"]
}
