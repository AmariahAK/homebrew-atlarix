# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.12.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.2/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "d4d715490306c32faf383691eddb44efa8563be25d3e0f6a2ee7dfb265c535fe"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.2/atlarix-cli-darwin-x64.tar.gz"
      sha256 "b9356e4d79b1ad511225e27e2f24cc08c951780d1b2dcab3d41ca40ad9e24bdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.2/atlarix-cli-linux-arm64.tar.gz"
      sha256 "61a69eca43d1b9d39dd23e1d0890fbbfa1f7499c8a435309e95f2e3f64cd32a0"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.2/atlarix-cli-linux-x64.tar.gz"
      sha256 "180fbb0440b4aae77dffd5ee83100602e05aefac764b9899e6abb6a42a6a1eed"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
