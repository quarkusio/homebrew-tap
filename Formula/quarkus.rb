# Generated with JReleaser 1.3.0 at 2025-07-30T08:11:27.472500369Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.25.0/quarkus-cli-3.25.0.zip"
  version "3.25.0"
  sha256 "ab5985d0decc23aa5d461391190f09a83050a8dac0cf40a89279e7818dddba3a"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.25.0", output
  end
end
