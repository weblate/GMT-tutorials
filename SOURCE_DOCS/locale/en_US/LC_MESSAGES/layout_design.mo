Þ    5      Ä              l  á   m  I   O  U    Ë  ï     »     Í     Ü     ê  )     '   1  %   Y  '     *   §  7   Ò  H   
  2   S  $     3   «  3   ß  .     6   B  <   y     ¶  N  Ï       }   +     ©     ¿     Û  9   â  <     ¢   Y     ü  	   ý  Ì       Ô     á  $   ô  ¥       ¿    ß     ã  $   ð               7     M    c     è  	   ï     ù        -   Ü   Ç!  P   ¤"  Y  õ"  	  O%     [.     m.     |.     .  )   §.  '   Ñ.  %   ù.  (   /  .   H/  7   w/  H   ¯/  6   ø/  '   /0  5   W0  Q   0  1   ß0  *   1  ?   <1     |1    1     3     +3     ¶3  .   Ñ3      4  :   4  A   @4  î   4    q5     6  ø  6  	   8     8      ª8  Å   Ë8  _  9  É   ñ:     »;     Ç;     Ù;     Þ;     ø;  "   <  _  8<     >     ¡>     ©>    À>   #
# GMT 6.0.0 Defaults file
#
# COLOR Parameters
#
COLOR_BACKGROUND               = black
COLOR_FOREGROUND               = white
COLOR_NAN                      = 127.5
COLOR_MODEL                    = none
... #(ä»¥ä¸çç¥) # (åç¥)
gmt end
rm -rf gmt.conf    # <---- æ¶é¤èççµæè¨­å®æª # (åç¥)
gmt set FONT_ANNOT_PRIMARY          12p,20,#0D057A \
        FONT_TITLE                  30,Bookman-Demi,#0D057A \
        FORMAT_GEO_MAP              dddF \
        MAP_ANNOT_OBLIQUE           32 \
        MAP_FRAME_TYPE              plain \
        MAP_GRID_CROSS_SIZE_PRIMARY 8p \
        MAP_GRID_PEN_PRIMARY        thinner,#ED99F0 \
        MAP_TICK_PEN_PRIMARY        thicker,black \
        MAP_TITLE_OFFSET            0.5c \
        PS_PAGE_COLOR               ivory
# æ³¨ææå¨æ¯ä¸è¡çµå°¾ä½¿ç¨äº "\" ç¬¦èï¼æå³èä¸ä¸è¡ä»ç¶æ¯ gmt set çå§å®¹ã
# (å¾ç¥) # ==== è¨­å®è®æ¸ ====
input_xy="coord.txt"
land_color="#CEB9A0"
rl_color="#FF0073"        # æåç·é¡è²
gc_color="#0044FF"        # å¤§åè·¯å¾é¡è²
# æå©ååå¸ç xy åº§æ¨å¯«å¥ $input_xy æªæ¡ä¸­
# å¦æä½ å·²ç¶ä¸è¼äº coord.txtï¼ä»¥ä¸åè¡å¯ä»¥è¨»è§£æã
xy_ulaanbaatar="47:55:0N, 106:55:0E"       # çè­å·´æçåº§æ¨
xy_seattle="47:36:35N, 122:19:59W"         # è¥¿éåçåº§æ¨
echo $xy_ulaanbaatar > $input_xy
echo $xy_seattle    >> $input_xy

# ==== è¨­å®ä½ååæ¸ ====
gmt set FONT_ANNOT_PRIMARY          12p,20,#0D057A \
        FONT_TITLE                  30,Bookman-Demi,#0D057A \
        FORMAT_GEO_MAP              dddF \
        MAP_ANNOT_OBLIQUE           32 \
        MAP_FRAME_TYPE              plain \
        MAP_GRID_CROSS_SIZE_PRIMARY 8p \
        MAP_GRID_PEN_PRIMARY        thinner,#ED99F0 \
        MAP_TICK_PEN_PRIMARY        thicker,black \
        MAP_TITLE_OFFSET            0.5c \
        PS_PAGE_COLOR               ivory

