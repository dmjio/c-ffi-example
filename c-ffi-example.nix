{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "c-ffi-example";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  executableHaskellDepends = [ base ];
  homepage = "https://github.dom/dmjio/c-ffi-example";
  description = "C FFI Example w/ hsc2hs";
  license = stdenv.lib.licenses.bsd3;
}
