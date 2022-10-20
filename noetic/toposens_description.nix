{
  catkin,
  joint_state_publisher,
  robot_state_publisher,
  rviz,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_description";
  pkgFinal = final.noetic.toposens_description;
  src = srcs.toposens.toposens_description;

  colconBuildDepends = [
    catkin
    urdf
    xacro
  ];

  colconRunDepends = [
    joint_state_publisher
    robot_state_publisher
    rviz
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
