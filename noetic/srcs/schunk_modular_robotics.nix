{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "schunk_modular_robotics";
    rev = "b2d73bdd333eceda0e91b4f8d4e8881433dc243a";
    hash = "sha256-KyfbyxTd+zK5ImTu/1VT2jwMK5jtL+jHoptE7M9P2ss=";
    name = "ipa320-schunk_modular_robotics-b2d73bdd333eceda0e91b4f8d4e8881433dc243a";
  });
in
{
  schunk_description = pkg "sha256-MPm9rEUUfG8qh+5ypZoBVfwFsPxdjq1cCcga2Pvc9Ds=" "schunk_description";
  schunk_libm5api = pkg "sha256-eQ+DYSbflkN+8LXihVVjqF9boMNqKhB8p1T69P5R7Do=" "schunk_libm5api";
  schunk_modular_robotics = pkg "sha256-Z+6LdOA56MdhIkPLmMNsNbeiQ3LYvICqOiwFj7fQdn4=" "schunk_modular_robotics";
  schunk_powercube_chain = pkg "sha256-Bqgv2EXXzyTj4bgp8Pyf6AeyfOJABpGhtH/ln7pomEg=" "schunk_powercube_chain";
  schunk_sdh = pkg "sha256-8nQDbkqJKaA7ggj7AOw/fUX/uxHwbwve34BoP5yyZdc=" "schunk_sdh";
  schunk_simulated_tactile_sensors = pkg "sha256-P3bjg82EBGfPHnC31BV6ZxuoS42QWa2Fo10SNMCOjAE=" "schunk_simulated_tactile_sensors";
}
