Configuration atuldsc_testfile
{
    Node "localhost"
    {
        File CreateFile {
            DestinationPath = "C:\Test.txt"
            Ensure = "Present"
            Contents = "Success, created file test"
        }
    }
}