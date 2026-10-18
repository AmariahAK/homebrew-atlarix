# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.9.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.2/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "3cce1363732bf71474e4f6e6a6735841263dcf3564465c5160896256a0677fb9"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.2/atlarix-cli-darwin-x64.tar.gz"
      sha256 "7d3c7b61d2290055693f5c6106d420a520b85ce77b4b0fa0862c19c50a6bfa2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.2/atlarix-cli-linux-arm64.tar.gz"
      sha256 "33f37ca9af50c0047604f801e96a8b288edca81d89eb6a62da690adbf274246c"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.2/atlarix-cli-linux-x64.tar.gz"
      sha256 "3efbbbe04fca3ebbfd153d7fbee1acdefbe63c3bbeede9be971364e133408787"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
