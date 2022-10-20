{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "autoware-ai";
    repo = "messages";
    rev = "e6fdf7736eafe8b35e148cc4a8a3b487f2d51a93";
    hash = "sha256-N+dedPIE99oJqos6sKnrFF+KF/Dir0Ob+rjtt5dEObc=";
    name = "autoware-ai-messages-e6fdf7736eafe8b35e148cc4a8a3b487f2d51a93";
  });
in
{
  autoware_can_msgs = pkg "sha256-cYR5wQOEsFuNLRn5Lo9gFdPZCkE/sM0MM/Eh0sD/tXk=" "autoware_can_msgs";
  autoware_config_msgs = pkg "sha256-HnqBVa2NgljnC/gaLPDzQWtk/Tlgv81yhFuC/3SB0/c=" "autoware_config_msgs";
  autoware_external_msgs = pkg "sha256-oA7G2JChxlLR6VtW3innvM4XLOtdyfy6c7j7zZUJrCU=" "autoware_external_msgs";
  autoware_lanelet2_msgs = pkg "sha256-TE9EkqOEUSUa7lmZRTxUGB1jF5iToF7To+fqLBCMiL4=" "autoware_lanelet2_msgs";
  autoware_map_msgs = pkg "sha256-RZDcJO2vJJLEolC+3+XSRwT5Snm7bjNGSsAoE0do4xY=" "autoware_map_msgs";
  autoware_msgs = pkg "sha256-ENK+9lpQNKoVWYST4JEG/7gZyY4SNwkqlrRg1I6m4E8=" "autoware_msgs";
  autoware_system_msgs = pkg "sha256-SIEfTLBAP2uML4EY0BlOP14wFdi7FHjb29c79rzNEkU=" "autoware_system_msgs";
  tablet_socket_msgs = pkg "sha256-K81PQWc5f4ipaEOUnZgJcmABZiUzdI1Jg96O6a9fVkA=" "tablet_socket_msgs";
  vector_map_msgs = pkg "sha256-p+DObvasMzVjl44apS0+ZwczFdtdmsggTOyIDTiYhGE=" "vector_map_msgs";
}
