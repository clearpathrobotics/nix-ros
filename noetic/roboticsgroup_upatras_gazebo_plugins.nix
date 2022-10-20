{
  catkin,
  control_toolbox,
  gazebo_ros,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roboticsgroup_upatras_gazebo_plugins";
  pkgFinal = final.noetic.roboticsgroup_upatras_gazebo_plugins;
  src = srcs.roboticsgroup_upatras_gazebo_plugins.roboticsgroup_upatras_gazebo_plugins;

  colconBuildDepends = [
    catkin
    control_toolbox
    gazebo_ros
    roscpp
  ];

  colconRunDepends = [
    control_toolbox
    gazebo_ros
    roscpp
  ];

  colconTestDepends = [
  ];
}
