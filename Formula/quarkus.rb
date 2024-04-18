# Generated with JReleaser 1.3.0 at 2024-04-18T13:49:06.078168248Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.9.4/quarkus-cli-3.9.4.zip"
  version "3.9.4"
  sha256 "2c4ed986cde36ef638bcc15f2bacfdf098bb12571755f7b76ac21f7630fb7c33"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.9.4", output
  end
end
