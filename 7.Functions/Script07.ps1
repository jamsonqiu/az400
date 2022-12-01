function Get-Appversion {
    $PSVersionTable
    
}

Get-Appversion

function Add-Integers([int]$x,[int]$y) 
{
    'The sum of the integers is ' +($x+$y)
    
}

Add-Integers 10 30

function Get-Mobile {
    param (
        [object[]] $Mobi
    )
    
    foreach($mob in $Mobi)
    {
        $mob.Brand
        $mob.Model
    }
}

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

Get-Mobile $Mobile