# ==== éå§ç¹ªå ====
gmt begin ulaanbaatar_seattle_gmt6 png

    # ==== ä¸å (éº¥å¡æ) ====
    gmt basemap -R70/270/30S/70N -JM13c -B+tMercator
    gmt coast -Dl -A1000 -G$land_color -N1/thick,60 -Ba40f20g20 --MAP_GRID_PEN_PRIMARY=thicker
    gmt plot $input_xy -: -A -W1p,$rl_color    # æåç·
    gmt plot $input_xy -:    -W1p,$gc_color    # å¤§åè·¯å¾
    gmt plot $input_xy -:    -Sa0.4c -Gblack
    echo "174 41 Rhumb Line"    | gmt text -F+f,18,$rl_color
    echo "174 61 Great Circle"  | gmt text -F+f,18,$gc_color

    # ==== ä¸å (è­ä¼¯ç¹) ====
    gmt basemap -Rg -JA106:55/47:55/13c -Yh+3c -B+tLambert --MAP_TITLE_OFFSET=0c
    gmt coast -Dl -A1000 -G$land_color -N1/thick,60 -Bxg60 -Byg30 --MAP_GRID_CROSS_SIZE_PRIMARY=0p
    gmt plot $input_xy -: -Ap -W1p,$rl_color    # æåç·
    gmt plot $input_xy -:     -W1p,$gc_color    # å¤§åè·¯å¾
    gmt plot $input_xy -: -Sa0.4c -Gblack

    gmt text -F+a   << ANNOTEND
106.92 -30 0   30@.S
106.92 30  0   30@.N
60     15  70  60@.E
180    15  305 180@.
ANNOTEND

    gmt text -F+a+f << LABELEND
180    40  58  ,Bookman-DemiItalic,$rl_color   Rhumb Line
180    80  58  ,Bookman-DemiItalic,$gc_color   Great Circle
LABELEND

gmt end

