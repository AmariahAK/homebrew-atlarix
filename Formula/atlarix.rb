# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal: any model, the Atlarix app's sessions and settings"
  homepage "https://atlarix.dev/cli"
  version "15.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "e24423a561aa9cbd212df8efe2bc86447f5a213d25681f946396c7cdddce805a"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "55d6b47f1ccf2579c375e51acdefec947eef31fdd8dda86ee32b24a314eb0cc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "561086df813fb863d8b330686a9c7c5e6cae735e266934bfc14de67619b2f466"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.0.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "a784c60a1a0c71c0df687620bac4d202d68cd749c3970c54e3c5c6789c4055cc"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
