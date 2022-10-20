{
  catkin,
  turtle_tf,
  turtle_tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geometry_tutorials";
  pkgFinal = final.noetic.geometry_tutorials;
  src = srcs.geometry_tutorials.geometry_tutorials;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    turtle_tf
    turtle_tf2
  ];

  colconTestDepends = [
  ];
}
