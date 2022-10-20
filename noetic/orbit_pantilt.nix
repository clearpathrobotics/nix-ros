{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "orbit_pantilt";
  pkgFinal = final.noetic.orbit_pantilt;
  src = srcs.jsk_recognition.orbit_pantilt;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
