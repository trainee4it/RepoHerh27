$FilesOrFolders = Import-Csv -Path C:\data\files.csv

foreach($file in $FilesOrFolders)
{
    
    'Do you really want to create ' +$file.NAAM + ' ? (Y/N) '

    $Answer = Read-Host

    if($Answer -eq 'Y')
    {
    
        #$FulPath = $file.DRIVE + $file.NAAM
        if($file.FileOrFolder -eq 'ISfolder')
        {

            $FileDir = 'Directory'

        }


        elseif($file.FileOrFolder -eq 'ISfile')
        {

            $FileDir = 'File'

        }
    

        New-Item -Path $file.DRIVE -Name $file.NAAM -ItemType $FileDir

    }

    else
    {

        'Ok we will not create' +$file.NAAM 
        

    }

}