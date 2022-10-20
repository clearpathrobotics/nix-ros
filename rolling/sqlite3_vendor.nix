{
  ament_cmake,
  sqlite,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sqlite3_vendor";
  pkgFinal = final.rolling.sqlite3_vendor;
  src = srcs.rosbag2.sqlite3_vendor;

  colconBuildDepends = [
    ament_cmake
    sqlite
  ];

  colconRunDepends = [
    sqlite
  ];

  colconTestDepends = [
  ];
}
