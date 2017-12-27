{ stdenv, fetchFromGitHub, gcc, cmake, python }:

stdenv.mkDerivation rec {
  name = "wabt";

  src = fetchFromGitHub {
    sha256 = "1r10sd8qa72rzdghjswjn3p3yx18g1sa88baj2892wpazz3k62rs";
    rev = "f835db8cfb418bb19dd61a10dbe49e1131b664bc";
    repo = "wabt";
    owner = "WebAssembly";
  };

  buildInputs = [ gcc cmake python ];

  cmakeFlags = [ "-DBUILD_TESTS=OFF" ];
}
