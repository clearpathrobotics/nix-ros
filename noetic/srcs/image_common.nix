{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "image_common";
    rev = "cd57529952b65d5180ff27780a0370ab7504e64d";
    hash = "sha256-NCWKYqq1CKgFj+WjJXLJRpbehUGwNBQCvAGpRZ/exAs=";
    name = "ros-perception-image_common-cd57529952b65d5180ff27780a0370ab7504e64d";
  });
in
{
  camera_calibration_parsers = pkg "sha256-DPbEY0vEuZJ98NqlibpJh7fy81kdRbeuYw7Lp1ofRso=" "camera_calibration_parsers";
  camera_info_manager = pkg "sha256-eD3HWuxK40+9fqzftBXwbSKyRSsPQB8El5paJzdyjgM=" "camera_info_manager";
  image_common = pkg "sha256-vhV5MHDhoV50CBbBYs8EYfpEhi6dR7RMQMRiaCKuyKE=" "image_common";
  image_transport = pkg "sha256-qlnMOCFONGHkH3qucNstWr6Jgsh+aczOV9gcoxMbPSE=" "image_transport";
  polled_camera = pkg "sha256-YiG6z2jeKLkkX04FN+IWYF5feE28YiU8RxuKY+DF8rg=" "polled_camera";
}
