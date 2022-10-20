{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt";
    rev = "eb4593aaae3963da9a1cd29554147c6d36f6b354";
    hash = "sha256-0UlwOKC7ChcVa6DK0nyVS5bnrbHBxMRAI9pO2K6H72E=";
    name = "ros-visualization-rqt-eb4593aaae3963da9a1cd29554147c6d36f6b354";
  });
in
{
  rqt = pkg "sha256-YvwAfy8CZlWZwzO1abThD4lGUDsJe6Clbh0AsuCJkgY=" "rqt";
  rqt_gui = pkg "sha256-IRVWx9GMMIvti5OWp4Eu5DTUo7Ax4Pdy8TRkFk+5iZ0=" "rqt_gui";
  rqt_gui_cpp = pkg "sha256-mXO7DpPv8sXz7OVwMyvFK9XEEcozKx2125jOAwkG3uU=" "rqt_gui_cpp";
  rqt_gui_py = pkg "sha256-xpgOWj5O6mrC1J2lzKF9Vda31Mvr0kY5i3XndA8cepI=" "rqt_gui_py";
  rqt_py_common = pkg "sha256-bUX9d0fjIevcspsFSaIGuL0tCgCo0GOO6cCAuSTY5M0=" "rqt_py_common";
}
