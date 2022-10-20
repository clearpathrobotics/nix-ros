{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "novatel_gps_driver";
    rev = "a93ac95ad51f4a5f9808736a91d1e6c0307d9157";
    hash = "sha256-rRfFZAygW/fj6Wpdu/9zBzimpIV7s1bDPeoqRdGgI7o=";
    name = "swri-robotics-novatel_gps_driver-a93ac95ad51f4a5f9808736a91d1e6c0307d9157";
  });
in
{
  novatel_gps_driver = pkg "sha256-j1GdN35LIqPclGbPKpOY2wKPFcUP8xXwvNPTLP/cGfE=" "novatel_gps_driver";
  novatel_gps_msgs = pkg "sha256-elfNxlJFo9e8ju38PBf3lPgK556DR5KyNBIPcvS7VMc=" "novatel_gps_msgs";
}
