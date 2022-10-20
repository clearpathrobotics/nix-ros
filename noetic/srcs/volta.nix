{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "botsync";
    repo = "volta";
    rev = "6815bce293b5f2b8149484df7c9c7b0fa004adcb";
    hash = "sha256-gT5UMwiTfb4JliocAExjPKgMbmXSztxL4LSt96QUG9o=";
    name = "botsync-volta-6815bce293b5f2b8149484df7c9c7b0fa004adcb";
  });
in
{
  volta_base = pkg "sha256-f2ApjQAJzjhiLkJsCXSRyxuOBG/l50iEUMN1PmaVgyw=" "volta_base";
  volta_control = pkg "sha256-aeRbLAbbFCOPHJtDqEIZaunBwC7E5fZfwPVfQf9zgHk=" "volta_control";
  volta_description = pkg "sha256-Llh4WxmmNdTxJC8KHCBxkiTtKzJ3iSsOqvHzYzCT968=" "volta_description";
  volta_localization = pkg "sha256-wFv9TIYF+zZ4LhPhcKmyJ/Lgar3+hL7vKguGosWW6lQ=" "volta_localization";
  volta_msgs = pkg "sha256-oTH7TNzWgeJeYwx3RRnL/gQoFWbTMVLyFIzZ81oKTtk=" "volta_msgs";
  volta_navigation = pkg "sha256-DmHX/096kGBJE0SPg7t2d0ih1o8tsxnDpZy4YF/nMnQ=" "volta_navigation";
  volta_rules = pkg "sha256-9uenWaSE32Emdo5jaVMXtfOcjC7T172ViJpVwzRQokc=" "volta_rules";
  volta_teleoperator = pkg "sha256-K+lAcBfuB7B/8QUOfF3JKe5MSPRSmfpymPWWG9bn+6s=" "volta_teleoperator";
}
