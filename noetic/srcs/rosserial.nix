{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "rosserial";
    rev = "c169ae2173dcfda7cee567d64beae45198459400";
    hash = "sha256-tpkyx9zgLXnL9WXb6hQlMPJL7P0+T4fEGQImtgM3quM=";
    name = "ros-drivers-rosserial-c169ae2173dcfda7cee567d64beae45198459400";
  });
in
{
  rosserial = pkg "sha256-LCzob4+TfCCfa5P1m/TCOeNcqwJwSq5m1DCm6EzSYGw=" "rosserial";
  rosserial_arduino = pkg "sha256-YV6y/ew+1n2rZpmRfaSNrRI/wlNOPEqtIaJVq9HbomU=" "rosserial_arduino";
  rosserial_chibios = pkg "sha256-PrVyJCSdt5hLQEjvi+M1rUT4/qXG3BTi7CnBMWZBhDE=" "rosserial_chibios";
  rosserial_client = pkg "sha256-3DWDFg1gO1U//m/kz0bkOxc7g4KF1xgoPq3eqgCFGJ4=" "rosserial_client";
  rosserial_embeddedlinux = pkg "sha256-RLmjKBVsJWrF8zZBEF6EhkNqODtvUEaXPe7UNpl4Njc=" "rosserial_embeddedlinux";
  rosserial_mbed = pkg "sha256-/Xs33h+YotEig1FrRZ2EXL/ubcvDjGP5UBVpu6z3Uyk=" "rosserial_mbed";
  rosserial_msgs = pkg "sha256-e5iVBv7fW9309W/qsqh9RBQQ2p3cqUKEBoUYHL0Yja4=" "rosserial_msgs";
  rosserial_python = pkg "sha256-3FMvJABmkRvbcAlTJMYqyNK3ZFYo7+Jh9q9fY/iN1Yw=" "rosserial_python";
  rosserial_server = pkg "sha256-OuPO5RQn89t0POjcVXJI7vFPUCa2ImJf2JrwCfkPzdA=" "rosserial_server";
  rosserial_test = pkg "sha256-y/kLJGviaysUrBg0tsMkgeZeIuYKxYDQ4ene8UMnZBQ=" "rosserial_test";
  rosserial_tivac = pkg "sha256-Fu0x2Bc6qPrTy2m3UdLq3iEOZigcMCPOynR6OWkKq8g=" "rosserial_tivac";
  rosserial_vex_cortex = pkg "sha256-J+ePEd9uGCmuQVsP+GZX+wxlRWQ0/YL7u4Rc9ROg25A=" "rosserial_vex_cortex";
  rosserial_vex_v5 = pkg "sha256-kous9p6w4CM+Vhp1b2nT+IAxJxHOEeNNymPwVB6Egz8=" "rosserial_vex_v5";
  rosserial_windows = pkg "sha256-/FYpLo9pZZ4gBN1WVtgADe2otJULSyan90EWGTabOU0=" "rosserial_windows";
  rosserial_xbee = pkg "sha256-b49wpKy2wPmdxibK0VXAJgvCqKvlGuA/+XHp9WTzGwI=" "rosserial_xbee";
}
