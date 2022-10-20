{
  catkin,
  joint_state_publisher,
  joint_state_publisher_gui,
  robot_state_publisher,
  roslaunch,
  rviz,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf_tutorial";
  pkgFinal = final.noetic.urdf_tutorial;
  src = srcs.urdf_tutorial.urdf_tutorial;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    joint_state_publisher
    joint_state_publisher_gui
    robot_state_publisher
    rviz
    xacro
  ];

  colconTestDepends = [
  ];
}
