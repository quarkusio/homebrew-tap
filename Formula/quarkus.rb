# Generated with JReleaser 1.3.0 at 2025-10-09T16:19:52.883141486Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.28.3/quarkus-cli-3.28.3.zip"
  version "3.28.3"
  sha256 "68241a1bd8734915e034514c5e82c05d4b1b1fb2d08cbbe1c65b2050c116c613"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.28.3", output
  end
end
