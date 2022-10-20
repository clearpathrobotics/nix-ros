{
  catkin,
  diagnostic_aggregator,
  diagnostic_updater,
  dynamic_reconfigure,
  libsick_ldmrs,
  pcl_conversions,
  roscpp,
  roslaunch,
  sensor_msgs,
  sick_ldmrs_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_ldmrs_driver";
  pkgFinal = final.noetic.sick_ldmrs_driver;
  src = srcs.sick_ldmrs_laser.sick_ldmrs_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    libsick_ldmrs
    pcl_conversions
    roscpp
    roslaunch
    sensor_msgs
    sick_ldmrs_msgs
    tf
  ];

  colconRunDepends = [
    diagnostic_aggregator
    diagnostic_updater
    dynamic_reconfigure
    libsick_ldmrs
    pcl_conversions
    roscpp
    sensor_msgs
    sick_ldmrs_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
