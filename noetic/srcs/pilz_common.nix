{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PilzDE";
    repo = "pilz_common";
    rev = "c4d6f2a413179ac5ca529da0e95887d58e9678f0";
    hash = "sha256-pt+zIthbBIimTEri8TGMswqBPNX27HLDMRnQjozgl/8=";
    name = "PilzDE-pilz_common-c4d6f2a413179ac5ca529da0e95887d58e9678f0";
  });
in
{
  pilz_industrial_motion_testutils = pkg "sha256-kx8widZ+ZzSzIDvplg2laydlEGX1vnDQyK1lxB6chaQ=" "pilz_industrial_motion_testutils";
  pilz_msgs = pkg "sha256-C3TMMYDGiTAHmaGE9pO+7i7VKn6sK0U2eSFzPxwj9cQ=" "pilz_msgs";
  pilz_testutils = pkg "sha256-n/V0VcMHX7N6004EE4VUOnTmT48nuMC6WB19E1kD5nw=" "pilz_testutils";
  pilz_utils = pkg "sha256-RFuokzsDPkdEiNRUTi/YFeWhq6c1v3sn+DfoOpFVxJ8=" "pilz_utils";
}
