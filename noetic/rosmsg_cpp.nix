{
  catkin,
  cpp_common,
  geometry_msgs,
  message_runtime,
  python3,
  ros_environment,
  roslib,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmsg_cpp";
  pkgFinal = final.noetic.rosmsg_cpp;
  src = srcs.rosmsg_cpp.rosmsg_cpp;

  colconBuildDepends = [
    catkin
    cpp_common
    python3
    ros_environment
    roslib
  ];

  colconRunDepends = [
    cpp_common
    message_runtime
    python3
    roslib
  ];

  colconTestDepends = [
    geometry_msgs
    rosunit
  ];
}
