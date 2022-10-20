{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "roscpp_core";
    rev = "72ce04f8b2849e0e4587ea4d598be6ec5d24d8ca";
    hash = "sha256-yy0eYPsTwRR0+dYpEvoko8pHHgkT320pVbX4JG3Xf/0=";
    name = "ros-roscpp_core-72ce04f8b2849e0e4587ea4d598be6ec5d24d8ca";
  });
in
{
  cpp_common = pkg "sha256-CUSuPUvvjwN5srdZnIBG45wKkHh680//1UcyjzR1mQQ=" "cpp_common";
  roscpp_core = pkg "sha256-sEN+Hayh83dL3MCMD+Z9YCxhD3XlS2F5+rpZGLWiRQo=" "roscpp_core";
  roscpp_serialization = pkg "sha256-d8WrCLJvvOS2tqsTeL9cpZqKABgsfUQCZ7ly0l6R18A=" "roscpp_serialization";
  roscpp_traits = pkg "sha256-iDOLpaLXkV6D7t0cvgMq62LCoNIdtGYhZn4m6EzzUqg=" "roscpp_traits";
  rostime = pkg "sha256-XN2+EBVcFjN1L9DNe/b+GFrr6OkJDYDqJGmP0PPUaxQ=" "rostime";
}
