{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cubicleguy";
    repo = "ess_imu_ros1_uart_driver";
    rev = "be6b2143d27ecc7002462179cc2e05fbac3b8141";
    hash = "sha256-vR4vN1kNUnjk7ewOgvYGe0JLYwU9O8s+92rlXXTdlGQ=";
    name = "cubicleguy-ess_imu_ros1_uart_driver-be6b2143d27ecc7002462179cc2e05fbac3b8141";
  });
in
{
  ess_imu_ros1_uart_driver = pkg "sha256-vR4vN1kNUnjk7ewOgvYGe0JLYwU9O8s+92rlXXTdlGQ=" ".";
}
