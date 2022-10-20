{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rpng";
    repo = "open_vins";
    rev = "b12569c6697d1471da1523f1daec8c4f9e80f7fb";
    hash = "sha256-I3KMAmoX6giScjxIZZWUOLg/x9+ksAY082C6eIt9cJU=";
    name = "rpng-open_vins-b12569c6697d1471da1523f1daec8c4f9e80f7fb";
  });
in
{
  ov_core = pkg "sha256-wke18pi9vP3kkRBTjDnXlzKaWoW4O8e1teiIPPQI9jA=" "ov_core";
  ov_data = pkg "sha256-qatOCCSKNPG5DtM5JL3ym3SMWhk6bnkf5v79RsVRtVA=" "ov_data";
  ov_eval = pkg "sha256-J6zLQiSJdMwUweviRvk4B67MOHTVKMeoaTscTdmq768=" "ov_eval";
  ov_init = pkg "sha256-K+yuwJeVa/3nou3j2hhz1jUPEVfudmmtpdLmZtBOHLs=" "ov_init";
  ov_msckf = pkg "sha256-SxqhdQ3kIGlsilufTndRUY3hKrKYQ1MKztQIZOnmeM8=" "ov_msckf";
}