# rm -rf gmt.conf   # æ¶é¤èç GMT åæ¸æª $ gmt defaults -D 47.61, -122.33 47.92, 106.92 47.92, 106.92
47.61, -122.33 47:55:0N, 106:55:0E
47:36:35N, 122:19:59W 47Â° 36â² 35â³ N, 122Â° 19â² 59â³ W 47Â° 55â² 0â³ N, 106Â° 55â² 0â³ E GMT å±ç¨é¸é ï¼``-X`` ``-Y`` ``-:`` GMT çé è¨­åæ¸è ``gmt.conf`` æªæ¡ GMT éå°ä¸åæå½±åº§æ¨ç³»çµ±çä¸åèçæ¹å¼ `Public domain country maps <http://ian.macky.net/pat/map/gq/gq.html>`_. ``basemap`` - è¨­å®ç¹ªååãåº§æ¨è»¸èéæ¡ ``coast`` - ç¹ªè£½æµ·å²¸ç·èåç ``defaults`` - **æ¥ç GMT çé è¨­ä½ååæ¸** ``plot`` - **å¨å°çåº§æ¨ç³»çµ±ä¸ç«é»åç·** ``set`` - **æ´æ¹ GMT çé è¨­ä½ååæ¸** ``text`` - **è©³ç´°çè¨­å®æ¨è¨å¨åä¸çæå­** ä»¥ä¸æ¯ä½¿ç¨åº¦åç§å¶åº§æ¨ç ``coord.txt`` å§å®¹ï¼ ä½¿ç¨çæä»¤èæ¦å¿µ åæ¬¡å¼·èª¿ï¼è³æä¸­çç¬¬ä¸æ¬ç¾å¨æ¯ç·¯åº¦ (y å¼)ï¼ç¬¬äºæ¬æ¯ç¶åº¦ (x å¼)ãéèæåå¨ã\ :doc:`scatter_plot`\ ãä¸ç« ä¸­æä½¿ç¨ç xy é åºç¸åï¼ä¸éåªè¦é©ç¶çæå®æ¬ä½æç¾©ï¼GMT ä»ç¶å¯ä»¥è®åãå¦å¤ï¼å©åæ¬ä½ä¸­éä½¿ç¨äºãéèãåéï¼å¨ GMT ä¸­ä¹æ¯å¯ä»¥æ¥åçã åç½®ä½æ¥­ å¦å¤ï¼æ¬å°åä¹æ¿æäº GMT çé è¨­å­åãé¡è²èçé¢éç½®ãéäºç´°ç¯å°æå¨ä»¥ä¸é¨ä»½ä¸ä¸è§£èªªã å°åçé¢çè¨­å® å°çåº§æ¨ççµ¦å®æ¹å¼ åå¸ å¤é¨æä»¤ ``echo`` - æè³æè¼¸å¥å°ç®¡ç·å½ä»¤ä¸­ å¤é¨æä»¤ ``rm`` - **åªé¤æªæ¡** (Windows çº ``del``) æåç·å¨éº¥å¡ææå½±ä¸­æä»¥ç´ç·åç¾ï¼èå¤§åè·¯å¾å¨ç¸åçåä¸­åæ¯æ²ç·ãä¸éï¼å¤§åè·¯å¾ææ¯å©å°ä¹éå¯¦éè¼ç­çè·¯å¾ã æåè¦ååå¾çè­å·´æèè¥¿éåå©å°çç¶ç·¯åº¦åº§æ¨ãå¾ *Wikipedia* çæ¢ç®é é¢ä¸­ï¼å¯ä»¥æ¾å°ãç¶ç·¯åº¦ãçè³è¨æ¬ä½ï¼é»é¸é£çµå¾ï¼å¯ä»¥çå°ä¸ååº§æ¨ç³»çµ±çä½ç½®è³è¨ï¼å¦ä¸æç¤º (ä»¥çè­å·´æçºä¾)ã æä»¤ç¨¿ æ¥ä¸ä¾è®æåä¾æ¢è¨ä¸ä¸ GMT ççé¢è¨­è¨åè½ãGMT ä½¿ç¨äºè¨±å¤é è¨­é¸é ï¼è®ä½¿ç¨èä¸éåå¤ªå¤è¨­å®å°±è½ç¢çæ³è¦çå°åãå¦ææåæ³è¨­è¨æ¯è¼è¤éçéç½®ï¼ä¾å¦çé¢åå²ãéæ¡æ¨£å¼èª¿æ´ãå­åèå­é«æ¨£å¼ï¼å°±éè¦èª¿æ´ GMT çãä½¿ç¨èçµæè¨­å®ããå¦å¤ï¼æåä¹æå¨éè£¡ä»ç´¹å°çç©ºéè³æå¸¸ç¨çå©å¤§é¡åº§æ¨ï¼å¹³é¢èçé¢ï¼ä»¥å GMT ä½åæçç¸éè¨­å®ã æä½æµç¨ æå­é¢¨æ ¼è¨­å® æ¬å°åçæçµæä»¤ç¨¿å¦ä¸ï¼ æ¬æå­¸é©ç¨æ¼ GMT 6 çç¾ä»£æ¨¡å¼ãå¦é åé± GMT 6 (å³çµ±æ¨¡å¼) è GMT 4-5 ç¹ªè£½ç¸ä¼¼å°åçæç¨ï¼\ `è«è³éè£¡ <layout_design_gmt5.html>`_ã æ³¨æå¨ã\ **WGS84**\ ãæ¬ä½ä¸­ï¼æå©ç¨®åº§æ¨çæ ¼å¼ãä½ è¦ä½¿ç¨åªç¨®é½å¯ä»¥ï¼GMT é½ææ¯æ´ãå¦å¤ä¹è«æ³¨æéè£¡çåº§æ¨æ¯ãç·¯åº¦å¨åï¼ç¶åº¦å¨å¾ããå¨ä¸è¡¨ä¸­ï¼ä¹èéäºå©å°çç¶ç·¯åº§æ¨ (åé²ä½å¶åæ¨äºå¥è³å°æ¸é»ç¬¬äºä½)ï¼ çºäºæ¹ä¾¿ä½¿ç¨éäºè³æï¼æåå¯ä»¥å»ºç«ä¸åç´æå­æä»¶ ``coord.txt``ï¼åæå©å°çåº§æ¨è³è¨è¤è£½å°æä»¶ä¸­å­æªï¼å¦æ­¤ä¸ä¾ä¾ GMT ä½¿ç¨çè³æè¡¨å°±å»ºç«å®æãä»¥ä¸æ¯ä½¿ç¨åé²ä½å¶åº§æ¨ç ``coord.txt`` å§å®¹ï¼ çè­å·´æ çé¢è¨­è¨èå°åçå¹¾ä½å¸å± ç®æ¨ ç´æ¥è§ç\ `æä»¤ç¨¿`_ ç¶ç·¯åº¦ (åé²ä½) ç¶ç·¯åº¦ (åº¦åç§) ç¹ªè£½å¾èå¤\ *çè­å·´æ* (Ulaanbaatar) å°ç¾å\ *è¥¿éå* (Seattle) ç\ `å¤§åè·¯å¾ <https://en.wikipedia.org/wiki/Great-circle_distance>`_ (**Great Circle** Route) è\ `æåç· <https://en.wikipedia.org/wiki/Rhumb_line>`_ (**Rhumb Line**)ãå¤§åè·¯å¾æçæ¯æ²¿èå¤§å (åå¾çºå°çåå¾ççå) åé²çè·¯å¾ï¼æåç·åæ¯å°æ¼ææçå­åç·ï¼äº¤è§çç¸ç­çè·¯ç·ãæ¬ç« å°åä½¿ç¨äºå©åä¸åçæå½±æ¹æ³ï¼ä¸åçºãè­ä¼¯ç¹ç­ç©æ¹ä½æå½±ã (**Lambert** azimuthal equal-area projection) ï¼ä¸åçºãéº¥å¡ææå½±ã(**Mercator** Projection)ãåä¸­èªªæäºå¹¾åç¹é»ï¼ ç¿é¡ è¥¿éå è§ç\ `æçµçå°å`_ é£æ¥å°è­ä¼¯ç¹ç­ç©æ¹ä½æå½±ä¸­å¿é» (æ¬ä¾ä¸­çºçè­å·´æ) çå¤§åè·¯å¾ææ¯ç´ç·ï¼æåç·åè®ææ²ç·ãéæ¯æ¯è¼è½ç´è§é£çµå®åçå¯¦éé·åº¦çä¸ç¨®æ¹æ³ï¼ä¹æ¯æå½±åç¨±çãæ¹ä½ãäºå­ç·£ç± (å¤§åè·¯å¾ä¿æå¨ç¸åæ¹ä½)ã Project-Id-Version: GMT æå­¸æå 1.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-01-14 19:37-0500
PO-Revision-Date: 2020-06-25 12:28-0400
Last-Translator: Whyjay Zheng <jhsttshj@gmail.com>
Language: en_US
Language-Team: English (United States)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 #
# GMT 6.0.0 Defaults file
#
# COLOR Parameters
#
COLOR_BACKGROUND               = black
COLOR_FOREGROUND               = white
COLOR_NAN                      = 127.5
COLOR_MODEL                    = none
... #(skipped) # (skipped)
gmt end
rm -rf gmt.conf    # <---- Remove the old GMT parameter file # (skipped)
gmt set FONT_ANNOT_PRIMARY          12p,20,#0D057A \
        FONT_TITLE                  30,Bookman-Demi,#0D057A \
        FORMAT_GEO_MAP              dddF \
        MAP_ANNOT_OBLIQUE           32 \
        MAP_FRAME_TYPE              plain \
        MAP_GRID_CROSS_SIZE_PRIMARY 8p \
        MAP_GRID_PEN_PRIMARY        thinner,#ED99F0 \
        MAP_TICK_PEN_PRIMARY        thicker,black \
        MAP_TITLE_OFFSET            0.5c \
        PS_PAGE_COLOR               ivory
