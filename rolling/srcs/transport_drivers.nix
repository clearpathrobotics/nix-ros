{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "transport_drivers";
    rev = "d3f510ce1b4be12967064d8251ebcac530921a04";
    hash = "sha256-NtrdittM3YolCSFJVIdPx8KA3DYNMdynMrRMQOnfkQo=";
    name = "ros-drivers-transport_drivers-d3f510ce1b4be12967064d8251ebcac530921a04";
  });
in
{
  asio_cmake_module = pkg "sha256-S4As/gOIQQTIqYgblUDPs2pjBDmLPz4Ii2/CTMHhRUs=" "asio_cmake_module";
  io_context = pkg "sha256-RINF/bmOZEexBa8eMAkn2J1r1NOrze8SI3fx1t/ywak=" "io_context";
  serial_driver = pkg "sha256-1Oc6jtsGEX0Jaxqs7jdlxu/nZJxZPxvagRST+L9bdwI=" "serial_driver";
  udp_driver = pkg "sha256-ufshq3ku5f0OLD1L+CJhsfg8tSqLiOzmXueZGXDO9+4=" "udp_driver";
}
