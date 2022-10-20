{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl";
    rev = "07c292048a5706d165ef4a75c253759d0ce0c308";
    hash = "sha256-A9lO9AMbOE28ZqCxhiZ/bEFykW9sERL8gUfu1gzqCI0=";
    name = "ros2-rosidl-07c292048a5706d165ef4a75c253759d0ce0c308";
  });
in
{
  rosidl_adapter = pkg "sha256-D2vU5GkwKFDAw+53GzHWXojskryBCgEm1ozfSo1ZrOI=" "rosidl_adapter";
  rosidl_cli = pkg "sha256-aIGQ9pKIZ8tI11dnNVmieHgarGbSM5ry0c4CsGkwZk8=" "rosidl_cli";
  rosidl_cmake = pkg "sha256-zdIfk2RhOXmPMmaF3C/WkHKE7M/3NxU5+QziIKboB1w=" "rosidl_cmake";
  rosidl_generator_c = pkg "sha256-WiZ2ExMziQ6GLkm4vCyx0iyodWqwVH87Z6kgBA2AxCE=" "rosidl_generator_c";
  rosidl_generator_cpp = pkg "sha256-NJhDVJaK+ctuDv9CMgsjVtjzMDD/JtyAu/hq4CYgR9s=" "rosidl_generator_cpp";
  rosidl_generator_tests = pkg "sha256-tVu7o/tM7V8PF4/OSsc9FoldzNxOws94bmuj+awiIWU=" "rosidl_generator_tests";
  rosidl_parser = pkg "sha256-8xlnonR+AEGqPhvh66HHEd1waFpzMXOtiw6QviRNaBI=" "rosidl_parser";
  rosidl_pycommon = pkg "sha256-cQchorq52sfFqwvOtzOjXT4U3arhTWPePud2gxhZPf4=" "rosidl_pycommon";
  rosidl_runtime_c = pkg "sha256-M1pxzC1kiAi6mOUunqVPnKKGLyRVWgeMTXts4ouEduU=" "rosidl_runtime_c";
  rosidl_runtime_cpp = pkg "sha256-RoMZFEqK3V+0HJFmWO1+z2uWxCatxDk3dIqFjMxYU4Q=" "rosidl_runtime_cpp";
  rosidl_typesupport_interface = pkg "sha256-uWZ/I93+NZQPHMkKyrl+ZNgySiK9Hzm94XcQXcK4oYs=" "rosidl_typesupport_interface";
  rosidl_typesupport_introspection_c = pkg "sha256-2B4Phm1SX6DHt0GEC+Jqdzjol+qWV9N7CjsYxiPX5fc=" "rosidl_typesupport_introspection_c";
  rosidl_typesupport_introspection_cpp = pkg "sha256-LI/OwoWXr7w/E8R1Nsx8k8kFxhk7g8iYNQrlTc3Osm8=" "rosidl_typesupport_introspection_cpp";
  rosidl_typesupport_introspection_tests = pkg "sha256-NdlTIHd26917ncBeKT7fKwSop7B+RO5unsLX138sluM=" "rosidl_typesupport_introspection_tests";
}
