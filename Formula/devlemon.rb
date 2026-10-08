class Devlemon < Formula
  desc "The intelligent, context-aware disk cleanup tool built for developers and the AI era"
  homepage "https://github.com/iiwish/devlemon"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-arm64.tar.gz"
      sha256 "3038d3e1ab8b78144162356ff50dd78e120ec4be71e996e6d0710da2e77e3271"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-amd64.tar.gz"
      sha256 "fff58e166ab7efcb7c9a566b3d11720dc0a570f53a4b9c0ab5a86d4f3ca16789"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-arm64.tar.gz"
      sha256 "b7bd84d467504ac1bae022b3db556e81d20ca162fb430d3d1ee759e3932f33e1"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-amd64.tar.gz"
      sha256 "2b833afde58f758d6043c73acdd19e0dea84c93fd2939d359184fb92898a5963"
    end
  end

  def install
    bin.install "devlemon"
    bin.install_symlink "devlemon" => "dl"
  end

  test do
    system "#{bin}/devlemon", "version"
  end
end
