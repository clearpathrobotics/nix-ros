{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "care-o-bot";
    rev = "a51d952590f38ac6ccbc14f795116d74f416515a";
    hash = "sha256-J5+VtNRS623oGIod1iovB3ecea+Nsfw0bvl7bj7IejY=";
    name = "ipa320-care-o-bot-a51d952590f38ac6ccbc14f795116d74f416515a";
  });
in
{
  care_o_bot = pkg "sha256-G7u+4RVPEaHrlmM0/I13WATTfWFDighUJKn+/cly+nM=" "care_o_bot";
  care_o_bot_desktop = pkg "sha256-Rmhp+AUXq/pMagrPl40D8L81rn7tFu2Gywgs+SG5zus=" "care_o_bot_desktop";
  care_o_bot_robot = pkg "sha256-3UO+jY6//kS+X1CuX32uj7nwRytih+BZuB8ZN12VIDA=" "care_o_bot_robot";
  care_o_bot_simulation = pkg "sha256-taXpVig+0GITKDLnHlQLGMEXkqRdHtLeE/YrqCm5A7k=" "care_o_bot_simulation";
}
