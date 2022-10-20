{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "DLu";
    repo = "roscompile";
    rev = "409259505609cfed8b44435a708b982bd0d88ed9";
    hash = "sha256-R2kwJowFWseMmkHKqxYg3r03jqD1e+ubgxL564pdMxM=";
    name = "DLu-roscompile-409259505609cfed8b44435a708b982bd0d88ed9";
  });
in
{
  magical_ros2_conversion_tool = pkg "sha256-KXRVv6k4iuuI5LLTLHu4uA4foaVsYWfJQ/2RtcPD8RE=" "magical_ros2_conversion_tool";
  ros_introspection = pkg "sha256-VZyJHUZUNJUnBW705grjUJMR4qkrnYLtxbAWv6M+DRA=" "ros_introspection";
  roscompile = pkg "sha256-VfRsEbOEwIjakA1H73T67wnmG57PKbk+l7ARCsqPdSg=" "roscompile";
}
