{
  catkin,
  eigen,
  roscpp,
  roslint,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_2d";
  pkgFinal = final.noetic.tf2_2d;
  src = srcs.tf2_2d.tf2_2d;

  colconBuildDepends = [
    catkin
    eigen
    roscpp
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    eigen
    roscpp
    tf2
    tf2_geometry_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
