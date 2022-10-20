{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "ros_industrial_cmake_boilerplate";
    rev = "952c3445ddf7dbb1b2d378f2a1444515a79eaf8f";
    hash = "sha256-1ypADbROkXXl/GXADtR8IJuWmx20X4sMqn4eZ0iKLDk=";
    name = "ros-industrial-ros_industrial_cmake_boilerplate-952c3445ddf7dbb1b2d378f2a1444515a79eaf8f";
  });
in
{
  ros_industrial_cmake_boilerplate = pkg "sha256-5lYNEh3gr7khtWvarULqiCl1QfyxrLz5Mv98XArVJho=" "ros_industrial_cmake_boilerplate";
}
