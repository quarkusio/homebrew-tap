# Generated with JReleaser 1.3.0 at 2026-05-13T16:32:39.800579485Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.35.3/quarkus-cli-3.35.3.zip"
  version "3.35.3"
  sha256 "c79d50293db55147b180e2359bd81e0ad986ecf55b7ad3e6725f4c9e9605c739"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.35.3", output
  end
end
