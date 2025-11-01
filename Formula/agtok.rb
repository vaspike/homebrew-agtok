class Agtok < Formula
  desc "AI Agent Token Control (TUI + CLI)"
  homepage "https://github.com/vaspike/agtok"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/vaspike/agtok/releases/download/0.1.1/agtok-v0.1.1-darwin-amd64.tar.gz"
      sha256 "9ba794c830571373ab8c23c9ef4e1cf51e94d615b01890310ec95033108f8c1e"
    end
    on_arm do
      url "https://github.com/vaspike/agtok/releases/download/0.1.1/agtok-v0.1.1-darwin-arm64.tar.gz"
      sha256 "03114271c847ef5edc9aa77d0d6316b3c3cab1ca7473000e268019a2a7e48345"
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
