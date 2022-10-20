{
  ament_cmake,
  boost,
  lttng-ust,
  rcl,
  rclcpp,
  rclcpp_action,
  smacc2_msgs,
  tracetools,
  tracetools_launch,
  tracetools_trace,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "smacc2";
  pkgFinal = final.rolling.smacc2;
  src = srcs.SMACC2.smacc2;

  colconBuildDepends = [
    ament_cmake
    boost
    lttng-ust
    rcl
    rclcpp
    rclcpp_action
    smacc2_msgs
    tracetools
    tracetools_launch
    tracetools_trace
  ];

  colconRunDepends = [
    boost
    lttng-ust
    rcl
    rclcpp
    rclcpp_action
    smacc2_msgs
    tracetools
    tracetools_launch
    tracetools_trace
  ];

  colconTestDepends = [
  ];
}
