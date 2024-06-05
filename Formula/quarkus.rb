# Generated with JReleaser 1.3.0 at 2024-06-05T14:59:04.776874335Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.11.1/quarkus-cli-3.11.1.zip"
  version "3.11.1"
  sha256 "8be1fd5d3d99507038e5251d36189e1da94722cf7f39d2494d83f6814c7a1fbb"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.11.1", output
  end
end
