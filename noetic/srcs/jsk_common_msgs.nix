{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_common_msgs";
    rev = "093b57cdb4519cfc75099b4460a9354dc57981e5";
    hash = "sha256-b23dLmP01Bw4Y8MriN8ec299ApuWKPEUdmeRrhCLQrA=";
    name = "jsk-ros-pkg-jsk_common_msgs-093b57cdb4519cfc75099b4460a9354dc57981e5";
  });
in
{
  jsk_common_msgs = pkg "sha256-RbmHR0OFmpjcvneWSg5SUm6f4clt6f4LDGFb6YekHXg=" "jsk_common_msgs";
  jsk_footstep_msgs = pkg "sha256-XD4hiHTiNsg6vBFZu3sSQ6osI0CGq57fJxF6C0pfEUU=" "jsk_footstep_msgs";
  jsk_gui_msgs = pkg "sha256-jYSWz9D3lYZkmWoOerYObURtoYmJoJhU90uu2yhCiFw=" "jsk_gui_msgs";
  jsk_hark_msgs = pkg "sha256-+A7rktLXqq4ygxJQExrx043pmh0dGRNRZbtzr+BgPbk=" "jsk_hark_msgs";
  posedetection_msgs = pkg "sha256-EvHTjIpZnj3kRC4iu+aUWdCPAdIL5mK2UVVfD+WQock=" "posedetection_msgs";
  speech_recognition_msgs = pkg "sha256-WNuuQYGPvzHOlLCdSn9WNNEygxfJGFEbXa8bTDBAH5M=" "speech_recognition_msgs";
}
