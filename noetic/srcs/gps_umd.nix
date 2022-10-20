{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "gps_umd";
    rev = "5cdab23fbdf2e9339e6fc1a282e8507c27d05042";
    hash = "sha256-+GOmYGKR8bsnah9e1nkTdm1O3x5l13gDpxTxLouJHJM=";
    name = "swri-robotics-gps_umd-5cdab23fbdf2e9339e6fc1a282e8507c27d05042";
  });
in
{
  gps_common = pkg "sha256-tl+IvVve8vw3W8V6m/PSiQTd9MQDvKo74CqMWRzNNcM=" "gps_common";
  gps_umd = pkg "sha256-Hp161AsMNQhxVt0SSxDLoQ5z0N+NU8Ckx3J0KbLZ7wc=" "gps_umd";
  gpsd_client = pkg "sha256-PvTI3XvIV13rKH3MW//5/J85NxpWdCMlCQTIrdHFT88=" "gpsd_client";
}
