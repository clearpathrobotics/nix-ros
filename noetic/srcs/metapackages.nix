{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "metapackages";
    rev = "482da3e297f47a2e06f54d54c16de7e3cb7ec0f4";
    hash = "sha256-1NgcjN3H2iqoIsxnqUyc9ut+TX/rlVZlDNGYkgPTSys=";
    name = "ros-metapackages-482da3e297f47a2e06f54d54c16de7e3cb7ec0f4";
  });
in
{
  desktop = pkg "sha256-fFoE/pTXO+c8EA0U4oi/GDC61alw1n6H5MfLOF7E++4=" "desktop";
  desktop_full = pkg "sha256-AGWIFkHAQ0EvTeZBj8VbLPcqCHnNcvzgy6bvPi+pYlc=" "desktop_full";
  perception = pkg "sha256-01jTD7u8J1hJ6oocF/YZW+dG8aTm1NqKNMAZDsT9onA=" "perception";
  robot = pkg "sha256-4j4eUhU10uecGbVJV4kfJ/dO/6BcEndgwOT1FtLvDrw=" "robot";
  ros_base = pkg "sha256-HCTiEW7+Xx7DxDBd2ZfzBj4hQfT4QRV/HhvmKH1m8YQ=" "ros_base";
  ros_core = pkg "sha256-Wf/o9p7GSY+ZkdR+bX7Cbhgc5iBIRdjW9usraDstcXY=" "ros_core";
  simulators = pkg "sha256-XPf536ZAVXqHAxJUQ7dCj3fbnYhJB4+Z9S3snxwqt8I=" "simulators";
  viz = pkg "sha256-4tn/ulwgITJCMhfSs6YMF3PpaCf+v+iJVGCYUbSbiHE=" "viz";
}
