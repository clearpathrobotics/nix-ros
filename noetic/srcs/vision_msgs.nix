{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Kukanani";
    repo = "vision_msgs";
    rev = "0c916da414830456bd7d011af08ba150d1dc5627";
    hash = "sha256-8Tiv90snAIFQmaGAm4irOj0OgvduBdu0pMkZ5NpcnX4=";
    name = "Kukanani-vision_msgs-0c916da414830456bd7d011af08ba150d1dc5627";
  });
in
{
  vision_msgs = pkg "sha256-8Tiv90snAIFQmaGAm4irOj0OgvduBdu0pMkZ5NpcnX4=" ".";
}
