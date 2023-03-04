$indir = 'J:\Dropbox\PC5_cloud\pg\PowerShell\duplicater\input'
$outdir = 'J:\Dropbox\PC5_cloud\pg\PowerShell\duplicater\output'

if (-not (Test-Path $outdir)){
    New-Item $outdir -ItemType Directory
}

Get-ChildItem -Path $indir/*.txt | foreach{
    $infile = $indir + "\" + $_.Name
    $outfile = $outdir + "\copied-" + $_.Name
    Copy-Item $infile -Destination $outfile
}