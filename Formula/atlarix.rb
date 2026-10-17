# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.8.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.2/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "94695cab7a51b3131e09327933c9603eda14494a64f6b2bf354c5396075bb97a"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.2/atlarix-cli-darwin-x64.tar.gz"
      sha256 "44bef16fbf8bc10f4dc85498e8c55159361cc7ad851e4db77e97c6c6bdc1d1de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.2/atlarix-cli-linux-arm64.tar.gz"
      sha256 "db5486856c8e3730f440bda8b867d85ba2788a4d44406e4398fb681335102e9b"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.2/atlarix-cli-linux-x64.tar.gz"
      sha256 "250db3e26d7e10f7f56e6f17cd87991505442a6cfec3aa007e1020459911599c"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
