{
  catkin,
  dynamic_reconfigure,
  message_runtime,
  roscpp,
  roslaunch,
  rostest,
  toposens_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_driver";
  pkgFinal = final.noetic.toposens_driver;
  src = srcs.toposens.toposens_driver;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    message_runtime
    roscpp
    toposens_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    message_runtime
    roscpp
    toposens_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
