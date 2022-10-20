{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "sainsmart_relay_usb";
    rev = "8d5e0933bc363f8cbbe739800031f926e705df0a";
    hash = "sha256-rurnVtNgcIpuJZgNWBMda+RAgLqn1QEa5r6CfriW22k=";
    name = "DataspeedInc-sainsmart_relay_usb-8d5e0933bc363f8cbbe739800031f926e705df0a";
  });
in
{
  sainsmart_relay_usb = pkg "sha256-rurnVtNgcIpuJZgNWBMda+RAgLqn1QEa5r6CfriW22k=" ".";
}
