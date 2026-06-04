variable "version" {
  default = "8u492"
}
variable "major" {
  default = "8"
}
variable "minor" {
  default = ""
}

group "default" {
  targets = ["jdk-debian", "jre-debian"]
}
