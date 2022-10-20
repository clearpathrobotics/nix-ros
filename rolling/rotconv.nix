{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rotconv";
  pkgFinal = final.rolling.rotconv;
  src = srcs.rot_conv_lib.rotconv;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
