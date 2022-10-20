{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "image_transport_plugins";
    rev = "942199ccc906067ba7ed4ffed19e2fcd6933af0e";
    hash = "sha256-uDWN3czod+i+vGUiV9Ijs3+0sVs4EvRObktCMNzZn4o=";
    name = "ros-perception-image_transport_plugins-942199ccc906067ba7ed4ffed19e2fcd6933af0e";
  });
in
{
  compressed_depth_image_transport = pkg "sha256-BUszycMJ4VDcifwDGy3I9yS4tn636Eh8tuReqalMp5I=" "compressed_depth_image_transport";
  compressed_image_transport = pkg "sha256-7f6nH9gqkIgAMMrUs7hGNsfHbbs1CbbMidmvsOKtOD4=" "compressed_image_transport";
  image_transport_plugins = pkg "sha256-NFeN64pix7JCZcQ5R3tfgX3mowXoLfjhkTeA1aD+Iic=" "image_transport_plugins";
  theora_image_transport = pkg "sha256-fD5aZUy943J2wwYpXII3bh8Mz/71K3Xr9Dmb81td8c4=" "theora_image_transport";
}
