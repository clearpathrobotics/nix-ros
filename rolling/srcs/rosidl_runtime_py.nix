{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_runtime_py";
    rev = "83a03b0400ae860856681bca553151c4b2543b73";
    hash = "sha256-olzxHE3PDzQDKCBLUUiaeM1sNieLvV2VxQeqx7+2j/U=";
    name = "ros2-rosidl_runtime_py-83a03b0400ae860856681bca553151c4b2543b73";
  });
in
{
  rosidl_runtime_py = pkg "sha256-olzxHE3PDzQDKCBLUUiaeM1sNieLvV2VxQeqx7+2j/U=" ".";
}
