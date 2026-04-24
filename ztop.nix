{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "ztop";
  version = "0.3.0";

  src = pkgs.fetchCrate {
    inherit pname version;
    hash = "sha256-kylk9ifMQu3GZMa/7czDqRUivkc/vpBVAa87AMqxPjw=";
  };

  cargoHash = "sha256-tmyQTU25PCCDobdG9JU4QAhnas4AgPfOqzwUetRTTGM=";

  meta = with pkgs.lib; {
    description = "ZFS dataset I/O monitor";
    homepage = "https://github.com/asomers/ztop";
    license = licenses.bsd2;
    maintainers = [];
    platforms = platforms.linux;
    mainProgram = "ztop";
  };
}
