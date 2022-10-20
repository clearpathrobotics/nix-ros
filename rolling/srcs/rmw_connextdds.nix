{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_connextdds";
    rev = "aa7e22be6cdcac8b4d5a15ce093d3131d2cf9e10";
    hash = "sha256-IG2adLkNXf166cUuPX3GXthxz1RzNf75KZMywo0ewW0=";
    name = "ros2-rmw_connextdds-aa7e22be6cdcac8b4d5a15ce093d3131d2cf9e10";
  });
in
{
  rmw_connextdds = pkg "sha256-l11/g2UJVzciSbcxyb0D0/V2tA4UiQLybbJZvGTb+Dk=" "rmw_connextdds";
  rmw_connextdds_common = pkg "sha256-0AuocQGahh8KeHnPPZFW94nIkcG1HeyiSlEonCQDY5U=" "rmw_connextdds_common";
  rmw_connextddsmicro = pkg "sha256-MWhwHAvVSWSlIlm9MBcILiXJNt5XxS+KFbZ577aMU3A=" "rmw_connextddsmicro";
  rti_connext_dds_cmake_module = pkg "sha256-F4R3WRY03JZovttbdKquzihIkYAVGexCQ+43rHORGuA=" "rti_connext_dds_cmake_module";
}
