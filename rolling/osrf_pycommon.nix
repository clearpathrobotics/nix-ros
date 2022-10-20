{
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "osrf_pycommon";
  pkgFinal = final.rolling.osrf_pycommon;
  src = srcs.osrf_pycommon.osrf_pycommon;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.importlib-metadata
  ];

  colconTestDepends = [
  ];
}
