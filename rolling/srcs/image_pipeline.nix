{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "image_pipeline";
    rev = "26a5470f0a71a10c565899da6537ce74e054cac1";
    hash = "sha256-oZLZYG3WaVx5sbGL+W42DU+JcJhvjw8xoEbxnGn40MM=";
    name = "ros-perception-image_pipeline-26a5470f0a71a10c565899da6537ce74e054cac1";
  });
in
{
  camera_calibration = pkg "sha256-S6/PM02AN4kPWaF//IY/Qf0MA0jIPyEJ+WQWez/jq7M=" "camera_calibration";
  depth_image_proc = pkg "sha256-5amp9ZyiJNxvhXaRJThT5aQ5rQ7jZxy2YxcMegaJxh8=" "depth_image_proc";
  image_pipeline = pkg "sha256-/2kJQaeVvq1PGR/HVK6sb080D1sEKmR5rQ/XEKOGOmo=" "image_pipeline";
  image_proc = pkg "sha256-R5/VdvpbWCWVA75ubb0Yc2hB9y9zK8oVY2I5JxiIe9E=" "image_proc";
  image_publisher = pkg "sha256-cRRaoYJieh3bcO8nbfrvgolanMAj987iTKdqtHkwyJE=" "image_publisher";
  image_rotate = pkg "sha256-5TLOAvpNze7giv6jQUY+Os0JoouH4yuiUVm2IOStLeY=" "image_rotate";
  image_view = pkg "sha256-MRRa9dUf6frtw/sUzSJUcEUWGJFTcVZTqi8YF5Ggm70=" "image_view";
  stereo_image_proc = pkg "sha256-OK+uTDtqhaLGqHv+f2iSPBKzm9u6gnntu/Wf1wrNVBg=" "stereo_image_proc";
  tracetools_image_pipeline = pkg "sha256-WzYHXrdj3yX3v6zbAN8UTtiDko2J9S8j+CuRQ9VuyEA=" "tracetools_image_pipeline";
}
