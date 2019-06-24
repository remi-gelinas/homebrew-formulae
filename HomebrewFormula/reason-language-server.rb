class ReasonLanguageServer < Formula
    desc ""
    homepage "https://github.com/jaredly/reason-language-server"
    url "https://github.com/jaredly/reason-language-server/releases/download/1.6.1/macos.zip"
    sha256 "c8874386f2334eee9f867a57c33b27ba8d8f81d5e886803dd534678e3b61c546"

    bottle :unneeded

    def install
        system "mv", "reason-language-server.exe", "reason-language-server"
        bin.install "reason-language-server"
    end
end
