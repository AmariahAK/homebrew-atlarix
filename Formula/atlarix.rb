# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.13.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.13.3/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "107da0680d214a8f592993a336715ff5cc985812d929f84960de9a39682a87b8"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.13.3/atlarix-cli-darwin-x64.tar.gz"
      sha256 "e5aa121b205e1e63117f843767c59200aeb4ac05538774b5dd25f7859874a676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.13.3/atlarix-cli-linux-arm64.tar.gz"
      sha256 "644d66ac81fe855f693e9772d94845b9cba2b268d49c5f4b04f08789054c2663"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.13.3/atlarix-cli-linux-x64.tar.gz"
      sha256 "35aa451342f3fa995ef00991ee6a79223da138d759dc004a5234a8e70af8acfb"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
