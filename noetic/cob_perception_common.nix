{
  catkin,
  cob_3d_mapping_msgs,
  cob_cam3d_throttle,
  cob_image_flip,
  cob_object_detection_msgs,
  cob_object_detection_visualizer,
  cob_perception_msgs,
  cob_vision_utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_perception_common";
  pkgFinal = final.noetic.cob_perception_common;
  src = srcs.cob_perception_common.cob_perception_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_3d_mapping_msgs
    cob_cam3d_throttle
    cob_image_flip
    cob_object_detection_msgs
    cob_object_detection_visualizer
    cob_perception_msgs
    cob_vision_utils
  ];

  colconTestDepends = [
  ];
}
