{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_mechanism";
    rev = "b2429eb3923ee42671190f885ad7762548940ec4";
    hash = "sha256-Owsf1EYjWlX+yRMf9yIueBdCETcR1ZamcbcYEDXWB40=";
    name = "pr2-pr2_mechanism-b2429eb3923ee42671190f885ad7762548940ec4";
  });
in
{
  pr2_controller_interface = pkg "sha256-fTdALf0/1v90dVsQ2n+Yy1ekDCP5PJCPcqMZVGUnuGo=" "pr2_controller_interface";
  pr2_controller_manager = pkg "sha256-zykYhu8k5MunoMp2/FgrwOAYZ81ppRIXZEWOs7C94rk=" "pr2_controller_manager";
  pr2_hardware_interface = pkg "sha256-fDIKRjcqBZc4WSL3oah6HlwsgzaF5f2eHye7jrYcPn4=" "pr2_hardware_interface";
  pr2_mechanism = pkg "sha256-vyXVCx1Y+p7jp8n+LdSumAM7a4150Rp1EoJkdFhP7dE=" "pr2_mechanism";
  pr2_mechanism_diagnostics = pkg "sha256-v27mQ4uRlzcUDeeFWV0P89eG9KMvEXx2QuaQfH51qd0=" "pr2_mechanism_diagnostics";
  pr2_mechanism_model = pkg "sha256-IqWRe7vwwSzw8h7X0XGrmphbUgefbdfdnPYowlyW9TU=" "pr2_mechanism_model";
}
