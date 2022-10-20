{
  catkin,
  rosemacs,
  roslisp_repl,
  slime_ros,
  slime_wrapper,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_emacs_utils";
  pkgFinal = final.noetic.ros_emacs_utils;
  src = srcs.ros_emacs_utils.ros_emacs_utils;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosemacs
    roslisp_repl
    slime_ros
    slime_wrapper
  ];

  colconTestDepends = [
  ];
}
