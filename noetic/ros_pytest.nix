{
  catkin,
  python3Packages,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_pytest";
  pkgFinal = final.noetic.ros_pytest;
  src = srcs.ros_pytest.ros_pytest;

  colconBuildDepends = [
    catkin
    python3Packages.pytest
    python3Packages.pytestcov
    rospy
  ];

  colconRunDepends = [
    python3Packages.pytest
    python3Packages.pytestcov
    rospy
  ];

  colconTestDepends = [
    rostest
  ];
}
