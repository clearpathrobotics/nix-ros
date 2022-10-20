{
  catkin,
  dynamic_reconfigure,
  python3Packages,
  rospy,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "razor_imu_9dof";
  pkgFinal = final.noetic.razor_imu_9dof;
  src = srcs.razor_imu_9dof.razor_imu_9dof;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    dynamic_reconfigure
    python3Packages.pyserial
    rospy
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
