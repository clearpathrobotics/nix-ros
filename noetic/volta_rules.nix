{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_rules";
  pkgFinal = final.noetic.volta_rules;
  src = srcs.volta.volta_rules;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.pyusb
  ];

  colconTestDepends = [
  ];
}
