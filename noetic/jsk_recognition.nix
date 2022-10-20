{
  catkin,
  checkerboard_detector,
  imagesift,
  jsk_pcl_ros,
  jsk_perception,
  jsk_recognition_msgs,
  jsk_recognition_utils,
  resized_image_transport,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_recognition";
  pkgFinal = final.noetic.jsk_recognition;
  src = srcs.jsk_recognition.jsk_recognition;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    checkerboard_detector
    imagesift
    jsk_pcl_ros
    jsk_perception
    jsk_recognition_msgs
    jsk_recognition_utils
    resized_image_transport
  ];

  colconTestDepends = [
  ];
}
