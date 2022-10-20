{
  depthai,
  depthai_bridge,
  depthai_examples,
  depthai_ros_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depthai-ros";
  pkgFinal = final.noetic.depthai-ros;
  src = srcs.depthai-ros.depthai-ros;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    depthai
    depthai_bridge
    depthai_examples
    depthai_ros_msgs
  ];

  colconTestDepends = [
  ];
}
