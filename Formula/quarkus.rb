# Generated with JReleaser 1.3.0 at 2025-08-13T16:32:42.846551224Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.25.3/quarkus-cli-3.25.3.zip"
  version "3.25.3"
  sha256 "d1427fc6b7a9da7b8109353e51976118d6c5ee13618dca91d2c456a00a2a77cd"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.25.3", output
  end
end
