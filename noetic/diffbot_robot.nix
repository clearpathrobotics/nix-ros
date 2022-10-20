{
  catkin,
  diffbot_base,
  diffbot_bringup,
  diffbot_control,
  diffbot_description,
  diffbot_gazebo,
  diffbot_navigation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_robot";
  pkgFinal = final.noetic.diffbot_robot;
  src = srcs.diffbot.diffbot_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diffbot_base
    diffbot_bringup
    diffbot_control
    diffbot_description
    diffbot_gazebo
    diffbot_navigation
  ];

  colconTestDepends = [
  ];
}
