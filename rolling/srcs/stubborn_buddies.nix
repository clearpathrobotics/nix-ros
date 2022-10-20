{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "stubborn_buddies";
    rev = "a18c5e2cbfe707589aef90e948285cbd4c963b8c";
    hash = "sha256-lHg+CEzKPSDGXtDKnkGK59M4GS57ynqSbm3pdPjUAzw=";
    name = "open-rmf-stubborn_buddies-a18c5e2cbfe707589aef90e948285cbd4c963b8c";
  });
in
{
  stubborn_buddies = pkg "sha256-gR08XIszXNwbw343ie74jForyMoXvqCbhynmzAN+Y/w=" "stubborn_buddies";
  stubborn_buddies_msgs = pkg "sha256-ca+tBYzurY7xkoSry24RR8HaTLuuHAEKuBOxT57QSXY=" "stubborn_buddies_msgs";
}
