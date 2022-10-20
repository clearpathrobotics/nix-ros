{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sdhlibrary_cpp";
  pkgFinal = final.noetic.sdhlibrary_cpp;
  src = srcs.sdhlibrary_cpp.sdhlibrary_cpp;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