# Note that I used "\" at the end of every line, meaning the gmt set command extends to the next line.
# (skipped) # ==== Setting variables ====
input_xy="coord.txt"
land_color="#CEB9A0"
rl_color="#FF0073"        # Rhumb line color
gc_color="#0044FF"        # Great circle color
# Writing the xy coordiantes of two cities to the $input_xy file
# If you have downloaded coord.txt, then you can just comment these four lines out.
xy_ulaanbaatar="47:55:0N, 106:55:0E"       # Ulaanbaatar coordinates
xy_seattle="47:36:35N, 122:19:59W"         # Seattle coordinates
echo $xy_ulaanbaatar > $input_xy
echo $xy_seattle    >> $input_xy

# ==== Setting GMT parameters ====
gmt set FONT_ANNOT_PRIMARY          12p,20,#0D057A \
        FONT_TITLE                  30,Bookman-Demi,#0D057A \
        FORMAT_GEO_MAP              dddF \
        MAP_ANNOT_OBLIQUE           32 \
        MAP_FRAME_TYPE              plain \
        MAP_GRID_CROSS_SIZE_PRIMARY 8p \
        MAP_GRID_PEN_PRIMARY        thinner,#ED99F0 \
        MAP_TICK_PEN_PRIMARY        thicker,black \
        MAP_TITLE_OFFSET            0.5c \
        PS_PAGE_COLOR               ivory

