{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jackal";
    repo = "jackal";
    rev = "96578277a93d977895f916b8362cef0f0b326ca6";
    hash = "sha256-zIftIfiVNsdm4Jrx0kqHnNDUM2UkeVTitjn83IHI97w=";
    name = "jackal-jackal-96578277a93d977895f916b8362cef0f0b326ca6";
  });
in
{
  jackal_control = pkg "sha256-1Ky8jlsGtWl1Ra68XLPP2EkkUbKuqpLgvAb0GDYme70=" "jackal_control";
  jackal_description = pkg "sha256-8CHauvA1nGT3chfq4K1tGHIGGPF1iQzqH4613g4ULzQ=" "jackal_description";
  jackal_msgs = pkg "sha256-oernskBrWcNc3hZgi+nRlA4lvYEQJiI77XTreMNRxFE=" "jackal_msgs";
  jackal_navigation = pkg "sha256-aVFQhLjNc4WAd0Cav/JKmLhbc/FLLLIUJJD204G67rY=" "jackal_navigation";
  jackal_tutorials = pkg "sha256-mP6A4espRJt3AH5e9CqjOinisROsSSzR/Z1jOd8xaxg=" "jackal_tutorials";
}
