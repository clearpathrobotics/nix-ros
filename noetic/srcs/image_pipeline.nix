{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "image_pipeline";
    rev = "4a4760d2d970da42fb2647ae666e989cde5683f2";
    hash = "sha256-Dj5k46p9CWlcWWi7byMrfVO/nw5lpCjeDaFZOMQhW5k=";
    name = "ros-perception-image_pipeline-4a4760d2d970da42fb2647ae666e989cde5683f2";
  });
in
{
  camera_calibration = pkg "sha256-7PVkzkbFtWYyUD1L3m4IOJ9ABqVeRtasU0LTsnp+PPc=" "camera_calibration";
  depth_image_proc = pkg "sha256-dIMBZsoqwZH7iHwIj1Fv2IrBuwDIcBHnQXsFxvfNTn8=" "depth_image_proc";
  image_pipeline = pkg "sha256-0Ej5ZfvjnIsSqtdLxaX1D+ft/3mhRc+qxSUo9gLOON0=" "image_pipeline";
  image_proc = pkg "sha256-9lstu8qMHmoB6yXd6VcWc+4tAVBougIrYQtJW2p9y2k=" "image_proc";
  image_publisher = pkg "sha256-Pbck104gZImhzQgU8scOwuRNIKyeJVVBbojzdgga7uk=" "image_publisher";
  image_rotate = pkg "sha256-yLS6yWvx+eB0bjxdUxGGJxBXYOyFzGjC274yfy3E6d0=" "image_rotate";
  image_view = pkg "sha256-SSfhAZiPUhpOUKEz5Hiyg/2vxc0Y+eLyXlGDDiKVCCY=" "image_view";
  stereo_image_proc = pkg "sha256-MGTgIBGVdbg7ppMdOYVlAjxpkEvkyQZ6ClkXLEPCzDs=" "stereo_image_proc";
}
