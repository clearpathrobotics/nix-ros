{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_hand";
    rev = "342abe0ba9f9a243b38e0f86fb0e7575df7e6be0";
    hash = "sha256-rFOCNcu4CdMw1Tk6LUZ8ICHU0VC0jh36i9uiGomBzVQ=";
    name = "ipa320-cob_hand-342abe0ba9f9a243b38e0f86fb0e7575df7e6be0";
  });
in
{
  cob_hand = pkg "sha256-hOzmRiVwc5D5CP7kUi6TOddMUplEr/wJxOGjC0MgLCI=" "cob_hand";
  cob_hand_bridge = pkg "sha256-gCaXB3IC8VgxU6/cauVOcwMx1hWiY2L2+RXAfwcwWLE=" "cob_hand_bridge";
}
