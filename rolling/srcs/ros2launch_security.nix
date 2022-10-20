{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "osrf";
    repo = "ros2launch_security";
    rev = "1d0db0e93637b95096cc158eb9e5184c20b60c03";
    hash = "sha256-MJjSeJiwo+zTM882UD9YtQWGqddrZJ7V88mVOaJKRYw=";
    name = "osrf-ros2launch_security-1d0db0e93637b95096cc158eb9e5184c20b60c03";
  });
in
{
  ros2launch_security = pkg "sha256-MM1mvGLVBpSePXEUKQScahRPpulucGxMTaTp+jSKbNo=" "ros2launch_security";
  ros2launch_security_examples = pkg "sha256-NWaQ/UIv5e//ahvk4u8zBHDsw6po6o9VLTnHTmXsQR8=" "ros2launch_security_examples";
}
