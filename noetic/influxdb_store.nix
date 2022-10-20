{
  catkin,
  pr2_msgs,
  python39Packages,
  python3Packages,
  pythonPackages,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "influxdb_store";
  pkgFinal = final.noetic.influxdb_store;
  src = srcs.jsk_3rdparty.influxdb_store;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    pr2_msgs
    python39Packages.pytz
    pythonPackages.influxdb
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
