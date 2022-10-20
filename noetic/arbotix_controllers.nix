{
  arbotix_python,
  catkin,
  tf,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "arbotix_controllers";
  pkgFinal = final.noetic.arbotix_controllers;
  src = srcs.arbotix.arbotix_controllers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    arbotix_python
    tf
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
