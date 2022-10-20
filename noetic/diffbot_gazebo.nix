{
  catkin,
  diffbot_control,
  diffbot_description,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_gazebo";
  pkgFinal = final.noetic.diffbot_gazebo;
  src = srcs.diffbot.diffbot_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diffbot_control
    diffbot_description
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    xacro
  ];

  colconTestDepends = [
  ];
}
