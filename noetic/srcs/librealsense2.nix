{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "IntelRealSense";
    repo = "librealsense";
    rev = "af7510c8d58f70381056a758cd3f4553aa37fc69";
    hash = "sha256-Gkp5CYMustI/YXoIKIL1GWPH9ZzrGM4j/i4yUccUHPA=";
    name = "IntelRealSense-librealsense-af7510c8d58f70381056a758cd3f4553aa37fc69";
  });
in
{
  librealsense2 = pkg "sha256-Gkp5CYMustI/YXoIKIL1GWPH9ZzrGM4j/i4yUccUHPA=" ".";
}
