{
  catkin,
  p2os_driver,
  p2os_msgs,
  p2os_teleop,
  p2os_urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "p2os_launch";
  pkgFinal = final.noetic.p2os_launch;
  src = srcs.p2os.p2os_launch;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    p2os_driver
    p2os_msgs
    p2os_teleop
    p2os_urdf
  ];

  colconTestDepends = [
  ];
}