# ==== Begin to draw ====
gmt begin ulaanbaatar_seattle_gmt6 png

    # ==== Lower panel (Mercator) ====
    gmt basemap -R70/270/30S/70N -JM13c -B+tMercator
    gmt coast -Dl -A1000 -G$land_color -N1/thick,60 -Ba40f20g20 --MAP_GRID_PEN_PRIMARY=thicker
    gmt plot $input_xy -: -A -W1p,$rl_color    # Rhumb line
    gmt plot $input_xy -:    -W1p,$gc_color    # Great circle route
    gmt plot $input_xy -:    -Sa0.4c -Gblack
    echo "174 41 Rhumb Line"    | gmt text -F+f,18,$rl_color
    echo "174 61 Great Circle"  | gmt text -F+f,18,$gc_color

    # ==== Upper panel (Lambert) ====
    gmt basemap -Rg -JA106:55/47:55/13c -Yh+3c -B+tLambert --MAP_TITLE_OFFSET=0c
    gmt coast -Dl -A1000 -G$land_color -N1/thick,60 -Bxg60 -Byg30 --MAP_GRID_CROSS_SIZE_PRIMARY=0p
    gmt plot $input_xy -: -Ap -W1p,$rl_color    # Rhumb line
    gmt plot $input_xy -:     -W1p,$gc_color    # Great circle route
    gmt plot $input_xy -: -Sa0.4c -Gblack

    gmt text -F+a   << ANNOTEND
106.92 -30 0   30@.S
106.92 30  0   30@.N
60     15  70  60@.E
180    15  305 180@.
ANNOTEND

    gmt text -F+a+f << LABELEND
180    40  58  ,Bookman-DemiItalic,$rl_color   Rhumb Line
180    80  58  ,Bookman-DemiItalic,$gc_color   Great Circle
LABELEND

gmt end

