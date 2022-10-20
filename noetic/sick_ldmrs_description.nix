{
  catkin,
  robot_state_publisher,
  roslaunch,
  rviz,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_ldmrs_description";
  pkgFinal = final.noetic.sick_ldmrs_description;
  src = srcs.sick_ldmrs_laser.sick_ldmrs_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    robot_state_publisher
    rviz
    xacro
  ];

  colconTestDepends = [
  ];
}
