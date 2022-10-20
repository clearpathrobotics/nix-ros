{
  catkin,
  roslint,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_grid";
  pkgFinal = final.noetic.nav_grid;
  src = srcs.robot_navigation.nav_grid;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    roslint
    rosunit
  ];
}
