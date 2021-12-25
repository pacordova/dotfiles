// see LICENSE for copyright and license

#ifndef CONFIG_H
#define CONFIG_H

// modifiers
#define MOD1            Mod1Mask    // ALT key
#define MOD4            Mod4Mask    // Super/Windows key
#define CONTROL         ControlMask // Control key
#define SHIFT           ShiftMask   // Shift key

// generic settings
#define MASTER_SIZE     0.52
#define SHOW_PANEL      True      // show panel by default on exec
#define TOP_PANEL       True      // False means panel is on bottom
#define PANEL_HEIGHT    18         // 0 for no space for panel, thus no panel
#define DEFAULT_MODE    TILE      // initial layout/mode: TILE MONOCLE BSTACK GRID FLOAT
#define ATTACH_ASIDE    True      // False means new window is master
#define FOLLOW_WINDOW   False     // follow the window when moved to a different desktop
#define FOLLOW_MOUSE    True      //focus the window the mouse just entered
#define CLICK_TO_FOCUS  False     // focus an unfocused window when clicked
#define FOCUS_BUTTON    Button3   // mouse button to be used along with CLICK_TO_FOCUS
#define BORDER_WIDTH    2         // window border width
#define FOCUS           "#ff950e" // focused window border color
#define UNFOCUS         "#444444" // unfocused window border color
#define MINWSZ          50        // minimum window size in pixels
#define DEFAULT_DESKTOP 0         // the desktop to focus initially
#define DESKTOPS        4         // number of desktops - edit DESKTOPCHANGE keys to suit

// open applications to specified desktop with specified mode.
// if desktop is negative, then current is assumed
static const AppRule rules[] = { \
    //  class     desktop  follow  float
    { "MPlayer",     3,    True,   False },
    { "Gimp",        0,    False,  True  },
};

// helper for spawning shell commands
#define SHCMD(cmd) {.com = (const char*[]){"/bin/sh", "-c", cmd, NULL}}

//commands
static const char *termcmd[] = { "st", NULL };
static const char *menucmd[] = { "dmenu_run", "-fn", "CodeNewRoman NF-12", NULL };
static const char *lockcmd[] = { "i3lock", "-c", "0f0f0f", NULL };

#define DESKTOPCHANGE(K,N) \
    {  MOD4,             K,              change_desktop, {.i = N}}, \
    {  MOD4|ShiftMask,   K,              client_to_desktop, {.i = N}},

//keybinds
static Key keys[] = {
    // modifier          key            function           argument
    {  MOD4,             XK_b,          togglepanel,       {NULL}},
    {  MOD4,             XK_BackSpace,  focusurgent,       {NULL}},
    {  MOD4|SHIFT,       XK_c,          killclient,        {NULL}},
    {  MOD4,             XK_j,          next_win,          {NULL}},
    {  MOD4,             XK_k,          prev_win,          {NULL}},
    {  MOD4,             XK_h,          resize_master,     {.i = -10}}, // decrease size in px
    {  MOD4,             XK_l,          resize_master,     {.i = +10}}, // increase size in px
    {  MOD4,             XK_o,          resize_stack,      {.i = -10}}, // shrink   size in px
    {  MOD4|CONTROL,     XK_h,          rotate,            {.i = -1}},
    {  MOD4|SHIFT,       XK_l,          spawn,             {.com = lockcmd}},
    {  MOD4|SHIFT,       XK_h,          rotate_filled,     {.i = -1}},
    {  MOD4,             XK_Tab,        last_desktop,      {NULL}},
    {  MOD4,             XK_Return,     swap_master,       {NULL}},
    {  MOD4|SHIFT,       XK_j,          move_down,         {NULL}},
    {  MOD4|SHIFT,       XK_k,          move_up,           {NULL}},
    {  MOD4|SHIFT,       XK_t,          switch_mode,       {.i = TILE}},
    {  MOD4|SHIFT,       XK_m,          switch_mode,       {.i = MONOCLE}},
    {  MOD4|SHIFT,       XK_b,          switch_mode,       {.i = BSTACK}},
    {  MOD4|SHIFT,       XK_g,          switch_mode,       {.i = GRID}},
    {  MOD4|SHIFT,       XK_f,          switch_mode,       {.i = FLOAT}},
    {  MOD4|SHIFT,       XK_r,          quit,              {.i = 0}}, // quit with exit value 0
    {  MOD4|SHIFT,       XK_q,          quit,              {.i = 1}}, // quit with exit value 1
    {  MOD4|SHIFT,       XK_Return,     spawn,             {.com = termcmd}},
    {  MOD4,             XK_p,          spawn,             {.com = menucmd}},
       DESKTOPCHANGE(    XK_1,                             0)
       DESKTOPCHANGE(    XK_2,                             1)
       DESKTOPCHANGE(    XK_3,                             2)
       DESKTOPCHANGE(    XK_4,                             3)
};

//mouse
static Button buttons[] = {
    {  MOD4,    Button1,     mousemotion,   {.i = MOVE}},
    {  MOD4,    Button3,     mousemotion,   {.i = RESIZE}},
};
#endif
