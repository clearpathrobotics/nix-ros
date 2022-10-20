{
  mavros_msgs,
  nmea_msgs,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ntrip_client";
  pkgFinal = final.rolling.ntrip_client;
  src = srcs.ntrip_client.ntrip_client;

  colconBuildDepends = [
    mavros_msgs
    nmea_msgs
    rclpy
    std_msgs
  ];

  colconRunDepends = [
    mavros_msgs
    nmea_msgs
    rclpy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
