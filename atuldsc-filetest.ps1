Configuration atuldsc_filetest {
param(
        [string[]]$ComputerName="Atuldcs-win2k12"
    )

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    $SourceFiles = "C:\test\test.txt"
  
   Node $ComputerName {
         File SourceFiles 
         {
         DestinationPath = $SourceFiles
         Ensure = 'Present'
         Type = 'File'
         }
         File DownloadFile {
            Ensure = 'Present'
            Type = "File"
            SourcePath = 'https://atulblobsouth.blob.core.windows.net/atuldsc-test/index.htm.txt'
            DestinationPath = 'c:\inetpub\wwwroot'
        }
    }
}