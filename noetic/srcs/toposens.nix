{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "toposens/public";
    repo = "ros-packages";
    rev = "05c560ffd72e6d21d7cbeded3aae40dce2e3caf4";
    hash = "sha256-NwU2CgFiXCEQ8C/uwVcY8zQXo8o2T80KwY5jZRg9F98=";
    name = "toposens-public-ros-packages-05c560ffd72e6d21d7cbeded3aae40dce2e3caf4";
  });
in
{
  toposens = pkg "sha256-hE0kIoWvRMpYisvQWdT6Yg0oGkcBMmXfqcyUrrUHe20=" "toposens";
  toposens_bringup = pkg "sha256-7/sYWF2xu6ccV+aBNnhwqUjY+Ok4hR6h3Iog9XrQwXI=" "toposens_bringup";
  toposens_description = pkg "sha256-6wxjeLLWHsxfBSeIMABbqPLs/KlVSFV6t6KBeYL9pPQ=" "toposens_description";
  toposens_driver = pkg "sha256-cT95j+h8nI0dwRxZnpbrqGIr1hsvfT/QLMn3n/9j0Zs=" "toposens_driver";
  toposens_echo_driver = pkg "sha256-RWTi7vOl8Rxppyv9yWhghdTMLjdHhAm4jnh+ZBvojGg=" "toposens_echo_driver";
  toposens_markers = pkg "sha256-HcNOiGo+CFfUvgC4rHoakQlIbCmphWEA+XOGzt76KVU=" "toposens_markers";
  toposens_msgs = pkg "sha256-nWRWnI9TD4EVd3viIhwhx5UVBuGc9GX2NFszsWA6I2Y=" "toposens_msgs";
  toposens_pointcloud = pkg "sha256-ad+IpdEK5RwBpx+0S2ZWUs1a5+ZT/DkQwiCdbYxoJvo=" "toposens_pointcloud";
  toposens_sync = pkg "sha256-WBf+/SH68CksLJfyAWT+FeyraWq+eLheQ/Ucp91A2pU=" "toposens_sync";
}
