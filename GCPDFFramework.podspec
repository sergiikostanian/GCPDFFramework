Pod::Spec.new do |s|
  s.name         = "GCPDFFramework"
  s.version      = "0.0.1"
  s.summary      = "GCPDFFramework - is pdf based system"
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://conquermobile.com/"
  s.license      = "Contracting Licence"
  s.author       = { "Bruce Burnham" => "info@conquermobile.com" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/sergiikostanian/GCPDFFramework.git", :tag => "0.0.1" }
  s.source_files  = “Framework”, “ScriptTest/Framework/**/*.{h,m}”

  s.requires_arc = true  

end
