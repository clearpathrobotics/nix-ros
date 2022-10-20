{
  catkin,
  rosemacs,
  roslisp,
  sbcl,
  slime_ros,
  slime_wrapper,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslisp_repl";
  pkgFinal = final.noetic.roslisp_repl;
  src = srcs.ros_emacs_utils.roslisp_repl;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosemacs
    roslisp
    sbcl
    slime_ros
    slime_wrapper
  ];

  colconTestDepends = [
  ];
}
