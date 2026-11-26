# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.20.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.20.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "fde31f14b45a4900ca4c473d2e9cc219e42b38000312389f60bc0d16e7ce3009"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.20.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "548e4de5a5c0bfc57fc5959ec22ce96630feb8beb4c99d61415fde6e8898dad1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.20.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "782e1a98b31f4f0f477ab4c8c9f377382e4f170d1997e3a8c6800493ae502e00"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.20.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "8ace055376fd60306ae976ee7e78a548cd3774f003f8bfc22f6d1776a524ded0"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
