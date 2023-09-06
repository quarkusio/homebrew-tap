# Generated with JReleaser 1.3.0 at 2023-09-06T10:56:21.49856+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.3.2/quarkus-cli-3.3.2.zip"
  version "3.3.2"
  sha256 "0804b27eb1f7f2368efed17a52062c4201407e152ab19ef2a5ccabb5c85a35a5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.3.2", output
  end
end
