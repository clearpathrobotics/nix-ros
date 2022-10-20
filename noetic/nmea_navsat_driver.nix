{
  catkin,
  catkin_virtualenv,
  geometry_msgs,
  nmea_msgs,
  python3Packages,
  roslint,
  rospy,
  rostest,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nmea_navsat_driver";
  pkgFinal = final.noetic.nmea_navsat_driver;
  src = srcs.nmea_navsat_driver.nmea_navsat_driver;

  colconBuildDepends = [
    catkin
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    geometry_msgs
    nmea_msgs
    python3Packages.pyserial
    python3Packages.pyyaml
    python3Packages.rospkg
    rospy
    sensor_msgs
    tf
  ];

  colconTestDepends = [
    catkin_virtualenv
    roslint
    rostest
  ];
}
