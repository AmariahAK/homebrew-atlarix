# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.16.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.16.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "ff8c061170b84bba257cd08dc39fd92cb279e482d8daa7372898556db889597e"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.16.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "96645fb5a76348480c4dda299491d3d1a019e9eaf48e2e43d4fd99374bc26e3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.16.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "b3c78506bbd8182984579c9133d084b2a2368cb787b700e1fea1f2a4b0a39ac8"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.16.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "8dbae70e0b28aa24dec6cab1fd107d9d4f81b63c32dd8722af5fa8cb05b48e02"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
