{
  catkin,
  emacs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosemacs";
  pkgFinal = final.noetic.rosemacs;
  src = srcs.ros_emacs_utils.rosemacs;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    emacs
  ];

  colconTestDepends = [
  ];
}
