# Generated with JReleaser 1.3.0 at 2026-07-08T14:31:23.454884757Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.37.2/quarkus-cli-3.37.2.zip"
  version "3.37.2"
  sha256 "f5a13827aa89020a3b3794494b6d47f36b231741bcfeafec416c72f3e1bc4a27"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.37.2", output
  end
end
