# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.1.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "80be4483f2fd11bf45fe703508ae47d201e5e8b84c969f0c6923cfaf399b40be"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.1.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "562ae7b0748814b538e4ab0d515c35d02e02491fd8c6d4c3c6182f22e0d71145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.1.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "d104e1e2eee1da52a35c3e0b945d981055e085ef93a7a3358674a7bfb5bbd5fa"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.1.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "27c36e40e58e4ce5aadd73300e9469ba89a31a2ef2ef00683c1af595d4691eaf"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
