{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prosilica_gige_sdk";
  pkgFinal = final.noetic.prosilica_gige_sdk;
  src = srcs.prosilica_gige_sdk.prosilica_gige_sdk;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
