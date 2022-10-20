{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "cpp_polyfills";
    rev = "d740e5b66c14e5be1670ceca79eae1add150604a";
    hash = "sha256-BL8GmMwkp8RG4y1Qu6I54jsLJuP+9FryevDy5n7ZL9Q=";
    name = "PickNikRobotics-cpp_polyfills-d740e5b66c14e5be1670ceca79eae1add150604a";
  });
in
{
  tcb_span = pkg "sha256-61JrUYgWw+LJJmryzDfZte0H+hhzDbHqOY1wEyk996Q=" "tcb_span";
  tl_expected = pkg "sha256-MRDjBU0WqHHPomrtLuNox0zVGvy6aMGTGO8WBV04bF8=" "tl_expected";
}
