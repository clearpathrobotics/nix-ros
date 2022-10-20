{
  catkin,
  catkin_virtualenv,
  roseus,
  slime_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "euslime";
  pkgFinal = final.noetic.euslime;
  src = srcs.euslime.euslime;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
  ];

  colconRunDepends = [
    roseus
    slime_ros
  ];

  colconTestDepends = [
  ];
}
