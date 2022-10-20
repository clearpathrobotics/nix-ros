{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcl_interfaces";
    rev = "35b61e2ec5be26dda919ee6c8b1899af5c629277";
    hash = "sha256-pUgZRNk5RRHOX6gibEsSYv/r2pFrjb2ALp8ypyRJMeA=";
    name = "ros2-rcl_interfaces-35b61e2ec5be26dda919ee6c8b1899af5c629277";
  });
in
{
  action_msgs = pkg "sha256-y9zo3GXijYh8Ph3BpEjmIjIVuS1wl/ntWlV4ueLWNrY=" "action_msgs";
  builtin_interfaces = pkg "sha256-joVfMN1p/djr9twbLk2pmL5se0HiRXxV6tfvdJoOP0o=" "builtin_interfaces";
  composition_interfaces = pkg "sha256-ZaQm8aIhN3JVSPF5Zo4PxnGyOVv6yJMrT2PVM+/+xbI=" "composition_interfaces";
  lifecycle_msgs = pkg "sha256-i4PZuC0st03DIkUZYdttKQwnEsBbm6JkWn/z2kDuRUY=" "lifecycle_msgs";
  rcl_interfaces = pkg "sha256-8FplWi5nm1zKuDzWpqn+6CIlgofrn12g9MKjX66qbXw=" "rcl_interfaces";
  rosgraph_msgs = pkg "sha256-Trykqri76qwgc+wiHRXodOno6LuP0IGvuhr/tJ+z3PQ=" "rosgraph_msgs";
  statistics_msgs = pkg "sha256-cBADg0sJq27itEoY/MUbpPxjoo1kwRhxtYo1yCWN8G0=" "statistics_msgs";
  test_msgs = pkg "sha256-IwaV4hm/GwEqM8hkXCGMoJy6lh9Mcij+8hiLUfMGUXs=" "test_msgs";
}
