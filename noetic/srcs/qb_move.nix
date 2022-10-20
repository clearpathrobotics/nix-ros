{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "qbrobotics";
    repo = "qbmove-ros";
    rev = "1a2e60a0b529d60be952d016d4261bbc255f0716";
    hash = "sha256-TGO01t7SYnIpNU6cTQN5sJufhGlnGNNcujh4MTYOiv8=";
    name = "qbrobotics-qbmove-ros-1a2e60a0b529d60be952d016d4261bbc255f0716";
  });
in
{
  qb_move = pkg "sha256-dGKbGe+6sP53f9cgvkeBUn+J5ak6SrZ3sL9rUNzNJ3Q=" "qb_move";
  qb_move_control = pkg "sha256-4f/JUqULdEZuJq9QcPdGyjaIlcxupKDSHjItEi7j7QY=" "qb_move_control";
  qb_move_description = pkg "sha256-ClaLhQERFUsIqv5PdxFc75aBPWKKN7uXOHfnXsRPSxw=" "qb_move_description";
  qb_move_gazebo = pkg "sha256-fKfScHAxt0w91CNiMWiGEFVNI8GRxD36E6gqwWrsbTo=" "qb_move_gazebo";
  qb_move_hardware_interface = pkg "sha256-7M6JJEOpQBYrAowGooTpRmwd1d6x2dLLaXVtyYxZh2c=" "qb_move_hardware_interface";
}
