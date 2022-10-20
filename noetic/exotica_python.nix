{
  catkin,
  exotica_core,
  geometry_msgs,
  moveit_msgs,
  python3Packages,
  shape_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_python";
  pkgFinal = final.noetic.exotica_python;
  src = srcs.exotica.exotica_python;

  colconBuildDepends = [
    catkin
    exotica_core
    geometry_msgs
    moveit_msgs
    shape_msgs
  ];

  colconRunDepends = [
    exotica_core
    geometry_msgs
    moveit_msgs
    python3Packages.matplotlib
    python3Packages.rospkg
    python3Packages.tkinter
    shape_msgs
  ];

  colconTestDepends = [
  ];
}
