{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aruco_opencv_msgs";
  pkgFinal = final.noetic.aruco_opencv_msgs;
  src = srcs.aruco_opencv.aruco_opencv_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
