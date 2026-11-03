# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.12.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.3/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "1b0087aa68aa70e31789323fb3ca39a6cbfa7c331a5a4d71ea037e6a87814d8d"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.3/atlarix-cli-darwin-x64.tar.gz"
      sha256 "508ca6468fdb04c2d2b162442f41cbbdc12fe09433715ca019502bfb1dc3825a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.3/atlarix-cli-linux-arm64.tar.gz"
      sha256 "c4e4b246d6ba93b1fad51ecf3f2c08b66e7abda159d288e9c4dcf3a2024f8910"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.3/atlarix-cli-linux-x64.tar.gz"
      sha256 "a3b3f95a54df33ec21956d0b1f80b65c4f49b755428b3a6a7acfdffc666a4656"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
