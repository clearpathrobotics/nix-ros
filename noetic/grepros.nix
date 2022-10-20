{
  python3Packages,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "grepros";
  pkgFinal = final.noetic.grepros;
  src = srcs.grepros.grepros;

  colconBuildDepends = [
    python3Packages.pyyaml
  ];

  colconRunDepends = [
    python3Packages.pyyaml
  ];

  colconTestDepends = [
    std_msgs
  ];
}
