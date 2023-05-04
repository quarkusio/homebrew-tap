# Generated with JReleaser 1.3.0 at 2023-05-04T09:44:19.675054+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.0.2.Final/quarkus-cli-3.0.2.Final.zip"
  version "3.0.2.Final"
  sha256 "62eb9695c62613a4650d38952cb635cb67712a126eb4edbde70aafc6f89e8436"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.0.2.Final", output
  end
end
