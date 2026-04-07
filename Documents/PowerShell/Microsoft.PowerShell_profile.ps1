Invoke-Expression (&starship init powershell)

# Enable history-based predictions
Set-PSReadLineOption -PredictionSource History

# Search history based on what you've already typed
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Use Ctrl+Space for a full menu-driven completion experience
Set-PSReadLineKeyHandler -Chord "Ctrl+Spacebar" -Function MenuComplete

# From PS Completions wiki
# $OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

$params = @{
   # InlineView/ListView
   PredictionViewStyle = 'ListView'
   # Audible/Visual/None
   BellStyle           = 'Audible'
   # Windows/Emacs/Vi
   EditMode            = 'Vi'
}
Set-PSReadLineOption @params
Set-PSReadLineKeyHandler -Key 'Ctrl+z' -Function Undo

Import-Module PSCompletions

Import-Module CompletionPredictor

$env:CARAPACE_TOOLTIP = 1
carapace _carapace | Out-String | Invoke-Expression

# $PSCompletions.argc_completions($argc_scripts)
