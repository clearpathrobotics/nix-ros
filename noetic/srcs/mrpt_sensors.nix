{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "mrpt_sensors";
    rev = "d21a89affb77cf77b10f0883b6606e9ff98e874f";
    hash = "sha256-2QQ/mIlx0+ywsDKANoe2rnpwYNrfBTzr1PYqFJCNCvo=";
    name = "mrpt-ros-pkg-mrpt_sensors-d21a89affb77cf77b10f0883b6606e9ff98e874f";
  });
in
{
  mrpt_generic_sensor = pkg "sha256-cdpiQqHAqP+ORKnL4SfO9GNRqX3ZlrjAImdJ9LpvCWg=" "mrpt_generic_sensor";
  mrpt_sensorlib = pkg "sha256-8CC294tVZ0kNRXaTZzjH1Z8/Sjfwrl4GvQoJVLLCsvo=" "mrpt_sensorlib";
  mrpt_sensors = pkg "sha256-QGkAboPxZ05antXRHypT4kn98VJHa20KSL8iTK2pAP0=" "mrpt_sensors";
  mrpt_sensors_examples = pkg "sha256-PA9p9wmYbHR8AddXdPy76DqjOuTzZTkkJlptizE8jz4=" "mrpt_sensors_examples";
}
