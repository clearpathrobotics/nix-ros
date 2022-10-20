{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "p2os_doc";
  pkgFinal = final.noetic.p2os_doc;
  src = srcs.p2os.p2os_doc;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
