# Generated with JReleaser 1.3.0 at 2025-08-08T16:48:04.143874116Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.25.2/quarkus-cli-3.25.2.zip"
  version "3.25.2"
  sha256 "011c06c72f236e74c7c1fa1a9de6f3288fe9718487c516a5b86529e8de8ad1f5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.25.2", output
  end
end
