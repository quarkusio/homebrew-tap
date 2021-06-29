class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  version "2.0.0.CR3"
  url "https://github.com/quarkusio/quarkus/releases/download/2.0.0.CR3/quarkus-cli-2.0.0.CR3-runner.jar", :using => :nounzip
  sha256 "d0f9f2b103a58bf8ecf888c002a5dff53828f511b3f6fe6199e0a94865e1b4e4"
  license "Apache-2"

  bottle :unneeded


  def install
    File.open("quarkus", "w") do |f|
      f << "#!/bin/bash\n"
      f << "java -jar $JAVA_OPTS #{prefix}/quarkus-cli-2.0.0.CR3-runner.jar \"$@\"\n"
    end
    prefix.install "quarkus-cli-2.0.0.CR3-runner.jar"
    bin.install "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.0.0.CR3", output
  end
end