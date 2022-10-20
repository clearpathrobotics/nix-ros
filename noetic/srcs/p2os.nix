{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "allenh1";
    repo = "p2os";
    rev = "f5ef44a0d0324a5177f29928b84593910d5d14ec";
    hash = "sha256-/SWOvcci0Sjs5RdT/pZqvIHNK9pmpdSaoEM9RGcCYfI=";
    name = "allenh1-p2os-f5ef44a0d0324a5177f29928b84593910d5d14ec";
  });
in
{
  p2os_doc = pkg "sha256-bR5QihkZavtpmdUG7kAVKGf/AS1fO7mSMRrwHNXIO1k=" "p2os_doc";
  p2os_driver = pkg "sha256-ApFyATWsSGEQNLfmlaJiDdAPjvqQtw6Vt2PdOcyRC+s=" "p2os_driver";
  p2os_launch = pkg "sha256-j4OeKtlaFXtmwGMDUNgsuvQNkWRW80YKMewzJDPJxGs=" "p2os_launch";
  p2os_msgs = pkg "sha256-wpaMIZvcSwWlUh1fUNGLiCR/017AiCJ3t3pNrhjnqS0=" "p2os_msgs";
  p2os_teleop = pkg "sha256-KHi5WjejxtngLbEqIGARd3QHamazwK1XE/qgSQPozYs=" "p2os_teleop";
  p2os_urdf = pkg "sha256-G1fdIrSYwIvWAiIZZ/j5TuS07qSH/4m+dsxArUGza3E=" "p2os_urdf";
}
