{
  catkin,
  map_server,
  stage_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot_demo";
  pkgFinal = final.noetic.tuw_multi_robot_demo;
  src = srcs.tuw_multi_robot.tuw_multi_robot_demo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    map_server
    stage_ros
  ];

  colconTestDepends = [
  ];
}
