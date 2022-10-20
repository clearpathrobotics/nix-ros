{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "examples";
    rev = "0410665143fd89b33e98b4c7d90829b32a6158f7";
    hash = "sha256-PPqjIlCeUa+fxacNsdvUWaXx8QOUQW0UthHNMFOaSRI=";
    name = "ros2-examples-0410665143fd89b33e98b4c7d90829b32a6158f7";
  });
in
{
  examples_rclcpp_async_client = pkg "sha256-aidC+ic0gOCbI8V3aNLdaiHXBvONIcD7kqaDjg6jddA=" "rclcpp/services/async_client";
  examples_rclcpp_cbg_executor = pkg "sha256-ME6JlchmDRsI/BZ3JGnEflw3eTwVLRJ4nYPRvVJSolE=" "rclcpp/executors/cbg_executor";
  examples_rclcpp_minimal_action_client = pkg "sha256-lC+xQXujLm8UGHRO/diqc9DjNGQXNNyZJiNIOmyx2d0=" "rclcpp/actions/minimal_action_client";
  examples_rclcpp_minimal_action_server = pkg "sha256-9X4GDWCWLc81tXCj6S/Yj8luVA+B7lgosxFYGUlrqR0=" "rclcpp/actions/minimal_action_server";
  examples_rclcpp_minimal_client = pkg "sha256-lkzEN4+l/j5IuCx4GqwJ2zcOJQzKI5AcHE84xOOgQHI=" "rclcpp/services/minimal_client";
  examples_rclcpp_minimal_composition = pkg "sha256-fREYTDZXqD9H+h04ienQXr4xcpzPyuX1yA0ZNWR4suA=" "rclcpp/composition/minimal_composition";
  examples_rclcpp_minimal_publisher = pkg "sha256-USDtiYtD2cNePxUp+7OsgbRQLXELOcHxH9VOIUwQoc4=" "rclcpp/topics/minimal_publisher";
  examples_rclcpp_minimal_service = pkg "sha256-hgBNzbvUcNrH+y4dCv/eZ83PYL/2MqsmqLLkH6ij0sI=" "rclcpp/services/minimal_service";
  examples_rclcpp_minimal_subscriber = pkg "sha256-LbJekQqdC15sOmGdJBaujKi+ItE1FGvEFA6vwWslluE=" "rclcpp/topics/minimal_subscriber";
  examples_rclcpp_minimal_timer = pkg "sha256-Vdv76Ns8uwai3Ar8TNLzMP/jAZ1qouWLwqFI7IYc4tM=" "rclcpp/timers/minimal_timer";
  examples_rclcpp_multithreaded_executor = pkg "sha256-aE7vJn1DZZF26qrbBDrzyTuQ2YAlQe04EQKVydTPPbA=" "rclcpp/executors/multithreaded_executor";
  examples_rclcpp_wait_set = pkg "sha256-E/5o8N5Z4Qj51NxY+ubAovXqTnd0G3sIVw8lxK+QWyc=" "rclcpp/wait_set";
  examples_rclpy_executors = pkg "sha256-WaxmvJTNez5wqCm3h7IOEOt5PsOW4qwAPnnPDvfdU/I=" "rclpy/executors";
  examples_rclpy_guard_conditions = pkg "sha256-e056uom3uUcDxfDEDNnveuz+pBsdxmWuSvExt02AP68=" "rclpy/guard_conditions";
  examples_rclpy_minimal_action_client = pkg "sha256-GUBjN63953bAuDH9hLrSXf9McEDBpQ7hK80n7yxu/1M=" "rclpy/actions/minimal_action_client";
  examples_rclpy_minimal_action_server = pkg "sha256-8lOCenoCulr7jJNhD5IVGYMCqSux3RRRy5AP5XDnvtM=" "rclpy/actions/minimal_action_server";
  examples_rclpy_minimal_client = pkg "sha256-DPrdwIc5dSKClUI7JSI7B1XxMDGhyi7yBorD1ArgEUY=" "rclpy/services/minimal_client";
  examples_rclpy_minimal_publisher = pkg "sha256-L/Niw1iNq/NbtYk6t0gVsvqDT8l37Ijd1cUHigAJymE=" "rclpy/topics/minimal_publisher";
  examples_rclpy_minimal_service = pkg "sha256-V1UHGj8xwPM7/h4FY6Pg3+nuip8mJgII2bV2atPJAb0=" "rclpy/services/minimal_service";
  examples_rclpy_minimal_subscriber = pkg "sha256-QxuQ0lawYopWZCE2m5ScLux3Kw9kwhryU+qBSBecgtU=" "rclpy/topics/minimal_subscriber";
  examples_rclpy_pointcloud_publisher = pkg "sha256-dHj1hmi+ogy69eQ3fmZVgFOTrOHbZ+a7cU30AjBqhQg=" "rclpy/topics/pointcloud_publisher";
  launch_testing_examples = pkg "sha256-wfkSvw+ABeDWW8+uwxgeidbpS9yhbo+0vowIfMISsg4=" "launch_testing/launch_testing_examples";
}
