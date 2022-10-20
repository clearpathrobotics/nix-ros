{
  catkin,
  rosunit,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_description";
  pkgFinal = final.noetic.franka_description;
  src = srcs.franka_ros.franka_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
    rosunit
  ];
}
