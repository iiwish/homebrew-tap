class Devlemon < Formula
  desc "The intelligent, context-aware disk cleanup tool built for developers and the AI era"
  homepage "https://github.com/iiwish/devlemon"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-arm64.tar.gz"
      sha256 "7e018dbb1c0e8fa8d1d73e56b528423f7ed720d67594786af742ad95daf098bd"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-amd64.tar.gz"
      sha256 "3101518a0830706df64711b3d82b7bb79ad3c45796bc10878b8606a856db0a77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-arm64.tar.gz"
      sha256 "1e6fd6538265fd3ce8d85fb0c5f3e0876cd5031f6d580df30171031fdeb71652"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-amd64.tar.gz"
      sha256 "4fd837d7c1956889bcd6b2d320ec551d815fc19363b1aa11d9eb4971911eb467"
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
