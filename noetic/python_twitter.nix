{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "python_twitter";
  pkgFinal = final.noetic.python_twitter;
  src = srcs.jsk_3rdparty.python_twitter;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
