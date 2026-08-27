class Graphview < Formula
  desc "Web-based Neo4j graph viewer with WebGL rendering and level-of-detail"
  homepage "https://github.com/pmuston/homebrew-graphview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.1/graphview-v0.1.1-darwin-arm64.tar.gz"
      sha256 "c3ab59a3e9531dea46d6393bdfcb0c5430488628f9b8f71890aa41bec3379087"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.1/graphview-v0.1.1-darwin-amd64.tar.gz"
      sha256 "786d8e1fa204f98e34627b165b581cfea53904dcb5c61a53470378aa3da3959d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.1/graphview-v0.1.1-linux-arm64.tar.gz"
      sha256 "5c95dceac43b64e6923684e78ccbc288e5684e65fed8e3951793b0cd4bcdd888"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.1/graphview-v0.1.1-linux-amd64.tar.gz"
      sha256 "63048664da7cbfa01e399384d7738d78727a0c20beb2326a6d7394bf0ffcd354"
    end
  end

  def install
    bin.install "graphview"
    man1.install "graphview.1"
  end

  test do
    assert_match "graphview v", shell_output("#{bin}/graphview version")
  end
end
