{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_command_tools";
    rev = "d0745ffc078316863d90e4585714dcfe25ab4ddf";
    hash = "sha256-faFRbXZ860gx0mQbig4l/WiC95OrClib3RFYHEK2gjc=";
    name = "ipa320-cob_command_tools-d0745ffc078316863d90e4585714dcfe25ab4ddf";
  });
in
{
  cob_command_gui = pkg "sha256-0unJFOuHfXkDeuVeouVwWozMM+PwYZcfmFrwwJ2z0Ws=" "cob_command_gui";
  cob_command_tools = pkg "sha256-WODs/75IxLBDxR3dqi18v5CEVgy8Rbt0eLT+DjbRUWY=" "cob_command_tools";
  cob_dashboard = pkg "sha256-tU8SorGDpwCQOEwRZMgWFo/rLobHts5UY/ugz9ofrRg=" "cob_dashboard";
  cob_helper_tools = pkg "sha256-6mUOrKm/lg/Pplyn3yiScp5KQlh9jYkDcsSxDfzP7zY=" "cob_helper_tools";
  cob_interactive_teleop = pkg "sha256-ILm7aiYcIZ9PXM8QjO3xRdKjC65fmj7CltKee8VyttA=" "cob_interactive_teleop";
  cob_monitoring = pkg "sha256-Aa6PRgFiw+/Cy49dRSjW/Qu+QFdTG3S1WvJCrFuGBBo=" "cob_monitoring";
  cob_script_server = pkg "sha256-LgcfPtfMb38wXVaYDNaevaIvnnHjwYehqSu7d/l60OQ=" "cob_script_server";
  cob_teleop = pkg "sha256-WVnnNto+TYhdf6+NealGucTvpMyosvjIp02lRPIM3mQ=" "cob_teleop";
  generic_throttle = pkg "sha256-bYo9t3JA6rUfVMfo4mbT1y1jchjbMaSqcXIKzHGyPaQ=" "generic_throttle";
  scenario_test_tools = pkg "sha256-2DxmPQ2xLyW2yMVQIln6rI1DFjI0qa1rQnMsrcrzU6A=" "scenario_test_tools";
  service_tools = pkg "sha256-qvCfgrjwChENAhFhbn8G9D80z5u9Ouw5FtHZsHbFg5o=" "service_tools";
}
