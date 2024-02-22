variable "version" {
  default = "17.0.10_7"
}
variable "major" {
  default = "17"
}
variable "minor" {
  default = "17.0"
}

group "default" {
  targets = ["jdk-bookworm-slim", "jre-bookworm-slim"]
}
