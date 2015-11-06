Pod::Spec.new do |s|
  s.name             = "GCPDFFramework"
  s.version          = "0.1.0"
  s.summary          = "GCPDFFramework - is pdf based system"
  s.description      = <<-DESC
                        Many many many many mnay manyif hfdud hjhkjh jhghjgf jhgf jhg jh
                       DESC

  s.homepage         = "https://github.com/sergiikostanian/GCPDFFramework"
  s.license          = "MIT"
  s.author           = { "Sergii Kostanian" => "sk@madappgang.com" }
  s.source           = { :git => "https://github.com/sergiikostanian/GCPDFFramework.git", :tag => s.version.to_s }

  s.platform     = :ios, "7.0"
  s.requires_arc = true

  s.source_files = "ScriptTest/Framework/**/*.{h,m}"
  s.resource = "ScriptTest/Framework/resources.bundle"
                   
end