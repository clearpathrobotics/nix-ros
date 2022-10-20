{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tuw-robotics";
    repo = "marker_msgs";
    rev = "c7ead955cf1c37d9f17ab53eaf101b769f772636";
    hash = "sha256-O6eiKvpLB6M33iqGkkk0AjN4vFPtZfS0r3hSr29WJgs=";
    name = "tuw-robotics-marker_msgs-c7ead955cf1c37d9f17ab53eaf101b769f772636";
  });
in
{
  marker_msgs = pkg "sha256-O6eiKvpLB6M33iqGkkk0AjN4vFPtZfS0r3hSr29WJgs=" ".";
}
