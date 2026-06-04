variable "version" {
  default = "21.0.11"
}
variable "major" {
  default = "21"
}
variable "minor" {
  default = "21.0"
}

group "default" {
  targets = ["jdk-debian", "jre-debian"]
}
