{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_visard_ros";
    rev = "c69ffaedff23d4a7f22b089ea6c89674ba0aefb4";
    hash = "sha256-L7nHnox+jw7zXzheOZfXM/aC0Doua4XOCe1ART7JifY=";
    name = "roboception-rc_visard_ros-c69ffaedff23d4a7f22b089ea6c89674ba0aefb4";
  });
in
{
  rc_hand_eye_calibration_client = pkg "sha256-mfKOTVfxLnESGCEsXWgL2d4JJ9TV+PpL30lkgnVkUoo=" "rc_hand_eye_calibration_client";
  rc_pick_client = pkg "sha256-IT/qgF5EhsP2cLj1agi2COTH8wE3rcFZwsBnjjvSslc=" "rc_pick_client";
  rc_silhouettematch_client = pkg "sha256-lDhWAjbfCB1IJl/oGhLnLPFDDZWAxqImY8kx/7pc8uU=" "rc_silhouettematch_client";
  rc_tagdetect_client = pkg "sha256-nuFLH/Ei4/7hwdHo6EpxpFLwWknxg2v9ZTaCmxcHxLY=" "rc_tagdetect_client";
  rc_visard = pkg "sha256-2rCwuK2cza1Cl57xLM/Vk8qh35WYfi96TWFDIq/KmaY=" "rc_visard";
  rc_visard_description = pkg "sha256-Fybuhycmp+XU/h1+uh6xNbxGSESbTft9zOMYopYslbk=" "rc_visard_description";
  rc_visard_driver = pkg "sha256-otFx9CAICkEFzevBg7KKsEu0LRjnHrEwLQBrzJnTltI=" "rc_visard_driver";
}
