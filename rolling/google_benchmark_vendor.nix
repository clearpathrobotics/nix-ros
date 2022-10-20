{
  cmake,
  gbenchmark,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "google_benchmark_vendor";
  pkgFinal = final.rolling.google_benchmark_vendor;
  src = srcs.google_benchmark_vendor.google_benchmark_vendor;

  colconBuildDepends = [
    cmake
    gbenchmark
    git
  ];

  colconRunDepends = [
    gbenchmark
  ];

  colconTestDepends = [
  ];
}
