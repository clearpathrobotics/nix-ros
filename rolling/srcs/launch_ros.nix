{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "launch_ros";
    rev = "73098cfb2ef009b7db822ff9dee12504def814e2";
    hash = "sha256-B7tC8SMN0iuAsY44/zm8t9Acey6srvctyL9Z1L8Xnf8=";
    name = "ros2-launch_ros-73098cfb2ef009b7db822ff9dee12504def814e2";
  });
in
{
  launch_ros = pkg "sha256-gdUKPWUrQOIxsbDJ8KaTK/0fsgONfF2e2vcsZKN+TBc=" "launch_ros";
  launch_testing_ros = pkg "sha256-Nc2Dzvjxt0uMmSLs5a/mI+rHTPv/uIrsgx17esZfn9E=" "launch_testing_ros";
  ros2launch = pkg "sha256-bI21XkbyuhQ6S/ojmaJ5Jqi/MBnDLr0PoGpp1jG5psc=" "ros2launch";
  test_launch_ros = pkg "sha256-AySrhRwDfn+N1c2+H4HDM8qX+PNFjX4MXbnvjkhT3Lk=" "test_launch_ros";
}
