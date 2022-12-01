$Mobile=@(
    [PSCustomObject]@{
        Brand = "Samsung"
        Model = "Galaxy"
        Storage=@("128GB","256GB")
        Defaultapp=@(
            @{
                name="Assist App"
                status="Installed"
                version=1.0
            },
            @{
                name="sex App"
                status="Installed"
                version=3.0
            }
        )
    },
    [PSCustomObject]@{
        Brand = "Nokia"
        Model = "Fruit"
        Storage=@("128GB","512GB")
        Defaultapp=@(
            @{
                name="Assist App"
                status="Installed"
                version=1.0
            },
            @{
                name="sex App"
                status="Installed"
                version=3.0
            }
        )
    }
)

$Mobile | Where-Object {$_.Model -eq "Galaxy"} | Select-Object -Property Brand,Storage
