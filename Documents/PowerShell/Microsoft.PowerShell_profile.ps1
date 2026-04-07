Invoke-Expression (&starship init powershell)

# Enable history-based predictions
Set-PSReadLineOption -PredictionSource History

# Change the view to "ListView" for a more visual menu (press F2 to toggle)
Set-PSReadLineOption -PredictionView ListView

# Search history based on what you've already typed
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Use Ctrl+Space for a full menu-driven completion experience
Set-PSReadLineKeyHandler -Chord "Ctrl+Spacebar" -Function MenuComplete
