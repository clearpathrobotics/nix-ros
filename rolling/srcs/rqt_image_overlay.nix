{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "rqt_image_overlay";
    rev = "d26865bf5be23fc78b4f5022cf1903f64f865937";
    hash = "sha256-fUUhu8kYjydG0Nrgv2xxI1oVqnaFRCu/kAIMbskylVE=";
    name = "ros-sports-rqt_image_overlay-d26865bf5be23fc78b4f5022cf1903f64f865937";
  });
in
{
  rqt_image_overlay = pkg "sha256-rjv8Zxu7V4qDtMRcwMdiYByPpFiYIRJL8N+KK/Gte+E=" "rqt_image_overlay";
  rqt_image_overlay_layer = pkg "sha256-w86vqlc7t/EJJOh8aI+DT1ECcEMdvidOeDtsyDhjTXc=" "rqt_image_overlay_layer";
}
