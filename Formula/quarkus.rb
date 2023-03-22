# Generated with JReleaser 1.3.0 at 2023-03-22T16:12:34.73937+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.5.Final/quarkus-cli-2.16.5.Final.zip"
  version "2.16.5.Final"
  sha256 "8ec6ace25d8ecf8354f0f4f5b71d949085ee873a0475cc9b64c0e1aade2f06b7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.5.Final", output
  end
end
