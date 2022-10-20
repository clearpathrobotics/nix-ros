{
  ament_cmake_pytest,
  pybind11_json_vendor,
  pybind11_vendor,
  rclpy,
  rmf_fleet_adapter,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_fleet_adapter_python";
  pkgFinal = final.rolling.rmf_fleet_adapter_python;
  src = srcs.rmf_ros2.rmf_fleet_adapter_python;

  colconBuildDepends = [
    pybind11_json_vendor
    pybind11_vendor
    rclpy
    rmf_fleet_adapter
  ];

  colconRunDepends = [
    pybind11_json_vendor
    pybind11_vendor
    rclpy
    rmf_fleet_adapter
  ];

  colconTestDepends = [
    ament_cmake_pytest
  ];
}
