{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "video_stream_opencv";
    rev = "65949bdc5c9468d18c51aed9073d020bec892532";
    hash = "sha256-tBAObJYvTmZvHei8XrRTmTlU9xdTukWjxyn5XVQKwhI=";
    name = "ros-drivers-video_stream_opencv-65949bdc5c9468d18c51aed9073d020bec892532";
  });
in
{
  video_stream_opencv = pkg "sha256-tBAObJYvTmZvHei8XrRTmTlU9xdTukWjxyn5XVQKwhI=" ".";
}
