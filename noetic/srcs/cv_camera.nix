{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OTL";
    repo = "cv_camera";
    rev = "6fcbae14de40b8b0b4dbeeeefc746d02d9e172ae";
    hash = "sha256-KP9c1K6gGTzl79oY+Xme5Nnf80x4L6XUoGN9zOBdPDQ=";
    name = "OTL-cv_camera-6fcbae14de40b8b0b4dbeeeefc746d02d9e172ae";
  });
in
{
  cv_camera = pkg "sha256-KP9c1K6gGTzl79oY+Xme5Nnf80x4L6XUoGN9zOBdPDQ=" ".";
}
