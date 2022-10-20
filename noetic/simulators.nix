{
  catkin,
  gazebo_ros_pkgs,
  robot,
  rqt_common_plugins,
  rqt_robot_plugins,
  stage_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "simulators";
  pkgFinal = final.noetic.simulators;
  src = srcs.metapackages.simulators;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_ros_pkgs
    robot
    rqt_common_plugins
    rqt_robot_plugins
    stage_ros
  ];

  colconTestDepends = [
  ];
}
