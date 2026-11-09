# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.15.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.15.2/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "2ee459659ec4842672f3852c6a08df238fd7bcb1b0835432bb0c945963f62a81"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.15.2/atlarix-cli-darwin-x64.tar.gz"
      sha256 "869a4f613a157a21adad1243367c25e520a7d4449b9cdc397dbc64ec6bf5a4e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.15.2/atlarix-cli-linux-arm64.tar.gz"
      sha256 "4bf9ad3fda88f7c3107bed8e727915cb11bb8ed6299671f710d35b07931c0051"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.15.2/atlarix-cli-linux-x64.tar.gz"
      sha256 "9b7e8b755299d7cb8be05d5bbbe42272eba1a2352a2ad3a307411d226fb5bb39"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
