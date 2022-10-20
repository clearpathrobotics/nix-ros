{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RobotWebTools";
    repo = "rosbridge_suite";
    rev = "7f200fb2bfe3e2459771b4db9e15f1b327e76924";
    hash = "sha256-iG3jDMTiKA5qbAM5bqJSof5gVF5NrQFyAnrabj/LdYA=";
    name = "RobotWebTools-rosbridge_suite-7f200fb2bfe3e2459771b4db9e15f1b327e76924";
  });
in
{
  rosapi = pkg "sha256-HNTLatMPz8Mn/Rn5UKm83HLn8A+lseRLYprkIVYt7pg=" "rosapi";
  rosapi_msgs = pkg "sha256-eU3SYyqAIHjyKEVon3+wvKZDOlAbajLMaQadVmVtea8=" "rosapi_msgs";
  rosbridge_library = pkg "sha256-MOFyJbTAWCdZRfTPkUjqVRgIfzHa/FDnGicjPMHriBI=" "rosbridge_library";
  rosbridge_msgs = pkg "sha256-0c/OkcywET0h61m9CzcZ+RQQNaG59MpFZUSbpV2ZRxk=" "rosbridge_msgs";
  rosbridge_server = pkg "sha256-8Rs5KGjxYjU582plLXmc8SbMR0rVbFgwrhj5f+YL+Ho=" "rosbridge_server";
  rosbridge_suite = pkg "sha256-aVe2UYUmGhekRksHhoJlCVwTm5fA4gQwPjfyikQQgbU=" "rosbridge_suite";
  rosbridge_test_msgs = pkg "sha256-jzrxO2h5h86tvbu6QZiqH/sKTsYs6Lgh4qEZceMns5E=" "rosbridge_test_msgs";
}
