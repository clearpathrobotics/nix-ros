{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_typesupport_gurumdds";
    rev = "0256672aae0c231253139f24e3237331e16d5efa";
    hash = "sha256-bSMpgG6u/hZxTIXwjDT6+QQr266c6g2/SpIf+9y7Y1c=";
    name = "ros2-rosidl_typesupport_gurumdds-0256672aae0c231253139f24e3237331e16d5efa";
  });
in
{
  gurumdds_cmake_module = pkg "sha256-oY7jGWPWkiVxBzlCpRrGibthCFhRgTGTruoKzrlCpU8=" "gurumdds_cmake_module";
}
