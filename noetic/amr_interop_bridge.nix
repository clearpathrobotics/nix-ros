{
  amr_interop_msgs,
  catkin,
  geometry_msgs,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "amr_interop_bridge";
  pkgFinal = final.noetic.amr_interop_bridge;
  src = srcs.amr_interop_bridge.amr_interop_bridge;

  colconBuildDepends = [
    amr_interop_msgs
    catkin
    geometry_msgs
    roscpp
    rospy
    std_msgs
  ];

  colconRunDepends = [
    amr_interop_msgs
    geometry_msgs
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
