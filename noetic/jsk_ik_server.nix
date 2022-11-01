{
  catkin,
  cmake_modules,
  mk,
  moveit_msgs,
  roseus,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_ik_server";
  pkgFinal = final.noetic.jsk_ik_server;
  src = srcs.jsk_control.jsk_ik_server;

  colconBuildDepends = [
    catkin
    cmake_modules
    mk
    moveit_msgs
    roseus
    rostest
    tf
  ];

  colconRunDepends = [
    cmake_modules
    mk
    moveit_msgs
    roseus
    rostest
    tf
  ];

  colconTestDepends = [
  ];
}
