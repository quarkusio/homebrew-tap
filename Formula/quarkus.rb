# Generated with JReleaser 1.3.0 at 2024-05-22T16:29:38.251655252Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.10.2/quarkus-cli-3.10.2.zip"
  version "3.10.2"
  sha256 "fdc9b0bfcfd27cc8bd0b319ac3ae60ed4e505572e337a32ddd564a1f0861c82a"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.10.2", output
  end
end
