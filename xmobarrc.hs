Config { font = "xft:JetBrains Mono:style=Bold:pixelsize=12:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki:pixelsize=12:antialias=true:hinting=true"
                           , "xft:Font Awesome 6 Free Solid:pixelsize=12"
                           , "xft:Font Awesome 6 Brands:pixelsize=12"
                           ]
       , bgColor = "#161320"
       , fgColor = "#C9CBFF"
       , alpha   = 200
       , position = Static { xpos = 6, ypos = 6, width = 1910, height = 35 }
       , border = FullB
       , borderWidth = 2
       , borderColor = "#302D41"
       , lowerOnStart = True 
       , hideOnStart = False
       , allDesktops = True
       , persistent = True
       , iconRoot = "/home/xeera/.config/xmobar/xpm/"  -- default: "[NERD]"
       , commands = [ Run Date "<fn=2>\xf017</fn> %b %d %Y  %H:%M:%S" "date" 10
                    , Run Cpu ["-t", "<fn=2>\xf108</fn>  CPU: (<total>%)","-H","50","--high","red"] 20
                    , Run Memory ["-t", "<fn=2>\xf233</fn>  MEM: (<usedratio>%)"] 20
                    , Run DiskU [("/", "<fn=2>\xf0c7</fn>  SSD: <free> free")] [] 60
                    , Run BatteryP ["BAT0"] ["-t", " <fn=2>\61671</fn> BAT: <acstatus><watts> (<left>%)"] 360
                    , Run Uptime ["-t", " <fn=2>\62036</fn> UP: <days>d <hours>h"] 36000
                    , Run Com "uname" ["-r"] "" 3600
                    , Run DynNetwork ["-t","<fc=#4db5bd><fn=2></fn></fc> <rx>, <fc=#c678dd><fn=2></fn></fc> <tx>"
                                     ,"-H","200"
                                     ,"-L","10"
                                     ,"-h","#bbc2cf"
                                     ,"-l","#bbc2cf"
                                     ,"-n","#bbc2cf"] 50
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " <icon=arch.xpm/><fc=#d7d7d7> == </fc>%UnsafeStdinReader% }{ <fc=#99C794><fn=3></fn> %uname%</fc>    <fc=#ffff5f>%cpu%</fc>   <fc=#ff5f87>%memory%</fc>   <fc=#87afd7>%disku%</fc>   <fc=#5af78e>%battery%</fc>   <fc=#ff79c6>%uptime%</fc>   %dynnetwork%   <fc=#afd75f>%date%</fc>  "
       }         
