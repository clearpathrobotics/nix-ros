{
  catkin,
  cob_script_server,
  geometry_msgs,
  moveit_commander,
  python3Packages,
  rospy,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_moveit_interface";
  pkgFinal = final.noetic.cob_moveit_interface;
  src = srcs.cob_manipulation.cob_moveit_interface;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cob_script_server
    geometry_msgs
    moveit_commander
    python3Packages.six
    rospy
    tf
  ];

  colconTestDepends = [
  ];
}
