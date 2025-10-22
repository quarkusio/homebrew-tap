# Generated with JReleaser 1.3.0 at 2025-10-22T14:55:02.64551807Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.28.5/quarkus-cli-3.28.5.zip"
  version "3.28.5"
  sha256 "a1087c7987d63e261914a729859e8763e8f60c13954036dc1156ced064ba98b1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.28.5", output
  end
end
