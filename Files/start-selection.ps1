$items = @("Start", "Exit")
$selected = 0

Clear-Host

while ($true) {
    [Console]::SetCursorPosition(0, 0)

    for ($i = 0; $i -lt $items.Count; $i++) {
        if ($i -eq $selected) {
            [Console]::BackgroundColor = [ConsoleColor]::Yellow
            [Console]::ForegroundColor = [ConsoleColor]::Black
            [Console]::WriteLine("> {0,-20}" -f $items[$i])
            [Console]::ResetColor()
        } else {
            [Console]::WriteLine("  {0,-20}" -f $items[$i])
        }
    }

    $key = [Console]::ReadKey($true).Key
    if ($key -eq "UpArrow")   { $selected = ($selected - 1 + $items.Count) % $items.Count }
    if ($key -eq "DownArrow") { $selected = ($selected + 1) % $items.Count }
    if ($key -eq "Enter")     { break }
}

exit ($selected + 1)