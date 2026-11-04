# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.12.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.4/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "7163c7e781bcd9ffd481a6e5a9793a5195bce55950ba5ffcb3a9abaf7b5f6c4b"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.4/atlarix-cli-darwin-x64.tar.gz"
      sha256 "47323cf5354d58c0df3b065023c77c07ab5f45efd18e2528a76db317d10eb00a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.4/atlarix-cli-linux-arm64.tar.gz"
      sha256 "56f7f4c18b6a5628da6a7f07e599e00e7f5219bf5442e783cdd8954dab9a418a"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.4/atlarix-cli-linux-x64.tar.gz"
      sha256 "c9f724115bdd73bf1242e9ebf2d11b0f223be56ac9ac326af6e7b8ec2fef9f79"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
