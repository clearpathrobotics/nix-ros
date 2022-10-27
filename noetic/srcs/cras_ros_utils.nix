{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ctu-vras";
    repo = "ros-utils";
    rev = "f24e9981a0988fce6c10def592c5a89fb07e42f0";
    hash = "sha256-ktBll8sVhWEHmgMjbdVlhKfIwI6IIeG5SSM7nqbCQEE=";
    name = "ctu-vras-ros-utils-f24e9981a0988fce6c10def592c5a89fb07e42f0";
  });
in
{
  camera_throttle = pkg "sha256-cPeti+Szcch8Q76lUE9pLzz4KQL1JGSZLsEuBBVezz4=" "camera_throttle";
  cras_bag_tools = pkg "sha256-/L097T8QYFyP66m0RFwQfPW3pTzj6t1y0Mt5P8ZWFgI=" "cras_bag_tools";
  cras_cpp_common = pkg "sha256-oRTm7AEkiPBwAgaLs8vPM28os6m3IaxVtLmDfgiVwiA=" "cras_cpp_common";
  cras_py_common = pkg "sha256-6k4wLy/B5ioJoepv/+iEhZnpjk/QcB5vGb4p+gbIlKI=" "cras_py_common";
  cras_topic_tools = pkg "sha256-ULAjdIPfqhuq5hd6Qm+31E171nonG72YQTvyRkC6zEE=" "cras_topic_tools";
  tf_static_publisher = pkg "sha256-LgowwKT6BZQ0Ax893G5pvPditY2mg7sSTK84IBn09Is=" "tf_static_publisher";
}
