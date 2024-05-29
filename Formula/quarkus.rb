# Generated with JReleaser 1.3.0 at 2024-05-29T06:49:31.973574958Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.11.0/quarkus-cli-3.11.0.zip"
  version "3.11.0"
  sha256 "c341ca23c4ab4a8a97347c65c2916a597b4afdb859d84db42a417cf4da723a39"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.11.0", output
  end
end
