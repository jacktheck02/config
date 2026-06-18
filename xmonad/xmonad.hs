import XMonad
import XMonad.Util.EZConfig (additionalKeysP)

myKeys = 
    [ ("M-<Return>", spawn "kitty")
    , ("M-d", spawn "dmenu_run")
    , ("M-S-r", spawn "xmonad --recompile" >> "xmonad --restart")
    , ("M-S-q", kill)
    ]

main :: IO ()
main = xmonad $ def
    { terminal = "kitty" }
    `additionalKeysP` myKeys
