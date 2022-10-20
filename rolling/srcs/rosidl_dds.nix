{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_dds";
    rev = "a3b598b5b2f5a86c46c525982c733806defa07d3";
    hash = "sha256-bcEchkzx7VW2O5V2sGZdhlQ73uETnGVOTRdyxS/RVOw=";
    name = "ros2-rosidl_dds-a3b598b5b2f5a86c46c525982c733806defa07d3";
  });
in
{
  rosidl_generator_dds_idl = pkg "sha256-G8vsH3OxgiwMixxeqdbZC6PePivhnvmF7gfWSHej2qo=" "rosidl_generator_dds_idl";
}
