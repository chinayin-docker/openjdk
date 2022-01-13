variable "version" {
  default = "8u312"
}
variable "major" {
  default = "8"
}
variable "minor" {
  default = ""
}

group "default" {
  targets = ["jdk-bullseye-slim", "jre-bullseye-slim"]
}

