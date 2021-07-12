static const char norm_fg[] = "#e4c7d9";
static const char norm_bg[] = "#3b2f45";
static const char norm_border[] = "#9f8b97";

static const char sel_fg[] = "#e4c7d9";
static const char sel_bg[] = "#CFB497";
static const char sel_border[] = "#e4c7d9";

static const char urg_fg[] = "#e4c7d9";
static const char urg_bg[] = "#E9918E";
static const char urg_border[] = "#E9918E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
