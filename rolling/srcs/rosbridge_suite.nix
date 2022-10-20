{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RobotWebTools";
    repo = "rosbridge_suite";
    rev = "df385330dd60d99ff2875eb6c5ac0beda6290627";
    hash = "sha256-sRqKrkorZG2WzBxrcUnORfeypg+8x6GXZAzBdef8ldk=";
    name = "RobotWebTools-rosbridge_suite-df385330dd60d99ff2875eb6c5ac0beda6290627";
  });
in
{
  rosapi = pkg "sha256-HNTLatMPz8Mn/Rn5UKm83HLn8A+lseRLYprkIVYt7pg=" "rosapi";
  rosapi_msgs = pkg "sha256-eU3SYyqAIHjyKEVon3+wvKZDOlAbajLMaQadVmVtea8=" "rosapi_msgs";
  rosbridge_library = pkg "sha256-MOFyJbTAWCdZRfTPkUjqVRgIfzHa/FDnGicjPMHriBI=" "rosbridge_library";
  rosbridge_msgs = pkg "sha256-0c/OkcywET0h61m9CzcZ+RQQNaG59MpFZUSbpV2ZRxk=" "rosbridge_msgs";
  rosbridge_server = pkg "sha256-P0xfx7N4zWHoPe3Yd5JmuI1y0uOJNbY8FX3ff9qwBCM=" "rosbridge_server";
  rosbridge_suite = pkg "sha256-aVe2UYUmGhekRksHhoJlCVwTm5fA4gQwPjfyikQQgbU=" "rosbridge_suite";
  rosbridge_test_msgs = pkg "sha256-jzrxO2h5h86tvbu6QZiqH/sKTsYs6Lgh4qEZceMns5E=" "rosbridge_test_msgs";
}
