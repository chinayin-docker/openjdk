variable "version" {
  default = "11.0.31"
}
variable "major" {
  default = "11"
}
variable "minor" {
  default = "11.0"
}

group "default" {
  targets = ["jdk-debian", "jre-debian"]
}
