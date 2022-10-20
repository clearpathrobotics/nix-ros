{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dorezyuk";
    repo = "gpp";
    rev = "ef016d288cc7d06cdefd504ae20eedac0b14db1e";
    hash = "sha256-xQKXmhK346HuVnrL/ti8jp+WkuvTjBkKkJvDAW+mlRg=";
    name = "dorezyuk-gpp-ef016d288cc7d06cdefd504ae20eedac0b14db1e";
  });
in
{
  gpp_interface = pkg "sha256-e5mF0Lz/FBR78HTAmtqT3LApj3O+V1szSQMVsH2VtEc=" "gpp_interface";
  gpp_plugin = pkg "sha256-shjIZJpXhUIKXeaiMt84kSWzQmDAFdEB022vQxVAoeo=" "gpp_plugin";
  gpp_prune_path = pkg "sha256-bti9wqUY0hejSF4my61lcZzeZYX0tPOci2C3ONqQlms=" "examples/gpp_prune_path";
  gpp_update_map = pkg "sha256-0Ws09TZEAJLyIKvIkwiHV3FvR3jBfPhkCSfILbFyGJ8=" "examples/gpp_update_map";
}
