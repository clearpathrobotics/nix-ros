{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "gc_spl";
    rev = "ec057ada1d42cffbfdbbe63ac82b4de08e452bac";
    hash = "sha256-w/tcR9Ig4izOkB1l6bAfiNGArF55GJeheCaLr2g8zKE=";
    name = "ros-sports-gc_spl-ec057ada1d42cffbfdbbe63ac82b4de08e452bac";
  });
in
{
  gc_spl_2022 = pkg "sha256-Uy+4opcd3FM+qUn2qdy3wMyjl7I8TPw4gT3gfVmQ7JQ=" "gc_spl_2022";
  rcgcd_spl_14 = pkg "sha256-7tC3rNdCVqicAQlZa0ZGgvZzWmHJUiqp/fuorBKtIGc=" "rcgcd_spl_14";
  rcgcd_spl_14_conversion = pkg "sha256-ofPNtyAdCLgHocDftNu/4aE6Bk5j+kYdth8shL27G3g=" "rcgcd_spl_14_conversion";
  rcgcrd_spl_4 = pkg "sha256-SiPjT9UiwdFMpXe7vyHnE/IbC+YgzIuBEDNFAuG0wAs=" "rcgcrd_spl_4";
  rcgcrd_spl_4_conversion = pkg "sha256-6aBzUttp4BZ1m9EquRQdEHqzTOWrIc8vRJqHZ2QFJf4=" "rcgcrd_spl_4_conversion";
}
