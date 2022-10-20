{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tu-darmstadt-ros-pkg";
    repo = "hector_gazebo";
    rev = "de947fb1e253b114d259e8690456792d91b93347";
    hash = "sha256-bKS5/jqopXlHbeEj8k0OE3T34TemHHibmYL21jItC+E=";
    name = "tu-darmstadt-ros-pkg-hector_gazebo-de947fb1e253b114d259e8690456792d91b93347";
  });
in
{
  hector_gazebo = pkg "sha256-OdXPnPHs+zVN/Rc/2V7meTUXXJJHR/xkM4UPT9QOShM=" "hector_gazebo";
  hector_gazebo_plugins = pkg "sha256-ezF5TdZv2qFeYUE/71hwJ21XUZ3WaIWaDZ2TEnnZRVs=" "hector_gazebo_plugins";
  hector_gazebo_thermal_camera = pkg "sha256-6h4wPMO/Rda03LKTTNKb35YD/xj0BKpHeKTj+F/tG74=" "hector_gazebo_thermal_camera";
  hector_gazebo_worlds = pkg "sha256-DMc4PnfYFalcJ8tf4UDRrf68rGq90JQeC6ASpbRNmdc=" "hector_gazebo_worlds";
  hector_sensors_gazebo = pkg "sha256-kaMZztq+MoNUHRHp0FdIDD1V7jfDUa7dDBRrknkyNX0=" "hector_sensors_gazebo";
}
