{
  catkin,
  geometry_msgs,
  image_geometry,
  map_msgs,
  nav_msgs,
  roscpp,
  roslaunch,
  rosunit,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multirobot_map_merge";
  pkgFinal = final.noetic.multirobot_map_merge;
  src = srcs.m_explore.multirobot_map_merge;

  colconBuildDepends = [
    catkin
    geometry_msgs
    image_geometry
    map_msgs
    nav_msgs
    roscpp
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    image_geometry
    map_msgs
    nav_msgs
    roscpp
    tf2_geometry_msgs
  ];

  colconTestDepends = [
    roslaunch
    rosunit
  ];
}
