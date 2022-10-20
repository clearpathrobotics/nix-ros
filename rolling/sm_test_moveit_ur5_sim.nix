{
  ament_cmake,
  boost,
  controller_manager,
  move_group_interface_client,
  ros_timer_client,
  smacc2,
  warehouse_ros_mongo,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_test_moveit_ur5_sim";
  pkgFinal = final.rolling.sm_test_moveit_ur5_sim;
  src = srcs.SMACC2.sm_test_moveit_ur5_sim;

  colconBuildDepends = [
    ament_cmake
    boost
    controller_manager
    move_group_interface_client
    ros_timer_client
    smacc2
    warehouse_ros_mongo
  ];

  colconRunDepends = [
    boost
    controller_manager
    move_group_interface_client
    ros_timer_client
    smacc2
    warehouse_ros_mongo
  ];

  colconTestDepends = [
  ];
}
