variable "version" {
  default = "17.0.19"
}
variable "major" {
  default = "17"
}
variable "minor" {
  default = "17.0"
}

group "default" {
  targets = ["jdk-debian", "jre-debian"]
}
