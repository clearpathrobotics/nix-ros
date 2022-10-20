{
  catkin,
  geometry_msgs,
  python3Packages,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mouse_teleop";
  pkgFinal = final.noetic.mouse_teleop;
  src = srcs.teleop_tools.mouse_teleop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    python3Packages.numpy
    python3Packages.tkinter
    rospy
  ];

  colconTestDepends = [
  ];
}
