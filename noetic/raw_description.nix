{
  catkin,
  cob_description,
  gazebo_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "raw_description";
  pkgFinal = final.noetic.raw_description;
  src = srcs.cob_common.raw_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_description
    gazebo_ros
    xacro
  ];

  colconTestDepends = [
  ];
}
