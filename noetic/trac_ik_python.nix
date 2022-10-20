{
  catkin,
  nlopt,
  rospy,
  swig,
  tf,
  tf_conversions,
  trac_ik_lib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trac_ik_python";
  pkgFinal = final.noetic.trac_ik_python;
  src = srcs.trac_ik.trac_ik_python;

  colconBuildDepends = [
    catkin
    nlopt
    rospy
    swig
    tf_conversions
    trac_ik_lib
  ];

  colconRunDepends = [
    nlopt
    rospy
    swig
    tf
    tf_conversions
    trac_ik_lib
  ];

  colconTestDepends = [
  ];
}
