$Course=[PSCustomObject]@{
    ID = 1
    Name = 'Jamson'
    Price = 0.5
}

$Course

$Courselist=@(
    [PSCustomObject]@{
        ID = 1
        Name = 'jamson'
        Price = 0.5
    },
    [PSCustomObject]@{
        ID = 2
        Name = 'hmily'
        Price = 0.6
    },
    [PSCustomObject]@{
        ID = 3
        Name = 'bill'
        Price = 0.7
    }
)

$Courselist