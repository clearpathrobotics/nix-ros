{
  catkin,
  diagnostic_aggregator,
  message_filters,
  pcl,
  pcl_conversions,
  pcl_ros,
  robot_state_publisher,
  roscpp,
  roslaunch,
  sick_ldmrs_description,
  sick_ldmrs_driver,
  sick_ldmrs_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_ldmrs_tools";
  pkgFinal = final.noetic.sick_ldmrs_tools;
  src = srcs.sick_ldmrs_laser.sick_ldmrs_tools;

  colconBuildDepends = [
    catkin
    message_filters
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    roslaunch
    sick_ldmrs_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    diagnostic_aggregator
    message_filters
    pcl
    pcl_conversions
    pcl_ros
    robot_state_publisher
    roscpp
    sick_ldmrs_description
    sick_ldmrs_driver
    sick_ldmrs_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
