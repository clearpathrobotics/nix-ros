{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt";
    rev = "d0234e0c3a96e6815e0a650e48fae97c7d877f92";
    hash = "sha256-l89qSYXZZgOtjOIdAMW1RRL/W7Yv5ne9Ux4hNuJRgpE=";
    name = "ros-visualization-rqt-d0234e0c3a96e6815e0a650e48fae97c7d877f92";
  });
in
{
  rqt = pkg "sha256-UBESc3anJbf/xN/UbhBKXBq9tyNnWqXq6uNx2i/XG/U=" "rqt";
  rqt_gui = pkg "sha256-fxHoOosxOBFEYxPdskdRpfG2xsJjSDmhn3bIV6m/H0I=" "rqt_gui";
  rqt_gui_cpp = pkg "sha256-5yUcHCCxzyn58t+/X1wC5M1L0HW/8ffl96jRbGNvVA8=" "rqt_gui_cpp";
  rqt_gui_py = pkg "sha256-PQipY8NkMJa1Tllgm/1uQ3Se4KFiVAzP8/e2GazX/TI=" "rqt_gui_py";
  rqt_py_common = pkg "sha256-wGp4VmWwzka8K+7NJghwo28rUA2Ss6IANDwJzfxosqk=" "rqt_py_common";
}
