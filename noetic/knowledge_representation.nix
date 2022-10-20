{
  boost,
  catkin,
  libpqxx,
  postgresql,
  python3,
  python3Packages,
  roslint,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "knowledge_representation";
  pkgFinal = final.noetic.knowledge_representation;
  src = srcs.knowledge_representation.knowledge_representation;

  colconBuildDepends = [
    boost
    catkin
    libpqxx
    postgresql
    python3
    python3Packages.setuptools
    roslint
  ];

  colconRunDepends = [
    boost
    libpqxx
    postgresql
    python3
    python3Packages.pillow
  ];

  colconTestDepends = [
    rosunit
  ];
}
