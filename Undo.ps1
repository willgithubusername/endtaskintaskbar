$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings"
      $name = "TaskbarEndTask"
      $value = 0

      # Ensure the registry key exists
      if (-not (Test-Path $path)) {
        New-Item -Path $path -Force | Out-Null
      }

      # Set the property, creating it if it doesn't exist
      New-ItemProperty -Path $path -Name $name -PropertyType DWord -Value $value -Force | Out-Null