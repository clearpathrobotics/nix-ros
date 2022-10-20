{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dfki-ric";
    repo = "mir_robot";
    rev = "7d9c72942d512b191f2b326ca89c066710db4e34";
    hash = "sha256-wYGskumMNx1s3W4vsEbt+bk6jU9uuW7broCcjqI/Pu8=";
    name = "dfki-ric-mir_robot-7d9c72942d512b191f2b326ca89c066710db4e34";
  });
in
{
  mir_actions = pkg "sha256-THgJFaIKeT9m7sQJ8O5UsZeICme8PL24e/M30cwhqMo=" "mir_actions";
  mir_description = pkg "sha256-Ku5zuHS9W21C6Wgsi8tQirELHhYThn4vyldr97S6oco=" "mir_description";
  mir_driver = pkg "sha256-FDI2ebkgg/uuegUUY0habWcQBukAi3hnIM1HglMsa7s=" "mir_driver";
  mir_dwb_critics = pkg "sha256-hfANy+1v+l0iezid9ozC2seewevaueqFfLa0eehSIbQ=" "mir_dwb_critics";
  mir_gazebo = pkg "sha256-HlmAU2b7IgEFlaBkawHQPaM74goPq4Dd8Px43rT8SXU=" "mir_gazebo";
  mir_msgs = pkg "sha256-s2jzOyotTNcwLs44Tl8z2UGN+aD54wqF+mcw5goqtWo=" "mir_msgs";
  mir_navigation = pkg "sha256-UEp0JSRgRD04W7gZNBGJAc14bv5MfjkmXOPOcoSHPGE=" "mir_navigation";
  mir_robot = pkg "sha256-K+X6KP21ezwj01bHCov/CKg80aENMFCCDeGfsvlqeCg=" "mir_robot";
  sdc21x0 = pkg "sha256-rP9FISWY1Qi71SgPrZP+IJWlRfGmZ367qAwx8nAMGzs=" "sdc21x0";
}
