# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.9.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "828a702c6949fc53f00e44f261159fc9f5608da45583b97a2c4c0a377ca8def0"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "a2f2f9027fcca1ed23372b825cec0e4aa04d1587874c93d027866f0f520cf68c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "c8168b0c6a841d3e89b5aa4bee4337abb171fc0cb34bc5b2e0e66d033e0bce8c"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "81409adaa730058c9a9b8439b5e54edf02f21c90e31f6fe42d5e98c3fa065b37"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
