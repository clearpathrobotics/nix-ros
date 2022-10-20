{
  catkin,
  geometry_msgs,
  roscpp,
  roslaunch,
  roslint,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vrpn_client_ros";
  pkgFinal = final.noetic.vrpn_client_ros;
  src = srcs.vrpn_client_ros.vrpn_client_ros;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    tf2_ros
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
