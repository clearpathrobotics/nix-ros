{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_environment";
  pkgFinal = final.noetic.ros_environment;
  src = srcs.ros_environment.ros_environment;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
