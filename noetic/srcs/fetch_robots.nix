{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "fetch_robots";
    rev = "308a77aa25acfead991d8def0262fedc5dac5cde";
    hash = "sha256-j5apxYCE7otBdLoEsKqDDkk70+I8LE5+xPhr1RXLDhE=";
    name = "fetchrobotics-fetch_robots-308a77aa25acfead991d8def0262fedc5dac5cde";
  });
in
{
  fetch_bringup = pkg "sha256-BSvlnvAdMWQMhpe34llcGL4rUfFJbZFKAqaMIze6Cc4=" "fetch_bringup";
  fetch_drivers = pkg "sha256-Ex4zsEzXJXM55zgplsVXaZ2QcSWlIf4JDtx2PeHEmQQ=" "fetch_binary_drivers";
  freight_bringup = pkg "sha256-xUayLv00UE8LUWC2O+Odmvd39WZyNsLluj5DnnW+xbk=" "freight_bringup";
}
