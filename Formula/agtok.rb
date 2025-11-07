class Agtok < Formula
  desc "AI Agent Token Control (TUI + CLI)"
  homepage "https://github.com/vaspike/agtok"
  version "1.0.1"

  on_macos do
    on_intel do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-amd64.tar.gz"
      sha256 "044e36ec937e4933d46d59ff98fc16aaa663b3a1d566539bd0d7133028972c53"
    end
    on_arm do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-arm64.tar.gz"
      sha256 "738801d90a786d76b2af32f5d6048a47048e76ba250bee6b683b71feb8297518"
    end
  end

  head "https://github.com/vaspike/agtok.git", branch: "main"


  def install
    # Prebuilt tarballs contain a single executable named 'agtok'
    bin.install "agtok"
  end

  test do
    output = shell_output("#{bin}/agtok --help")
    assert_match "agtok - AI agent token control", output
  end
end
