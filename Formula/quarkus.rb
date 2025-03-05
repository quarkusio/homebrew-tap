# Generated with JReleaser 1.3.0 at 2025-03-05T15:42:30.994218915Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.19.2/quarkus-cli-3.19.2.zip"
  version "3.19.2"
  sha256 "19672c8e8a386f4b52ffed546bc37f9d856385f0a19d8d0dbeaa29a60bb1e2dc"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.19.2", output
  end
end
