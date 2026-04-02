# Generated with JReleaser 1.3.0 at 2026-04-02T13:19:34.729173909Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.34.2/quarkus-cli-3.34.2.zip"
  version "3.34.2"
  sha256 "1cf3352d75ef8d8c04eb986aa86944bf35d1ed588f1e31251475b9ecaaf9de68"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.34.2", output
  end
end
