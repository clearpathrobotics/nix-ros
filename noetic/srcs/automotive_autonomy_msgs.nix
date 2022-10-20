{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "astuff";
    repo = "automotive_autonomy_msgs";
    rev = "191dce1827023bef6d69b31e8c2514cf82bf10c5";
    hash = "sha256-C58GghH9c0KH2Jy+C0aWhSyMufKWCnfCJ8Nrcoh3Nig=";
    name = "astuff-automotive_autonomy_msgs-191dce1827023bef6d69b31e8c2514cf82bf10c5";
  });
in
{
  automotive_autonomy_msgs = pkg "sha256-R/GduU+VD3B9INpzOpa84Bl42xFAtGthn8PEt8iYmpw=" "automotive_autonomy_msgs";
  automotive_navigation_msgs = pkg "sha256-OxBLCRV1wnCoZR4CZn6scigErZwyk1MqLIScEEdo5nA=" "automotive_navigation_msgs";
  automotive_platform_msgs = pkg "sha256-HMhXhLS41h9P1STIbuEdhOgxNORj/YJrfDldGKeMKfA=" "automotive_platform_msgs";
}
