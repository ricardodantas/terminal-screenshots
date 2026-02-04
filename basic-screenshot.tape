# Basic Terminal Screenshot
# Generates a simple static PNG screenshot of terminal output
#
# Usage: vhs basic-screenshot.tape

# Output settings
Output screenshot.png

# Terminal appearance
Set Width 900
Set Height 500
Set FontSize 18
Set FontFamily "monospace"
Set Theme "Catppuccin Mocha"
Set Padding 20
Set Margin 10
Set MarginFill "#1e1e2e"
Set BorderRadius 8
Set CursorBlink false

# Use a clean, minimal prompt
Hide
Env PS1 "$ "
Type "clear"
Enter
Show

# Display some example content
Type "echo 'Hello, World!'"
Enter
Sleep 300ms

Type "ls -la"
Enter
Sleep 500ms

# Capture the screenshot
Screenshot screenshot.png
