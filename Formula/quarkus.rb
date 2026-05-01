# Generated with JReleaser 1.3.0 at 2026-05-01T07:20:15.638554865Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.35.1/quarkus-cli-3.35.1.zip"
  version "3.35.1"
  sha256 "c46362af49015461d8a7f579fe8927dcd3feadbacd786191e06c6a01c1e0fdd4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.35.1", output
  end
end
