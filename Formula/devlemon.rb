class Devlemon < Formula
  desc "The intelligent, context-aware disk cleanup tool built for developers and the AI era"
  homepage "https://github.com/iiwish/devlemon"
  version "0.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-arm64.tar.gz"
      sha256 "120ac7111f0ebd91a81abdb35ed36eeb9cc6d028ac011b33b3d3312293dc2a82"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-amd64.tar.gz"
      sha256 "5a7b28e3c50b4ee6c320eb74320c83f36bc4cb37aca3b4b2f44d8d0bdd5bf152"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-arm64.tar.gz"
      sha256 "dff7ee622fb086eda062993b543a865f787d7310ca2ac8d6cf59006b24c656f2"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-amd64.tar.gz"
      sha256 "964e4003b925e4987cf312cce0451b9f64c6ee24edba1e00244af5d371bfc9f0"
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
