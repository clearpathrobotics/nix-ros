{
  catkin,
  easy_markers,
  joy_listener,
  kalman_filter,
  rosbaglive,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wu_ros_tools";
  pkgFinal = final.noetic.wu_ros_tools;
  src = srcs.wu_ros_tools.wu_ros_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    easy_markers
    joy_listener
    kalman_filter
    rosbaglive
  ];

  colconTestDepends = [
  ];
}
