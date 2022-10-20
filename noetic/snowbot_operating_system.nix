{
  catkin,
  geometry_msgs,
  pluginlib,
  qt5,
  roslint,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "snowbot_operating_system";
  pkgFinal = final.noetic.snowbot_operating_system;
  src = srcs.snowbot_operating_system.snowbot_operating_system;

  colconBuildDepends = [
    catkin
    geometry_msgs
    pluginlib
    qt5.qtbase
    rviz
  ];

  colconRunDepends = [
    geometry_msgs
    pluginlib
    qt5.qtbase
    rviz
  ];

  colconTestDepends = [
    roslint
  ];
}
