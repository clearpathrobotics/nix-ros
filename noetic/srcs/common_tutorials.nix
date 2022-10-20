{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "common_tutorials";
    rev = "b3a86ff8a60efd678f942deab47efcadd52a5336";
    hash = "sha256-CAiEEqWj7LpeQ4hZaairAV5lEKx/Qf5xbQP1v35T3C4=";
    name = "ros-common_tutorials-b3a86ff8a60efd678f942deab47efcadd52a5336";
  });
in
{
  actionlib_tutorials = pkg "sha256-N81Xjwkt1F73f+gKOZaCa28KE065Q9kFZM7AdY/597A=" "actionlib_tutorials";
  common_tutorials = pkg "sha256-EGtOI7YlE5OYkierPInUtwz9XeuxNzbI8d+SVJumA4k=" "common_tutorials";
  nodelet_tutorial_math = pkg "sha256-cBjW3YPcYJlrCX+fwR8p/6OIGRM7vl/Va5lQEBlQ5Qg=" "nodelet_tutorial_math";
  pluginlib_tutorials = pkg "sha256-wA7L3gANhzeLnJtHF/4hbASwjZCqS7TM0q7yGPVW6kc=" "pluginlib_tutorials";
  turtle_actionlib = pkg "sha256-6hC8H1Ulk1quLoBloDa1cY87X6j+z4hCwRQkrN8xxjk=" "turtle_actionlib";
}