# rm -rf gmt.conf   # Remove the old GMT parameter file $ gmt defaults -D 47.61, -122.33 47.92, 106.92 47.92, 106.92
47.61, -122.33 47:55:0N, 106:55:0E
47:36:35N, 122:19:59W 47Â° 36â² 35â³ N, 122Â° 19â² 59â³ W 47Â° 55â² 0â³ N, 106Â° 55â² 0â³ E GMT shared options: ``-X`` ``-Y`` ``-:`` GMT default settings and the ``gmt.conf`` file How GMT makes a map using a different projection system `Public domain country maps <http://ian.macky.net/pat/map/gq/gq.html>`_. ``basemap`` - set up mapping area, axes, and map frame ``coast`` - plot shorelines and borders ``defaults`` - **check GMT's default map parameters** ``plot`` - **plot points and lines using under a geographical coordinate system** ``set`` - **change GMT's default map parameters** ``text`` - **set text in detail on a map** Here's the content of ``coord.txt`` with the d/m/s coordinates. Commands and Techniques Let me emphasize that the first column is latitude (y) and the second column is longitude (x). This is opposite to the x-y order we used in the chapter :doc:`scatter_plot`. However, you'll see there is a way to specify the meaning of each column so that GMT can still recognize them correctly. In addition, we use commas to separate the columns here, which is acceptable for GMT too.  Tasks before plotting We will also change the GMT default settings including fonts, colors, and layout for this map. You will find more details in this chapter. How to set up a map layout More ways to specify geographical coordinates  City External command ``echo`` - pass input data through a pipe External command ``rm`` - **delete a file** (``del`` for Windows) A rhumb line is a straight line when the map is drawing using the Mercator projection, while the great circle route is a curved line on the same map. However, the great circle route is actually the shortest path between any two locations. First, we have to get the coordinates for Ulaanbaatar and Seattle. On their *Wikipedia* page we can find the latitude and longitude of both cities, which is a link to more information about coordinates under different projection systems. Here we have an example of Ulaanbaatar: Script Now let us see how GMT deals with the map layout. GMT uses many pre-defined option values so that uses don't need to set a lot of things up for making a map. However, if we want to have a more complex design such as multiple panels, different frame types, and tweaking font style, we have to adjust GMT's "user configuration." Also, in this chapter we will introduce the two major projection types used for geospatial data: cylindrical (Mercator) and planar (Lambert) and the associated settings in GMT.  Procedure How to change font style The final script for our map is: This instruction is for the Modern Mode in GMT 6. For making the same map using the GMT 6 Classic Mode or GMT 4-5, `Please go to this page <layout_design_gmt5.html>`_ (only final script available). Note that there are two formats of coordinates in the **WGS84** field. Either of them work in this example as GMT supports both formats. The other thing worth paying attention to is the coordinates are represented by "latitude-longitude". We have collected the coordinates of both places in the following table (rounded to the second decimal place):   We can create a text file ``coord.txt`` and save the coordinate information to the file to easily access them later with GMT. Here's the content of ``coord.txt`` with the decimal formatted coordinates. Ulaanbaatar Design Map Layout Goal Go to the final `Script`_ Latitude/Longitude (Decimal) Latitude/Longitude (Deg, Min, Sec) Draw the `Great Circle Route <https://en.wikipedia.org/wiki/Great-circle_distance>` and the `Rhumb Line <https://en.wikipedia.org/wiki/Rhumb_line>`_ between *Ulaanbaatar*, Mongolia, and *Seattle*, USA. A great circle route is the path along the great circle (the circle whose radius equals the radius of Earth), and a rhumb line is a path whose incident angle to any meridian is the same. The map of this chapter uses two different projections. The upper panel uses the **Lambert** azimuthal equal-area projection, and the lower panel uses the **Mercator** Projection. The map shows some interesting points: Exercise Seattle Check the `final map`_ The great circle route connecting any point to the center of the Lambert map (Ulaanbaatar in this example) is a straight line. On the other hand, the thumb line becomes a curved line in this case. You can see that a Lambert map does a better job of keeping the relative length of different paths, as well as their actual direction (which is why this projection is referred to as an azimuthal projection).  