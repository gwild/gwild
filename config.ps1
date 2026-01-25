# DevReadme Configuration
# Edit the values below to customize your GitHub profile README

$Config = @{
    # ===== Profile Info =====
    Username  = "gwild"
    BirthYear = 1990  # Used to calculate age shown as "Uptime"

    # ===== Profile Section =====
    # These appear under the username header
    Profile = [ordered]@{
        OS                      = "Ubuntu"
        Uptime                  = $null  # Calculated automatically from BirthYear
        Host                    = "Latitude-5550"
        Kernel                  = "Linux 6.8.0-88-generic"
        IDE                     = "Cursor, Claude Code"
        "Languages.Programming" = "Python, Rust"
        Hobbies                 = "Makin' stuff work."
    }

    # ===== Contact Section =====
    Contact = [ordered]@{
        LinkedIn = "gregorywildes"
        Discord  = ""
        GitHub   = "gwild"
        Blog     = "stringdriver803658044.wordpress.com"
    }

    # ===== Files =====
    AsciiArtFile = "ascii-art.txt"  # Path to ASCII art file
    OutputFiles  = @{
        Dark  = "dark_mode.svg"
        Light = "light_mode.svg"
    }

    # ===== Color Schemes =====
    # GitHub dark and light mode colors
    Colors = @{
        Dark = @{
            Background = "#161b22"
            Text       = "#c9d1d9"
            Key        = "#ffa657"
            Value      = "#a5d6ff"
            AddColor   = "#3fb950"
            DelColor   = "#f85149"
            Dots       = "#616e7f"
        }
        Light = @{
            Background = "#f6f8fa"
            Text       = "#24292f"
            Key        = "#953800"
            Value      = "#0a3069"
            AddColor   = "#1a7f37"
            DelColor   = "#cf222e"
            Dots       = "#c2cfde"
        }
    }

    # ===== SVG Layout =====
    # Adjust these if you need to change the SVG dimensions
    Layout = @{
        Width      = 985
        Height     = 530
        FontSize   = 16
        AsciiX     = 15
        ContentX   = 390
        LineHeight = 20
        TargetWidth = 56  # Character width for dot-justification
    }

    # ===== Cache Settings =====
    CacheCommentSize = 7  # Number of comment lines in cache file
}
