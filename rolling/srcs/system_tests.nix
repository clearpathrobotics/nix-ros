{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "system_tests";
    rev = "e482f5d4f44a64c4d3470903a60bb1ff229eec8a";
    hash = "sha256-QslfCAWfDewq50p6uM/jhXeN5t08uAjCyMfGxpcVhi0=";
    name = "ros2-system_tests-e482f5d4f44a64c4d3470903a60bb1ff229eec8a";
  });
in
{
  test_cli = pkg "sha256-K4qKzM41ojHafpIiUXun5/qtCYEKy1ADTrYRhTdA/D4=" "test_cli";
  test_cli_remapping = pkg "sha256-aMda0UZKKvawdMjVCBmpHqTQ9Tp9NZ0PuAZ6h1/O98w=" "test_cli_remapping";
  test_communication = pkg "sha256-OUxDW/1QUU1dDRea04FzCqD1/EFOB02YUgG8q2meFxs=" "test_communication";
  test_quality_of_service = pkg "sha256-xcC3DFg4Xo6GGgLjhaYrVYIvQ1sPk23QHNaReE8iJL4=" "test_quality_of_service";
  test_rclcpp = pkg "sha256-BQQgMW3/NWp2Syxs8+fqLHgSny9IJgDi3qKbk5nokzE=" "test_rclcpp";
  test_security = pkg "sha256-k6W0+B3YioHpc1BICQGVfyTB5you7hxjtvGEHF1m/Io=" "test_security";
}
