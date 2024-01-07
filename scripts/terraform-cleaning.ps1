foreach ($folder in $(Get-ChildItem -Directory)) {

    "Entering: $($folder.FullName)"

    cd $folder.FullName

    if (Test-Path '*.tf') {

      rm -Path ".terraform" -Recurse -Force

      terraform init -upgrade

      terraform fmt

      terraform validate
    }

    cd ..
}