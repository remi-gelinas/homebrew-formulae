class ElixirLs < Formula
    depends_on "elixir"

    desc ""
    homepage "https://github.com/JakeBecker/elixir-ls"
    version "0.2.25"

    url "https://github.com/JakeBecker/elixir-ls/releases/download/v0.2.25/elixir-ls.zip"
    sha256 "ab21b131bd203a6b461ad77f8177ee0000981920f6b86e2319fde70320b52d60"
    
    head "https://github.com/JakeBecker/elixir-ls.git"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        
        bin.write_exec_script (libexec/"debugger.sh")
        bin.write_exec_script (libexec/"language_server.sh")
       
        system "chmod", "+x", (libexec/"debugger.sh")
        system "chmod", "+x", (libexec/"language_server.sh")

        system "mv", (bin/"language_server.sh"), (bin/"elixir-ls")
        system "mv", (bin/"debugger.sh"), (bin/"elixir-ls-debugger")
    end
end
