# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "13a7818c5b2c59115e1f25dcbc602b5d676f1744ec7e279afb738bc6eed4592f"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "544f9345e63c3f1a373e640e2d033cb4929328bb81c519135e5a8017a83f358c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "5fc1bc15ea64cb30bfb3813ffeeab93ed71fbfd83d90c00a862f8c3285d5a6a8"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "7cafd16c9db4f93fc39436368a14feaa4924b873643c8301e44a49471f67de02"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
