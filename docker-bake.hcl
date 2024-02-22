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

target "jdk-bullseye-slim" {
  inherits = ["_all_platforms"]
  context  = "${major}/jdk/bullseye-slim"
  tags     = [
    "${repository}:${major}-jdk",
    "${repository}:${major}-jdk-bullseye-slim",
    "${repository}:${version}-jdk",
  ]
}
target "jre-bullseye-slim" {
  inherits = ["_all_platforms"]
  context  = "${major}/jre/bullseye-slim"
  tags     = [
    "${repository}:${major}-jre",
    "${repository}:${major}-jre-bullseye-slim",
    "${repository}:${version}-jre",
  ]
}

target "jdk-bookworm-slim" {
  inherits = ["_all_platforms"]
  context  = "${major}/jdk/bookworm-slim"
  tags     = [
    "${repository}:${major}-jdk",
    "${repository}:${major}-jdk-bookworm-slim",
    "${repository}:${version}-jdk",
  ]
}
target "jre-bookworm-slim" {
  inherits = ["_all_platforms"]
  context  = "${major}/jre/bookworm-slim"
  tags     = [
    "${repository}:${major}-jre",
    "${repository}:${major}-jre-bookworm-slim",
    "${repository}:${version}-jre",
  ]
}
