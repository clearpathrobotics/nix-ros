{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tradr-project";
    repo = "tensorflow_ros_cpp";
    rev = "046c20a4ed22fa7d2eef3b5331ba7eb66448c575";
    hash = "sha256-BELX+PgwQL4cV5wdcRe4Ldf6uLAYUxf6FsFEvvv1kVE=";
    name = "tradr-project-tensorflow_ros_cpp-046c20a4ed22fa7d2eef3b5331ba7eb66448c575";
  });
in
{
  tensorflow_ros_cpp = pkg "sha256-BELX+PgwQL4cV5wdcRe4Ldf6uLAYUxf6FsFEvvv1kVE=" ".";
}
