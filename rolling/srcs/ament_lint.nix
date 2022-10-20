{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "ament_lint";
    rev = "bbdaa17224f3b8dfece53662b65d7d18b7404b6a";
    hash = "sha256-8VjV9JG07PrqCSFKFOs5JV85jjs3Cl6MxIYW54TkahQ=";
    name = "ament-ament_lint-bbdaa17224f3b8dfece53662b65d7d18b7404b6a";
  });
in
{
  ament_clang_format = pkg "sha256-1ETvWHzf/6eEAU7B0/B5o9nqHbyctflQFYDnlnZU+L0=" "ament_clang_format";
  ament_clang_tidy = pkg "sha256-cYAf4FBgdUByA8nuR9rLfWcix3iCCC7VHPT90OYBwz8=" "ament_clang_tidy";
  ament_cmake_clang_format = pkg "sha256-32fFU/UCEIgcpjPkRC+tGPUw7C7h1NHcOLfct5n8peI=" "ament_cmake_clang_format";
  ament_cmake_clang_tidy = pkg "sha256-PpxXw4cMhNta0Ft9WGXvvovtZ1FC9YLlSuRuXzpAg1U=" "ament_cmake_clang_tidy";
  ament_cmake_copyright = pkg "sha256-pNkgUBJ3NBg+sFG6TVH7CDao8YTwP4nKUSMby+wZmok=" "ament_cmake_copyright";
  ament_cmake_cppcheck = pkg "sha256-3Llnl7qg+TySznjCaFXl9/boJ/uGrq5XyJnF/FC7HA4=" "ament_cmake_cppcheck";
  ament_cmake_cpplint = pkg "sha256-Sg4UunMWOdk5/FGZijXCSJjnr0R4yGDFGH4BgqWCiAU=" "ament_cmake_cpplint";
  ament_cmake_flake8 = pkg "sha256-9UPg2uM3XBKUO/DR2N7OWvfz7EV/ILNg27tfPKJymws=" "ament_cmake_flake8";
  ament_cmake_lint_cmake = pkg "sha256-x+WGq3Y3M6bAhc/E36BchTJe+GORAbYiEfHayWL+lZE=" "ament_cmake_lint_cmake";
  ament_cmake_mypy = pkg "sha256-kLTzXiFvy0RdkZn/n8He31wWUUHhUZZ39s3+uh5PER0=" "ament_cmake_mypy";
  ament_cmake_pclint = pkg "sha256-rwzi3l3+/moBy38PtROA88W8cxk543PTUISbdpdT0Ng=" "ament_cmake_pclint";
  ament_cmake_pep257 = pkg "sha256-QUF4D0P76n7d2dsb0h/Ogp8fvG0jCBVT2ZQ9E6K20YY=" "ament_cmake_pep257";
  ament_cmake_pycodestyle = pkg "sha256-b5CdQp6dbCarOuNGckAnN+/s1Nqv4xcTcrXv4e7WUis=" "ament_cmake_pycodestyle";
  ament_cmake_pyflakes = pkg "sha256-9LZmZE2JHfrx0XMkCyC/NlfhraVt1wufe+zhWXCDRDM=" "ament_cmake_pyflakes";
  ament_cmake_uncrustify = pkg "sha256-4I97bSeRM+U2A6YCy8LwXrWKnygKISb6QGDAnVjgKVs=" "ament_cmake_uncrustify";
  ament_cmake_xmllint = pkg "sha256-wIc2dkUFRRd9WLow+Tba2sW+6ObMi5JAA67nZun5f2s=" "ament_cmake_xmllint";
  ament_copyright = pkg "sha256-wEHVuQjZfQipR7Sp+ekSKJnkujQnWMFiU4EyB+eEVP0=" "ament_copyright";
  ament_cppcheck = pkg "sha256-ieAZn045dg3+o5NsNixzDW1UniLIIK53GnnNyzoHZvM=" "ament_cppcheck";
  ament_cpplint = pkg "sha256-vGcJQrLD6q3PtUrmqzUqbxeEiSyUndTQJH5H79XXebI=" "ament_cpplint";
  ament_flake8 = pkg "sha256-ELl8a4v6rqRcbvQ5tD4dvK0FPyrT2qk/6YIkNeGPwJ8=" "ament_flake8";
  ament_lint = pkg "sha256-M1dKvWyQ0wIeWA7bdNoLCJZKy08cxe/WBjeDGijb8Ic=" "ament_lint";
  ament_lint_auto = pkg "sha256-6Szhqn1rajPvtX73+TtjjjPaf3ON4YZ82AFGRFtZWJ8=" "ament_lint_auto";
  ament_lint_cmake = pkg "sha256-0IOPVV917xfxe4Pg6uJsA3UOEtUGcMsq8DIgiq6mpec=" "ament_lint_cmake";
  ament_lint_common = pkg "sha256-BciATA3VADUdmQJ171lwXWx9KsGHFT53K+kKBhn/bnE=" "ament_lint_common";
  ament_mypy = pkg "sha256-6KG7iYHgS+BfLDEewPWEJtjd4iVXd+faIXu1H2kiQ7w=" "ament_mypy";
  ament_pclint = pkg "sha256-Ry7w3yoN8/BtTKSTz4RPw9gMyZMgddIABYIQ55OtBJ0=" "ament_pclint";
  ament_pep257 = pkg "sha256-0COZHmwUPeifhswr5Ckf2OO4ZVttx7cFGfjS84pW/0w=" "ament_pep257";
  ament_pycodestyle = pkg "sha256-e/cFjoRtSY5oyUDoEcoKpGKZbWPL6dirzBZEDLw3PIQ=" "ament_pycodestyle";
  ament_pyflakes = pkg "sha256-JUw42VkIQuW0Vic/tVlv+7i0ID/VkZcAsqdGBO1brUc=" "ament_pyflakes";
  ament_uncrustify = pkg "sha256-Saoz9+u73OHSC4daIuXV7DPjkrHnGh1BwB6xAnnwW/4=" "ament_uncrustify";
  ament_xmllint = pkg "sha256-5/erCKB5sG67/q0fKzxNQbMbXy7ra8IxztU3d2oDetw=" "ament_xmllint";
}
