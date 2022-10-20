{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse_doc";
  pkgFinal = final.noetic.fuse_doc;
  src = srcs.fuse.fuse_doc;

  colconBuildDepends = [
    catkin
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
