{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "dataspeed_pds";
    rev = "5004d4d8a9cd17891075819aa447f3efbb9cc5a2";
    hash = "sha256-YjpY1atbIeQFZUyfMwlV/k6hxrZXpDwllx/TgHwxNEI=";
    name = "DataspeedInc-dataspeed_pds-5004d4d8a9cd17891075819aa447f3efbb9cc5a2";
  });
in
{
  dataspeed_pds = pkg "sha256-XOk61kLYuHHf1FM9ziU/6qigUSLORr+O3OdcjMIADfw=" "dataspeed_pds";
  dataspeed_pds_can = pkg "sha256-32FxGBWjrNSrWhFkPQ+nHTkmiDuYbUOX6FGTCgXZpaI=" "dataspeed_pds_can";
  dataspeed_pds_lcm = pkg "sha256-IO1FH0OG1pQ1ndDS5NCrXy6c0u8UPHZqvUTtEbT/aAA=" "dataspeed_pds_lcm";
  dataspeed_pds_msgs = pkg "sha256-T6S2l2IuCi7rEupPJ3JZaLAqiNvD6+PRTUm+DOY3pjc=" "dataspeed_pds_msgs";
  dataspeed_pds_rqt = pkg "sha256-9J0rmj2Ilzm9sDZE3BRuvft3ZFzdtmO303XBMLePAHs=" "dataspeed_pds_rqt";
  dataspeed_pds_scripts = pkg "sha256-sDXfYOFnZaf7x/Re8ebwXEdzkfM0kX9+olQrlNwFqMY=" "dataspeed_pds_scripts";
}
