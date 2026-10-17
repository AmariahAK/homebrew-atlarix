# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.8.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "15dc36bbd1503dcb9c96b95c9dd2b4e4990f287a496533ec152f08ede842d99a"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "d26c80d472f21ce628382e2c307d9806b9e691d0a5aae73e26e496f57eea4c3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "dc81ebda2f638d92cf07e6147388d1849f9b4c6d5429d55a4072b4b2a7bb14ee"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "95cbd3d961d1c9fce49dd171e973f318750082eaca57ab6907bfc404fd4c1389"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
