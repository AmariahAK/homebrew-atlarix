# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "32e0e4a4c56864ea8533d6ef7f1783c10840c7ab6993814e1027d70df65517d6"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "14f956921c8a589942e08f1015c58a27a2dbfcb5a77d6028a3b5239387d78b20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "635236af0686126ca3b7ef5fb8262001f17995f49ee2b026281ffa112f45ff6d"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "fe255569153188cfe54e82607ae2005354067c7e0b963c5371196edb633a855c"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
