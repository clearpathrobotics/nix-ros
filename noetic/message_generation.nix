{
  catkin,
  gencpp,
  geneus,
  genlisp,
  genmsg,
  gennodejs,
  genpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "message_generation";
  pkgFinal = final.noetic.message_generation;
  src = srcs.message_generation.message_generation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gencpp
    geneus
    genlisp
    genmsg
    gennodejs
    genpy
  ];

  colconTestDepends = [
  ];
}
