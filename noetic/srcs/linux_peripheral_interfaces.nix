{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "linux_peripheral_interfaces";
    rev = "d25ba49a059a7f6f29ab4800a00d38da3a0fac4d";
    hash = "sha256-L7fwvxlPefF1qGuaohQUY3YExb0ncpdrYxJQSZSK76M=";
    name = "ros-drivers-linux_peripheral_interfaces-d25ba49a059a7f6f29ab4800a00d38da3a0fac4d";
  });
in
{
  laptop_battery_monitor = pkg "sha256-J+Y6ECaOzF6cjAacS2upk7NAYS5fltX2SYyXPxaqrUw=" "laptop_battery_monitor";
  libsensors_monitor = pkg "sha256-FMqPGAlzgDVBRnHXPQHfu4gdHvdJHTwg4UoZueMDSxY=" "libsensors_monitor";
  linux_peripheral_interfaces = pkg "sha256-iroBExDPMILuv8NHA+U4Plq1E65g1H0/wjYvXtIvCGw=" "linux_peripheral_interfaces";
}
