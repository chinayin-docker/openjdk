variable "version" {
  default = ""
}

variable "major" {
  default = ""
}

variable "minor" {
  default = ""
}

variable "repo" {
  default = "chinayin/openjdk"
}

group "default" {
  targets = []
}

function "platforms" {
  params = []
  result = ["linux/amd64", "linux/arm64"]
}

variable "registry" {
  default = "docker.io"
}

variable "repository" {
  default = "${registry}/${repo}"
}

target "_all_platforms" {
  platforms = platforms()
}

target "jdk-debian" {
  inherits = ["_all_platforms"]
  context  = "${major}/jdk/debian"
  tags     = [
    "${repository}:${major}-jdk",
    "${repository}:${major}-jdk-debian",
    "${repository}:${version}-jdk",
  ]
}
target "jre-debian" {
  inherits = ["_all_platforms"]
  context  = "${major}/jre/debian"
  tags     = [
    "${repository}:${major}-jre",
    "${repository}:${major}-jre-debian",
    "${repository}:${version}-jre",
  ]
}
