{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "grasping_msgs";
    rev = "401be1cf4a49f2b61c4788b86ed766378e9bcbcf";
    hash = "sha256-TLAdWYm0g81TZZk3fp37Mkq+O5FyNJNdbEDA/m7JETQ=";
    name = "mikeferguson-grasping_msgs-401be1cf4a49f2b61c4788b86ed766378e9bcbcf";
  });
in
{
  grasping_msgs = pkg "sha256-TLAdWYm0g81TZZk3fp37Mkq+O5FyNJNdbEDA/m7JETQ=" ".";
}
