{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "mrpt_navigation";
    rev = "989fe65b1447314ddba3e3ff6518fe1a00d63946";
    hash = "sha256-sp2q/sKiOw5JINyU29fNvSPPndd7plkK3pb0b4kL6Es=";
    name = "mrpt-ros-pkg-mrpt_navigation-989fe65b1447314ddba3e3ff6518fe1a00d63946";
  });
in
{
  mrpt_localization = pkg "sha256-X5zmW49EuttHT5bgMqBiTnRs3S8RHkG0f+zC8PfnMqY=" "mrpt_localization";
  mrpt_msgs_bridge = pkg "sha256-kiUh6kQJYy1536s+t0q8s0Id0hyFyDN9JgeIDtyCFHw=" "mrpt_msgs_bridge";
  mrpt_navigation = pkg "sha256-uiNJN999GkU9rDHDzD2qXEkyOiOiZr0Y4OhEKU/AfPc=" "mrpt_navigation";
  mrpt_tutorials = pkg "sha256-k+pvJwtVm5reTw8HDksZ6hmVQJ5OaTEg7TPcyhTT4Co=" "mrpt_tutorials";
}
