{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_recognition";
    rev = "62facef973dd8a54e179c90b514ea54c8b0fdd83";
    hash = "sha256-MHc0CknLBUvVBEn/vM2XPOGxVd2KCTKyu4JU3MApp5E=";
    name = "jsk-ros-pkg-jsk_recognition-62facef973dd8a54e179c90b514ea54c8b0fdd83";
  });
in
{
  audio_to_spectrogram = pkg "sha256-3JZL2ciRG8aecL9sBrfEGNYlAcdP0xrezuHrdZKswMw=" "audio_to_spectrogram";
  checkerboard_detector = pkg "sha256-QbYkQUE6+Fw2KhbbGMc/tBANhz82K6DCeIRHJhXO+44=" "checkerboard_detector";
  cr_calibration = pkg "sha256-G3d2wqOUw8ucciuCxrO5XlACz/1ZlcSl9S6xRNfGGk0=" "cr_calibration";
  cr_capture = pkg "sha256-PKgPPs8IneN6OuHFY9+R7B/wW8tLYvFP996mZEChslY=" "cr_capture";
  imagesift = pkg "sha256-Ii8Or6U+reBYL8jP4sNCeVsIrZt/wWRxpyzx9BA6AY0=" "imagesift";
  jsk_pcl_ros = pkg "sha256-Qo1QfbJaS2UGSg7ezZc3cgoR25Bn4ZODI0rZe3uzhu0=" "jsk_pcl_ros";
  jsk_pcl_ros_utils = pkg "sha256-kS1VwLTe5RZsxRF/XgSwvbBQP6VCxhXGBhlpKA2abt8=" "jsk_pcl_ros_utils";
  jsk_perception = pkg "sha256-STMheQlsLmiVqOlBDmpMgchkkXzZD03Qy34n/7L6zsc=" "jsk_perception";
  jsk_recognition = pkg "sha256-/zGusMJaBzIsW3bOlA/A+3xI/ZB7QBCyZ+nYdRpUEiQ=" "jsk_recognition";
  jsk_recognition_msgs = pkg "sha256-bpJETWaXD4NEW3iQ2SWoNP50LII1KEBLNK1g3dvk7z0=" "jsk_recognition_msgs";
  jsk_recognition_utils = pkg "sha256-i62T9U5JQjb2H3uaAaxYnfm2mZc/mzDsej9ZMW+zyDo=" "jsk_recognition_utils";
  orbit_pantilt = pkg "sha256-g5Uq+dD1ILe0VW9ItGqONi5LEYDVoxlUvQzcmb/v/e0=" "orbit_pantilt";
  posedetectiondb = pkg "sha256-v9hqrmcrxYiZyHnakmy1fkyMuJPgEo96heG03cODeK4=" "posedetectiondb";
  resized_image_transport = pkg "sha256-Qh8kQa5RrYyRc9Nqec/k02qwXY0eGGLO2a46e7z2S0M=" "resized_image_transport";
  sound_classification = pkg "sha256-Lb3xLcPjNAmRFPoB9vdHWsL4pAU3qwRGrju0A0ziiA4=" "sound_classification";
}
