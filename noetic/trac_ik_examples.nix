{
  boost,
  catkin,
  nlopt,
  pr2_description,
  trac_ik_lib,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trac_ik_examples";
  pkgFinal = final.noetic.trac_ik_examples;
  src = srcs.trac_ik.trac_ik_examples;

  colconBuildDepends = [
    boost
    catkin
    nlopt
    trac_ik_lib
  ];

  colconRunDepends = [
    boost
    nlopt
    pr2_description
    trac_ik_lib
    xacro
  ];

  colconTestDepends = [
  ];
}
