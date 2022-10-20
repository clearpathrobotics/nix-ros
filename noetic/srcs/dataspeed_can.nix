{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "dataspeedinc";
    repo = "dataspeed_can";
    rev = "8db330ec02f150587225343aee6c4569b5202e02";
    hash = "sha256-tOuJk58Oc6ntDQ9WsigXtw5/rQbNPxY+GalifgIy/KA=";
    name = "dataspeedinc-dataspeed_can-8db330ec02f150587225343aee6c4569b5202e02";
  });
in
{
  dataspeed_can = pkg "sha256-GvbRVesJOGrwL3+VbE61M7y4gwE8DBFTqb59LzdwXxA=" "dataspeed_can";
  dataspeed_can_msg_filters = pkg "sha256-ICPML442r6xLfVXCkHbtWQGBE3R+AFoblo0W9AoIKNc=" "dataspeed_can_msg_filters";
  dataspeed_can_tools = pkg "sha256-jV9I06FAip4ro+A5Clp3HaznUCAJR3GEyAVolPulD+A=" "dataspeed_can_tools";
  dataspeed_can_usb = pkg "sha256-qDYokEGVgyvE1BoMRu80KFyjkZniJCpOysGOzLnaosk=" "dataspeed_can_usb";
}
