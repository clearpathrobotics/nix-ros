{
  catkin,
  franka_description,
  libfranka,
  roscpp,
  sensor_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_visualization";
  pkgFinal = final.noetic.franka_visualization;
  src = srcs.franka_ros.franka_visualization;

  colconBuildDepends = [
    catkin
    libfranka
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    franka_description
    libfranka
    roscpp
    sensor_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
