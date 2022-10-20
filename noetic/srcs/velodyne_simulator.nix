{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "velodyne_simulator";
    rev = "9ab05d74438b693b8aad3c3c87ca438e68844409";
    hash = "sha256-IyqKXwMUPPr5e2l7HDBtGkd20wqV3PwQJwm2WxaKQik=";
    name = "DataspeedInc-velodyne_simulator-9ab05d74438b693b8aad3c3c87ca438e68844409";
  });
in
{
  velodyne_description = pkg "sha256-GcapKA4jcSul6Poi8vvOHlZHDJoXCOhRPJd08EjaRFw=" "velodyne_description";
  velodyne_gazebo_plugins = pkg "sha256-5wk3w7+ZgTWlcabxVKpE6tCqOD0sLu1zTpPQ5ToYCaA=" "velodyne_gazebo_plugins";
  velodyne_simulator = pkg "sha256-21UVSKQtpz1NXZbRkhzXKhiAiuzX5GK5p9SatURp5Fo=" "velodyne_simulator";
}
