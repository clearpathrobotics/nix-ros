{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "velodyne_simulator";
    rev = "df4fc397b21dad5ce8c7fc0f4a2aa37f470f70e7";
    hash = "sha256-cRAvOZb0sGjMfTiA4yGyLkLOpThzRD++sALGkWQe9P8=";
    name = "DataspeedInc-velodyne_simulator-df4fc397b21dad5ce8c7fc0f4a2aa37f470f70e7";
  });
in
{
  velodyne_description = pkg "sha256-XeItmGEOGYnHx8idGkVqZBsKWGFAi9228oQYrLaTq6s=" "velodyne_description";
  velodyne_gazebo_plugins = pkg "sha256-lmYG4MvWYplf7v5WEhs+Hhin/2PpUCA25K2vIaLy4So=" "velodyne_gazebo_plugins";
  velodyne_simulator = pkg "sha256-ugquH1gsMJvc0SSI3mwsPt9FUL8SfZ/DGqm8bWBVkOs=" "velodyne_simulator";
}
