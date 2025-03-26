# Generated with JReleaser 1.3.0 at 2025-03-26T11:51:01.154808434Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.21.0/quarkus-cli-3.21.0.zip"
  version "3.21.0"
  sha256 "18049235a4787279461858a289abd20565bdf97341ab6e97a5d8d6a7c9ae2049"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.21.0", output
  end
end
