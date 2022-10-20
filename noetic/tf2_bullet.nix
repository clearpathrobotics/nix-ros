{
  bullet,
  catkin,
  geometry_msgs,
  pkg-config,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_bullet";
  pkgFinal = final.noetic.tf2_bullet;
  src = srcs.geometry2.tf2_bullet;

  colconBuildDepends = [
    bullet
    catkin
    geometry_msgs
    pkg-config
    tf2
  ];

  colconRunDepends = [
    bullet
    geometry_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
