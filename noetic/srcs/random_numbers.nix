{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "random_numbers";
    rev = "0703c2ee3f28648fa98e1b96021ebc28ffcc4ecd";
    hash = "sha256-gSD7/teyCda/aiCOEKWIgHe2/TkrVNuAjLYmLZF8OMQ=";
    name = "ros-planning-random_numbers-0703c2ee3f28648fa98e1b96021ebc28ffcc4ecd";
  });
in
{
  random_numbers = pkg "sha256-gSD7/teyCda/aiCOEKWIgHe2/TkrVNuAjLYmLZF8OMQ=" ".";
}
