{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "mapviz";
    rev = "cad4ddd20c06a09b55646596c8ba1109bcc86ac5";
    hash = "sha256-XWSSh/hT00gy6mJ07u84/u5bzBE+wpvKOXRdI8UXKpk=";
    name = "swri-robotics-mapviz-cad4ddd20c06a09b55646596c8ba1109bcc86ac5";
  });
in
{
  mapviz = pkg "sha256-i80piv7fpJ9ERcQquQ5xMw69HFg+4NeP0LD8AzSGAeg=" "mapviz";
  mapviz_plugins = pkg "sha256-8qZDIvtcQbFj7O/bINQc8BsqzH3zDLV/kUURGCjUz70=" "mapviz_plugins";
  multires_image = pkg "sha256-ZF2hblb9iheSiSD8MZ1srcUU1oiSQcGnEiM24BMMFXU=" "multires_image";
  tile_map = pkg "sha256-3BhygPwsxFzqj7n7rJ1DJ9doFMBYP115bBRrwSF6yaw=" "tile_map";
}
