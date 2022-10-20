{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "image_common";
    rev = "db76095d4631ae6cc01efd1acb594f51c07a3bec";
    hash = "sha256-2frgkKYHnlECPIhekWa7lBqen/ZtNQ4j9v40eTjXRps=";
    name = "ros-perception-image_common-db76095d4631ae6cc01efd1acb594f51c07a3bec";
  });
in
{
  camera_calibration_parsers = pkg "sha256-sIS1FHnOK8A7IrqsO5X320Cd6PldLkYRxeAq8IjBsn0=" "camera_calibration_parsers";
  camera_info_manager = pkg "sha256-0WOMwBrsgcDSJNjgAjINqRde4YgThO32AMlf9DSCGLI=" "camera_info_manager";
  image_common = pkg "sha256-zVdInIcbX01eT18olPz9ms9FisHk2Q6tg+auvoy5n28=" "image_common";
  image_transport = pkg "sha256-z4506NpJfziZy9E2Mu7d1Xel14/pCeh/8IkJAojPM80=" "image_transport";
}
