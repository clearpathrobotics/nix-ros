{
  catkin,
  rosemacs,
  roslisp,
  sbcl,
  slime_wrapper,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slime_ros";
  pkgFinal = final.noetic.slime_ros;
  src = srcs.ros_emacs_utils.slime_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosemacs
    roslisp
    sbcl
    slime_wrapper
  ];

  colconTestDepends = [
  ];
}
