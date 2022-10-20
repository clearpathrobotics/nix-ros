{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CLOBOT-Co-Ltd";
    repo = "clober";
    rev = "2e9408a49684f6d006e6fbf8ac1151b9b2d14195";
    hash = "sha256-fQWl5ZYILEdBl/RcwCK9QLNk/i8g4HMETL/DqimNxnQ=";
    name = "CLOBOT-Co-Ltd-clober-2e9408a49684f6d006e6fbf8ac1151b9b2d14195";
  });
in
{
  clober = pkg "sha256-vR2RZYrlxTOzaP5Y9klVtMTkFUGsi5YdlArithm7tpw=" "clober";
  clober_bringup = pkg "sha256-SvqoQvggI6b1i01QxwGHKLRtDRJ+AETTxXGANu5FuS8=" "clober_bringup";
  clober_description = pkg "sha256-mespH0jMHlPfXQfb7bpIYVuRToa7c7O9AJ6Rj2ZK/b8=" "clober_description";
  clober_navigation = pkg "sha256-wutaV3kSBc9U8XCmCHywFk2iQCAdTN+I2jvHJzjIdAc=" "clober_navigation";
  clober_serial = pkg "sha256-WC12+zqtvw2ybhO1RcjDnSOTqKp1Fz196P+Fi5NzPKI=" "clober_serial";
  clober_simulation = pkg "sha256-G1hWB/Bv6r77xmGpzT0GGKxTL5CJhc1sTXl1Lqi41hY=" "clober_simulation";
  clober_slam = pkg "sha256-xEBiGFF6ExkEMfAGbhsfvYrjirQtLRgsOghUFpbgC9o=" "clober_slam";
  clober_teleop = pkg "sha256-wx2RZ0nMRuOHJKJuvo/DQmKZ5UP9/Um9/WMsOaNi1b0=" "clober_teleop";
  clober_tools = pkg "sha256-fJzcITId5hL5PDs0xAUJ/QhOh05eRcFo9iSsgENAdog=" "clober_tools";
}
