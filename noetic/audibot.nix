{
  audibot_description,
  audibot_gazebo,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audibot";
  pkgFinal = final.noetic.audibot;
  src = srcs.audibot.audibot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    audibot_description
    audibot_gazebo
  ];

  colconTestDepends = [
  ];
}
