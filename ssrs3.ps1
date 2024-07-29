# Setup path for Items
    if ($catalogItemType  -eq "Report"){
        $itemPath = $reportPath
    }elseif ($catalogItemType  -eq "DataSource"){
        $itemPath = $datasourcePath
    }elseif ($catalogItemType  -eq "DataSet"){
        $itemPath = $datasetPath
    }

    $report = $SSRSProxy.CreateCatalogItem( 
        $catalogItemType, # Catalog item type 
        $reportName,      # Report name 
        $itemPath,      # Destination folder Strue # Overwrite report if it exists? 
        $true,            # Overwrite report if it exists?
        $bytes,           # file contents  
        $null,            # Properties to set 
        [ref]$warnings    # Warnings that occured while uploading.
    )