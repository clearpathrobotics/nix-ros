{
  catkin,
  rospy,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "static_transform_mux";
  pkgFinal = final.noetic.static_transform_mux;
  src = srcs.static_transform_mux.static_transform_mux;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rospy
    tf2_msgs
  ];

  colconTestDepends = [
  ];
}
