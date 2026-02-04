# Animated Terminal Demo Recording
# Generates an animated GIF showing a CLI workflow
#
# Usage: vhs demo-recording.tape

# Output settings - can specify multiple formats
Output demo.gif
# Output demo.mp4  # Uncomment for video output

# Terminal dimensions (16:9 aspect ratio works well)
Set Width 1000
Set Height 562
Set FontSize 20
Set FontFamily "monospace"

# Theme and appearance
Set Theme "Dracula"
Set Padding 20
Set Margin 15
Set MarginFill "#282a36"
Set BorderRadius 10
Set WindowBar Colorful

# Animation settings
Set TypingSpeed 50ms
Set Framerate 30
Set CursorBlink true

# Hidden setup - clean environment
Hide
Env PS1 "\033[32m$\033[0m "
Type "clear"
Enter
Show

# === DEMO SEQUENCE ===

# Introduction
Type "# Welcome to the Terminal Demo!"
Enter
Sleep 1s

# Show a simple command
Type "echo 'VHS makes terminal recordings easy'"
Sleep 300ms
Enter
Sleep 1.5s

# Show file operations
Type "ls -la *.md"
Sleep 200ms
Enter
Sleep 1.5s

# Show a more complex command with slower typing for emphasis
Type@80ms "cat README.md | head -5"
Sleep 300ms
Enter
Sleep 2s

# Interactive-style pause
Type "# Pretty cool, right?"
Enter
Sleep 1s

# Final message
Type "echo 'Thanks for watching!'"
Enter
Sleep 500ms

# Hold final frame
Sleep 3s
