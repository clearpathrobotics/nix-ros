{
  catkin,
  checkerboard_detector,
  image_proc,
  image_view2,
  jsk_pcl_ros,
  jsk_recognition_msgs,
  opencv_apps,
  posedetection_msgs,
  roseus,
  rostest,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roseus_tutorials";
  pkgFinal = final.noetic.roseus_tutorials;
  src = srcs.jsk_roseus.roseus_tutorials;

  colconBuildDepends = [
    catkin
    roseus
  ];

  colconRunDepends = [
    checkerboard_detector
    image_proc
    image_view2
    jsk_recognition_msgs
    opencv_apps
    posedetection_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    jsk_pcl_ros
    rostest
  ];
}
