Configuration atuldsc_filedownload {
param(
        [string[]]$ComputerName="Atuldcs-win2k12"
    )

    Import-DscResource -ModuleName xPsDesiredStateConfiguration

      
   Node $ComputerName {
            File DownloadFile {
            Ensure = 'Present'
            Type = "File"
            SourcePath = "https://atulblobsouth.blob.core.windows.net/atuldsc-test/index.htm.txt"
            DestinationPath = 'c:\inetpub\wwwroot'
            }
  }
}