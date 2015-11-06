# GCPDFFramework

##How To Install

Add to Podfile 

<pre><code>pod 'GCPDFFramework', :git => 'https://github.com/sergiikostanian/GCPDFFramework.git'

post_install do |installer|
    
    shellScriptName = "Genegate PDF Search Indexes"
    pdfFolderSubPath = "..."
    xcodeprojFileName = "..."
    
    project = Xcodeproj::Project.open(xcodeprojFileName)
    mainTarget = project.targets.first
    
    hasScript = false
    for script in mainTarget.shell_script_build_phases()
        if script.name() == shellScriptName
            hasScript = true
        end
    end
    
    if !hasScript
        phase = mainTarget.new_shell_script_build_phase(shellScriptName)
        phase.shell_script = "for pdf in `find '#{pdfFolderSubPath}' -name '*.pdf'`; do
    fileName=${pdf##*/}
    fileBaseName=${fileName%.*}
    automator -D OutputPath='#{pdfFolderSubPath}' -i $pdf 'Pods/GCPDFFramework/ScriptTest/Framework/resources.bundle/GenerateSearchText.workflow';
    mv '#{pdfFolderSubPath}/TemporarySearchText.txt' '#{pdfFolderSubPath}/'$fileBaseName'.searchindex';
done"
        project.save()
    end
    
end</code></pre>

In <b>pdfFolderSubPath</b> you should type sub path to folder with your PDF files starting from your project folder<br/>
In <b>xcodeprojFileName</b> you should type xcodeproj file name with extention

For example:
<pre><code>pdfFolderSubPath = "MyProject/FolderWithPDFs"
xcodeprojFileName = "MyProject.xcodeproj"</code></pre>
