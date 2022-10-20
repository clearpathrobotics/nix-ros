{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "industrial_core";
    rev = "edcffadd039b413b126eac8eb49b655f4c1cc00b";
    hash = "sha256-LR5lQ8vsIhlu7h8WJvMm/HsZx4m+ABwMPWoAp3NLRLU=";
    name = "ros-industrial-industrial_core-edcffadd039b413b126eac8eb49b655f4c1cc00b";
  });
in
{
  industrial_core = pkg "sha256-ZaZnIom8Fvoem61kUwEJL/xy/b8U8ZAxJoZV6J+zOkE=" "industrial_core";
  industrial_deprecated = pkg "sha256-d1F0ETLuUe19WcayhUlqx7BOyHaQ9K8rhT2itWO6pYk=" "industrial_deprecated";
  industrial_msgs = pkg "sha256-tYfr1AQOZgUBX7+un6HBIe2YqG+SkpI4U0/lkeXZloM=" "industrial_msgs";
  industrial_robot_client = pkg "sha256-LgvtZfdDxAZjIa9OvxJbl+lOHxfAiz5mJiMScB1qf2k=" "industrial_robot_client";
  industrial_robot_simulator = pkg "sha256-oYT+ady9spoNwZ6DmC3djlPcdjo8n/W6uxh/mn0VMeE=" "industrial_robot_simulator";
  industrial_trajectory_filters = pkg "sha256-mYFmwuST9s4knzmD3KiLBzZ+Y6yRtozbXtsDY0NqcSU=" "industrial_trajectory_filters";
  industrial_utils = pkg "sha256-xFWcAajLIgu+PEjw414AY+4VJXsiSKqr6KieVZLBQSk=" "industrial_utils";
  simple_message = pkg "sha256-e3VzIL53EqPr6HAracyGAzAxkhG4qoQDU15xOYAE/64=" "simple_message";
}
