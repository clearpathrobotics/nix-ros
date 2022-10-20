{
  catkin,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_description";
  pkgFinal = final.noetic.turtlebot3_description;
  src = srcs.turtlebot3.turtlebot3_description;

  colconBuildDepends = [
    catkin
    urdf
    xacro
  ];

  colconRunDepends = [
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
