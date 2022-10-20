{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_perception_common";
    rev = "b57cba2a2780709460240062ee29612e74db9234";
    hash = "sha256-sxs5QK9fvYGqYj7rKKHve+zBdRUeRvfW5B5F31k+tSg=";
    name = "ipa320-cob_perception_common-b57cba2a2780709460240062ee29612e74db9234";
  });
in
{
  cob_3d_mapping_msgs = pkg "sha256-VNl0KZI+JnjsyjxQtVNs2RygkNIPQtA/bh048jJ+UYM=" "cob_3d_mapping_msgs";
  cob_cam3d_throttle = pkg "sha256-N1NLX/dSGXcwapi6yicXxpWE6c3D+jJgwr3lmX2Xe4g=" "cob_cam3d_throttle";
  cob_image_flip = pkg "sha256-C/4MI9wfllMHF0HYW4KVswjJQT0xbfxh7/J6brGtuG0=" "cob_image_flip";
  cob_object_detection_msgs = pkg "sha256-fZb1Xh3sqmep1SfC6D+yq/pVJt/uIinh4ukapJNzYoY=" "cob_object_detection_msgs";
  cob_object_detection_visualizer = pkg "sha256-kVjrVeuefnnSMhngiLLH/Rgona7WK6bUSNVUk3J/9KU=" "cob_object_detection_visualizer";
  cob_perception_common = pkg "sha256-5qCQSDVrUq3WQP7hl2SX5hTPf+1ccB0UyR/w201miAw=" "cob_perception_common";
  cob_perception_msgs = pkg "sha256-pAqqIVt6Gc51+KAomUZwV7oiDRv7BNrQ0YtYQe9uit4=" "cob_perception_msgs";
  cob_vision_utils = pkg "sha256-k4iI/vawfZyk/Om1/lCfXgSGPogdgyTUfIhuYZ4wct4=" "cob_vision_utils";
  ipa_3d_fov_visualization = pkg "sha256-eA7qNPdeLPQ+4DlsfiJqDMztlpyM0SwglBmTiTU2sCw=" "ipa_3d_fov_visualization";
}
