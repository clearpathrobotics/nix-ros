{
  catkin,
  ros_introspection,
  roscompile,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "magical_ros2_conversion_tool";
  pkgFinal = final.noetic.magical_ros2_conversion_tool;
  src = srcs.roscompile.magical_ros2_conversion_tool;

  colconBuildDepends = [
    catkin
    ros_introspection
    roscompile
  ];

  colconRunDepends = [
    ros_introspection
    roscompile
  ];

  colconTestDepends = [
    roslint
  ];
}
