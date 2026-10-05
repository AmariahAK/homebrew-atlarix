# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "280d60834f65ab67d657c108076cdb4a418ed5a9bbad85ae8c9cd0929d39f0cc"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "d47de2a67ae6967cc8b0a167c93e4eebb7db060d100d46bec39e16efc6edb622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "b85c8ed5b55fd2c4dcacc8dd3d090c8a71a0326a768870985a1e7ca4e337319b"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "bf1abc6af014c3acc1a9246da55389b2c3ff45bb8026ddf9ec5ef7e19be135ab"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
