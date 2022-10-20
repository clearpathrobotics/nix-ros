{
  catkin,
  joint_state_publisher,
  ridgeback_description,
  roslaunch,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_viz";
  pkgFinal = final.noetic.ridgeback_viz;
  src = srcs.ridgeback_desktop.ridgeback_viz;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    joint_state_publisher
    ridgeback_description
    rviz
  ];

  colconTestDepends = [
  ];
}
