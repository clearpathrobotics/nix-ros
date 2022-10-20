{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "posedetectiondb";
  pkgFinal = final.noetic.posedetectiondb;
  src = srcs.jsk_recognition.posedetectiondb;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
