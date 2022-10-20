{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "qbrobotics";
    repo = "qbchain-ros";
    rev = "81471e3978ce0ffb84026a6da9baa0e2ba64f61b";
    hash = "sha256-MN1byD9fODKybA2bOULAR7UcDY/fctok/PYFg/TfQBg=";
    name = "qbrobotics-qbchain-ros-81471e3978ce0ffb84026a6da9baa0e2ba64f61b";
  });
in
{
  qb_chain = pkg "sha256-WS7FhvJNYo8IiNiHGPw5jz5tdc0c5owc1qHeR4/ZVmI=" "qb_chain";
  qb_chain_control = pkg "sha256-vCNKO+7S/a9gKT81xowEckEqyPgieamqUm4iH1MWgvA=" "qb_chain_control";
  qb_chain_controllers = pkg "sha256-PUzsxpE892jH+fc3QWH6CMPHzNsRrPeiHMdOO2dgySU=" "qb_chain_controllers";
  qb_chain_description = pkg "sha256-JKZSDH+dGwsivP0cKcrQUxqORmPyptPCv/LVASO6CIk=" "qb_chain_description";
  qb_chain_msgs = pkg "sha256-1Y3QapH0u4ZNrZBPAsde/xC2XZODqY5IKlYdyA/vrE8=" "qb_chain_msgs";
}
