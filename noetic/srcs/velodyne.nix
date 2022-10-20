{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "velodyne";
    rev = "08a792d283640262a817b181fe92b8debbcb9330";
    hash = "sha256-WU1RleMuoxbKSDyJZoiPCj8g49Hl5zf8eyCuT/Uxa5g=";
    name = "ros-drivers-velodyne-08a792d283640262a817b181fe92b8debbcb9330";
  });
in
{
  velodyne = pkg "sha256-FZbD57R0o7nR2xCxtN5z2KjXu5QsJEBRULA6ban0EI0=" "velodyne";
  velodyne_driver = pkg "sha256-pf2Mqw7nxEFt26N14iBf9zB65eWYsY85NlOJHsOXXTQ=" "velodyne_driver";
  velodyne_laserscan = pkg "sha256-ONEJiugJYB5jylkNY0IAN96pzvHduV+dHZa+UE3eD2E=" "velodyne_laserscan";
  velodyne_msgs = pkg "sha256-y5yYjCecg58/npbTLJ5nri+Svd9LssEhlSm3Jp8Lz2Y=" "velodyne_msgs";
  velodyne_pcl = pkg "sha256-svqh78z1EDXZzkkTOTOOKC8/+oANCO7Ue7eSgpGurQQ=" "velodyne_pcl";
  velodyne_pointcloud = pkg "sha256-/qMBykOXNewqBLR/+1JFoMN+NLbkP6XwPinxyV5zOGI=" "velodyne_pointcloud";
}
