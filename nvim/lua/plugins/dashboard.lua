vim.g.dashboard_disable_statusline = 1
vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_header = {
    "                             __.;=====;.__",
    "                         _.=+==++=++=+=+===;.",
    "                          -=+++=+===+=+=+++++=_",
    "                     .     -=:``     `--==+=++==.",
    "                    _vi,    `            --+=++++:",
    "                   .uvnvi.       _._       -==+==+.",
    "                  .vvnvnI`    .;==|==;.     :|=||=|.",
    "             +QmQQmpvvnv; _yYsyQQWUUQQQm #QmQ#:QQQWUV$QQm.",
    "              -QQWQWpvvowZ?.wQQQE==<QWWQ/QWQW.QQWW(: jQWQE0x1080",
    "               -$QQQQmmU'  jQQQ@+=<QWQQ)mQQQ.mQQQC+;jWQQ@'",
    "                -$WQ8YnI:   QWQQwgQQWV`mWQQ.jQWQQgyyWW@!",
    "                  -1vvnvv.     `~+++`        ++|+++",
    "                   +vnvnnv,                 `-|===",
    "                    +vnvnvns.           .      :=-",
    "                     -Invnvvnsi..___..=sv=.     `",
    "                       +Invnvnvnnnnnnnnvvnn;.",
    "                         ~|Invnvnvvnvvvnnv}+`",
    "                            -~|{*l}*|~"
}

vim.g.dashboard_custom_section = {
    a = {description = {"  Find File                 SPC f"}, command = "Telescope find_files"},
    b = {description = {"  Find All Files            SPC h"}, command = "Telescope find_files find_command=fd,-H,-I"},
    c = {description = {"  Live Grep                 SPC g"}, command = "Telescope live_grep"},
    d = {description = {"  New File                       "}, command = "DashboardNewFile"},
}
