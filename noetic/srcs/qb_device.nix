{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "qbrobotics";
    repo = "qbdevice-ros";
    rev = "35624ad46a877fdd8da0e643fe5c35a73c41a0b8";
    hash = "sha256-4aW1WByLJ5WR2tK5eP6+LZm7dbJKtTWN9/uNKQHDkKk=";
    name = "qbrobotics-qbdevice-ros-35624ad46a877fdd8da0e643fe5c35a73c41a0b8";
  });
in
{
  qb_device = pkg "sha256-HaKwFymkVMPIsd8mrEt58V36fE6gGBa5eq+t3K63gA0=" "qb_device";
  qb_device_bringup = pkg "sha256-ipnXXT5fKlUeaVx/SfvfHc6ACiXbLDKpBFT5fmG1CkM=" "qb_device_bringup";
  qb_device_control = pkg "sha256-/PN70cMr8M+n3LphD0jaLD3bcCG/Qn1ICJXooFB/POc=" "qb_device_control";
  qb_device_description = pkg "sha256-r3Y+H7URQ5ed1v0bQDHXtXjD4TuKy7OOYRe5J5QIBQo=" "qb_device_description";
  qb_device_driver = pkg "sha256-MwCF+HPLqlSS+Ej7kWXXdeBetkKrEPyTQTzivvaUvFU=" "qb_device_driver";
  qb_device_gazebo = pkg "sha256-hLz+7wactFaGGmhFnv5g04UpYNNY1VyOk66ISeAWMtw=" "qb_device_gazebo";
  qb_device_hardware_interface = pkg "sha256-H0b8s+6kp3kwB10tQMyY4kXWXxsYrEKRwvVNccLjszU=" "qb_device_hardware_interface";
  qb_device_msgs = pkg "sha256-eoP/+hynHA/mozk5ZXQpoOnNswQENLw5O4r5iBo9WBk=" "qb_device_msgs";
  qb_device_srvs = pkg "sha256-6EcVkUVFolJFH+5SNIBC7kj8SmGZ5ZUH/dJGtbOQe0M=" "qb_device_srvs";
  qb_device_utils = pkg "sha256-cTyYeBrTM+EKpNrX7p6mTH1uB8B/wy/dbw9d3q6ZtcY=" "qb_device_utils";
}
