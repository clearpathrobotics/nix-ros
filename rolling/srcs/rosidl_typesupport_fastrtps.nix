{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_typesupport_fastrtps";
    rev = "a8ed1bd83b160ac28ee32e211bfcc587f44900a6";
    hash = "sha256-lhW9PwTwGk5O0pi7JZIeWF8m/vYPzZV2Hq+Mb9t/Llg=";
    name = "ros2-rosidl_typesupport_fastrtps-a8ed1bd83b160ac28ee32e211bfcc587f44900a6";
  });
in
{
  fastrtps_cmake_module = pkg "sha256-dTaPI6kFyVge9SLIKM6oMyEf+b8o2mJ8Pq30J5endJU=" "fastrtps_cmake_module";
  rosidl_typesupport_fastrtps_c = pkg "sha256-SOMFUA92OmRPAR/DULfNdyZOTuC3taMvQ6QDlPwdpj0=" "rosidl_typesupport_fastrtps_c";
  rosidl_typesupport_fastrtps_cpp = pkg "sha256-r/rpIgHXrG+lmZPJ9wBWGjQGPmb+g1kbowBGUsbjdNk=" "rosidl_typesupport_fastrtps_cpp";
}
