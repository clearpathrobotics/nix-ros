{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "app_manager";
    rev = "c23f10a5bcbb092b17fda8370d62d6d4d9747f11";
    hash = "sha256-oKQTC7bU1ntR6brqepZj7p5p1DJjTwm7zbdFzZcxj04=";
    name = "pr2-app_manager-c23f10a5bcbb092b17fda8370d62d6d4d9747f11";
  });
in
{
  app_manager = pkg "sha256-oKQTC7bU1ntR6brqepZj7p5p1DJjTwm7zbdFzZcxj04=" ".";
}
