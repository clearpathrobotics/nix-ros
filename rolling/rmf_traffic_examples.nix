{
  cmake,
  rmf_traffic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_traffic_examples";
  pkgFinal = final.rolling.rmf_traffic_examples;
  src = srcs.rmf_traffic.rmf_traffic_examples;

  colconBuildDepends = [
    cmake
    rmf_traffic
  ];

  colconRunDepends = [
    rmf_traffic
  ];

  colconTestDepends = [
  ];
}
