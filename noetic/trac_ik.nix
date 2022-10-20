{
  catkin,
  trac_ik_examples,
  trac_ik_kinematics_plugin,
  trac_ik_lib,
  trac_ik_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trac_ik";
  pkgFinal = final.noetic.trac_ik;
  src = srcs.trac_ik.trac_ik;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    trac_ik_examples
    trac_ik_kinematics_plugin
    trac_ik_lib
    trac_ik_python
  ];

  colconTestDepends = [
  ];
}
