{
  fastcdr,
  foonathan_memory_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fastrtps";
  pkgFinal = final.rolling.fastrtps;
  src = srcs.fastrtps.fastrtps;

  colconBuildDepends = [
    fastcdr
    foonathan_memory_vendor
  ];

  colconRunDepends = [
    fastcdr
    foonathan_memory_vendor
  ];

  colconTestDepends = [
    fastcdr
    foonathan_memory_vendor
  ];
}
