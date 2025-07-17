# Generated with JReleaser 1.3.0 at 2025-07-17T18:28:15.643459999Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.24.4/quarkus-cli-3.24.4.zip"
  version "3.24.4"
  sha256 "cd92aa24d471dab8a3e0579f45aaead1bfe9c5230d831016f32f166051ad193b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.24.4", output
  end
end
