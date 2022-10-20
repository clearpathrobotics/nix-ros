{
  catkin,
  rospy,
  rosservice,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "service_tools";
  pkgFinal = final.noetic.service_tools;
  src = srcs.cob_command_tools.service_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rospy
    rosservice
  ];

  colconTestDepends = [
  ];
}
