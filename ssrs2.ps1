$extension = [System.IO.Path]::GetExtension($_)

    if ($extension  -eq ".rdl"){
        $catalogItemType = "Report"
    }elseif ($extension  -eq ".rds"){
        $catalogItemType = "DataSource"
    }elseif ($extension  -eq ".rsd"){
        $catalogItemType = "DataSet"
    }

    $report = $SSRSProxy.CreateCatalogItem( 
        $catalogItemType,  # Catalog item type 
        $reportName,      # Report name 
        $reportPath,      # Destination folder St