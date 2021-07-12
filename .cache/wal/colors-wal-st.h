const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#3b2f45", /* black   */
  [1] = "#E9918E", /* red     */
  [2] = "#CFB497", /* green   */
  [3] = "#EDB299", /* yellow  */
  [4] = "#DEA4A8", /* blue    */
  [5] = "#E3CF9C", /* magenta */
  [6] = "#F3D2AE", /* cyan    */
  [7] = "#e4c7d9", /* white   */

  /* 8 bright colors */
  [8]  = "#9f8b97",  /* black   */
  [9]  = "#E9918E",  /* red     */
  [10] = "#CFB497", /* green   */
  [11] = "#EDB299", /* yellow  */
  [12] = "#DEA4A8", /* blue    */
  [13] = "#E3CF9C", /* magenta */
  [14] = "#F3D2AE", /* cyan    */
  [15] = "#e4c7d9", /* white   */

  /* special colors */
  [256] = "#3b2f45", /* background */
  [257] = "#e4c7d9", /* foreground */
  [258] = "#e4c7d9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
