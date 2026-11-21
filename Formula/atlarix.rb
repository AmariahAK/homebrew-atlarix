# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.19.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.2/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "4af9eb4cc0b0e26d93a35b3db6741f66d7bde706917b07642ab268a40510e615"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.2/atlarix-cli-darwin-x64.tar.gz"
      sha256 "3049f7396f0f3117201a4a8bc5bccce2a478a662489ec2db618aa551977dd6d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.2/atlarix-cli-linux-arm64.tar.gz"
      sha256 "b303105ee15bd4115c58176673a17763173287369d84ffbd55ea2def10986484"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.2/atlarix-cli-linux-x64.tar.gz"
      sha256 "0e68584c888a7b60ac4ff018efba52e6ee7ae739bfa2e6fa86145759b0fb16ba"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
