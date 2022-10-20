{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "ament_index";
    rev = "23da167ecf3890d52684fa52c8f1effac2ef0108";
    hash = "sha256-1j6l0GsBugVDPMd8+Lg7tWVDZWvatZq9sV5j51PifIs=";
    name = "ament-ament_index-23da167ecf3890d52684fa52c8f1effac2ef0108";
  });
in
{
  ament_index_cpp = pkg "sha256-f2gIzUoNJrxUg3iXIuMX4rTdXp6mvMhc8YyKAkTyiSg=" "ament_index_cpp";
  ament_index_python = pkg "sha256-ZRFHhz836YsF1xof5ESLnQ/iEGCm9uzw061ZnVLmi3U=" "ament_index_python";
}
