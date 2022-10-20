{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "eigen_stl_containers";
    rev = "ee5337045ab1f3876692dcfcd3b9d06332dbf6a7";
    hash = "sha256-Zjjaom5lCGLMKC33kq6er1Ji54XUj/3hkSIWcBnXI+E=";
    name = "ros-eigen_stl_containers-ee5337045ab1f3876692dcfcd3b9d06332dbf6a7";
  });
in
{
  eigen_stl_containers = pkg "sha256-Zjjaom5lCGLMKC33kq6er1Ji54XUj/3hkSIWcBnXI+E=" ".";
}
