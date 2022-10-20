{
  catkin,
  emacs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slime_wrapper";
  pkgFinal = final.noetic.slime_wrapper;
  src = srcs.ros_emacs_utils.slime_wrapper;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    emacs
  ];

  colconTestDepends = [
  ];
}
