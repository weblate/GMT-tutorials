Þ    $      <              \  ì  ]  Þ  J  !   )
  4   K
  ×   
  F   X  %     %   Å  *   ë  !     >   8  z   w  $   ò          0    =  }   M  <   Ë  P     )  Y  '     	   «     µ     Î  Å   í     ³  ¨   À  '   i  d       ö          "     5     <    W    n      Þ    !   ó  4      ×   J   F   "!  $   i!  %   !  2   ´!  ,   ç!  R   "  z   g"  2   â"     #     -#    C#  g   Q$  Y   ¹$  V   %  :  j%  9   ¥&     ß&     î&  (   '  Ó   6'  	   
(  ª   (  2   ¿(  Å  ò(     ¸*     Ò*     ã*     ÿ*     +  b  +   # ==== è¨­å®é¡è²èå°æçåå®¶ ====
# mexico, panama, brazil
color1='#CD5C5C'
colorgroup1='MX,BR,PA'
# guatemala, venezuela, jamaica
color2='coral'
colorgroup2='GT,JM,VE'
# united states, puerto rico, salvador
color3='240/230/140'
colorgroup3='US,PR,SV'
# belize, french guiana, haiti, trinidad and tobago
color4='0/36/74/4'
colorgroup4='BZ,GF,HT,TT'
# honduras, colombia, cuba
color5='97-0.52-0.94'
colorgroup5='CO,CU,HN'
# nicaragua, guyana, bahamas
color6='250/138/255'
colorgroup6='BS,GY,NI'
# costa rica, suriname, dominican
color7='#8DC740'
colorgroup7='CR,DO,SR'
# other countries
color0='169'

# ==== ä¸»è¦æä»¤ ====
    # åºå
pscoast -R-100/1/-50/34r -JB-80.27/8.58/-8/24/6i -K -Dh \
        -Bafg -G${color0} -P > central_america.ps
    # åå®¶ä¸è²
pscoast -R -J -O -K -F${colorgroup1}+g${color1} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup2}+g${color2} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup3}+g${color3} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup4}+g${color4} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup5}+g${color5} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup6}+g${color6} >> central_america.ps
pscoast -R -J -O -F${colorgroup7}+g${color7} >> central_america.ps # mby.cpt by M. Burak YIKILMAZ
#
# (original title gmt_color.cpt)
#
# COLOR_MODEL = RGB
-8000   0   0   80      -6000   0   30  100
-6000   0   30  100     -4000   0   50  102
-4000   0   50  102     -2500   19  108 160
-2500   19  108 160     -150    24  140 205
-150    24  140 205     -50     135 206 250
-50     135 206 250     -10     176 226 255
-10     176 226 255     0       0   97  71
0       0   97  71      50      16  123 48
50      16  123 48      500     232 214 125
500     232 214 125     1200    163 68  0
1200    163 68  0       1800    130 30  30
1800    130 30  30      2800    161 161 161
2800    161 161 161     4000    206 206 206
4000    206 206 206     5000    255 255 255
B   -
F   -
N   128     128     128 $ pscoast -F+l | findstr /i japan $ pscoast -F+l | grep -i 'japan\|singapore\|zealand' $ pscoast -F+l | grep -i japan
List of ISO 3166-1 alpha-2 codes for DCW supported countries:

Africa [AF]:
Antarctica [AN]:
Asia [AS]:
Europe [EU]:
Oceania [OC]:
North America [NA]:
South America [SA]:
  JP    Japan $ pscoast -R-100/1/-50/34r -JM6i -FMX+g#CD5C5C -P > central_america.ps -Fä»£ç¢¼1,ä»£ç¢¼2,...+gå¡«è²+pç«ç­ ``grdimage`` - **ç¹ªè£½èè²å½±å** ``makecpt`` - **è£½ä½æèª¿æ´è²éæª** ``pscoast`` - **çºåå®¶ä¸è²** `ä¸è¼ ETOPO1 Bedrock netCDF æª`_ (383Mï¼è§£å£å¾ç´ 891M) color1='#CD5C5C'
colorgroup1='MX,BR,PA'
pscoast -R-100/1/-50/34r -JM6i -F${colorgroup1}+g${color1} -P > central_america.ps pscoast -Ggreen    # ...å¾çºçç¥ ä½¿ç¨çæä»¤èæ¦å¿µ åç½®ä½æ¥­ å¦å¤ï¼æåéæ¬¡ä¹æä½¿ç¨å° `cpt-city`_ ç ``mby`` è²éãä½ å¯ä»¥å¾\ `cpt-city ç¶²é  <http://soliton.vm.bytemark.co.uk/pub/cpt-city/mby/tn/mby.png.index.html>`_\ ä¸ä¸è¼ï¼\ ä¹å¯ä»¥ç´æ¥å¾\ :download:`éé <coloring_topography/mby.cpt>`\ ä¸è¼ã å æ­¤ï¼æåç GMT ç¹ªåè³æ¬ï¼æè©²ä¹è¦ç§å¦ä¸çé åºé²è¡ç¹ªåï¼ä¹å°±æ¯èªªç¨å¼ç¢¼çèµ·ä¾æé·éæ¨£ åå®¶çèè²ï¼å®ææ ¼ç·åæµ·åºå°å½¢é½è¦èæäº å¨ GMT 5.2 ä¹å¾ççæ¬ï¼``-F`` ææäº ``-E``ï¼ä½é¸é å§å®¹ä¸è®ã å¨æ¬ç« ä¸­ï¼æåä¸æ¨£æä½¿ç¨ `ETOPO`_ Bedrock è³æåº«ä¾ç¹ªè£½æµ·åºå°å½¢ãæé `ETOPO`_ çè©³ç´°èªªæï¼\ è«åé±ã\ :doc:`coloring_topography`\ ããæªæ¡å¯ä»¥å¨ `ETOPO`_ çç¶²ç«ä¸è¼ (ETOPO1 Bedrock -> grid-registered: netCDF)ï¼ææ¯ä½¿ç¨å¦ä¸å¿«éé£çµä¸è¼ï¼ å¨è³æ¬ä¸­ä½¿ç¨è®æ¸ä»¥ç¾åæç å°å½¢å å¦ä½æå®ä½åé¡è² å¦ä½è£½ä½èä¿®æ¹è²éæª æååä¾åæä¸ä¸ç®æ¨çå°åãå¨æ­¤å°åä¸­æå¾å¤ä¸åçåç´ ï¼ä¾ç§åºå®çé åºçå ã\ å¦æèªçæª¢æ¥ï¼éäºåç´ å¯ä»¥åæä¸ç¾¤ï¼ç±åºå±¤å°é å±¤åå¥çº æä½æµç¨ æ¬æ¬¡çä½åååï¼æ¯ ``-R-100/1/-50/34r``ï¼å¦ä»¥ä¸ *Google Map* æªåæç¤ºã\ æé ``-R`` çè©³ç´°èªªæï¼è«åé±ã\ :doc:`making_first_map`\ ãã æ ¼ç·ï¼å®è¦èå¨æµ·åºå°å½¢ä¸é¢ çºäºææçå¨å°åä¸åç¾è³æï¼é¡è²èç·æ¢æ¨£å¼æè¦è¬¹æé¸æãçºå°åæé¸\ åé©çéè²æ¯éèè¡ï¼å°åè£½ä½èéå¸¸é½æè±ä¸è¨±å¤æéï¼æå°åèª¿æ´æçèµ·ä¾\ æèª¿åãæèæçå¤è§ãéè£¡æåè¦ä»ç´¹å¦ä½å¨ GMT ä¸­æä½ç¸éè¨­å®ï¼\ è®ä½ è½å¤ æ´å¿«çæ¾å°å¿ç®ä¸­çå®ç¾éè²ã ç«ç­çå±¬æ§è¨­å® ç«ç­èèª¿è²æå·§ çå å¤ååå±¤ ç®æ¨ ç´æ¥è§ç\ `æä»¤ç¨¿`_ è£½ä½ä¸å¼µä¸­ç¾æ´²çå°åï¼æµ·åé¨ä»½çºåå±¤è¨­è²å°å½¢åï¼é¸åé¨ä»½åä¾åå®¶ä¾èè²ï¼\ å¦ä¸åæç¤ºãè¢«ä¸­ç¾å°å³½èå³¶å¶¼ç¾¤åèµ·ä¾çååçº\ `å åæ¯æµ· <https://zh.wikipedia.org/wiki/%E5%8A%A0%E5%8B%92%E6%AF%94%E6%B5%B7>`_ï¼\ èå·¦ä¸æ¹çæµ·ç£åçº\ `å¢¨è¥¿å¥ç£ <https://zh.wikipedia.org/wiki/%E5%A2%A8%E8%A5%BF%E5%93%A5%E6%B9%BE>`_ã\ åä¸­å¯ä»¥æ¾å°æ­¤ååçåå¹¾åæ¯è¼å¤§çåå®¶ï¼ä¹å¯ä»¥ç¼ç¾å åæ¯æµ·åå¢¨è¥¿å¥ç£ï¼\ é½æ¯æ±åæ¹çå¤§è¥¿æ´è¦æ·ºå¾å¤ã Project-Id-Version: GMT æå­¸æå 1.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-09 23:43-0400
PO-Revision-Date: 2018-08-31 08:36+0000
Last-Translator: Whyjay Zheng <jhsttshj@gmail.com>
Language: en_US
Language-Team: English (United States)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 # ==== Setting up colors and corresponding countries ====
# mexico, panama, brazil
color1='#CD5C5C'
colorgroup1='MX,BR,PA'
# guatemala, venezuela, jamaica
color2='coral'
colorgroup2='GT,JM,VE'
# united states, puerto rico, salvador
color3='240/230/140'
colorgroup3='US,PR,SV'
# belize, french guiana, haiti, trinidad and tobago
color4='0/36/74/4'
colorgroup4='BZ,GF,HT,TT'
# honduras, colombia, cuba
color5='97-0.52-0.94'
colorgroup5='CO,CU,HN'
# nicaragua, guyana, bahamas
color6='250/138/255'
colorgroup6='BS,GY,NI'
# costa rica, suriname, dominican
color7='#8DC740'
colorgroup7='CR,DO,SR'
# other countries
color0='169'

# ==== Main commands ====
    # basemap
pscoast -R-100/1/-50/34r -JB-80.27/8.58/-8/24/6i -K -Dh \
        -Bafg -G${color0} -P > central_america.ps
    # fill countries with colors
pscoast -R -J -O -K -F${colorgroup1}+g${color1} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup2}+g${color2} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup3}+g${color3} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup4}+g${color4} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup5}+g${color5} >> central_america.ps
pscoast -R -J -O -K -F${colorgroup6}+g${color6} >> central_america.ps
pscoast -R -J -O -F${colorgroup7}+g${color7} >> central_america.ps # mby.cpt by M. Burak YIKILMAZ
#
# (original title gmt_color.cpt)
#
# COLOR_MODEL = RGB
-8000   0   0   80      -6000   0   30  100
-6000   0   30  100     -4000   0   50  102
-4000   0   50  102     -2500   19  108 160
-2500   19  108 160     -150    24  140 205
-150    24  140 205     -50     135 206 250
-50     135 206 250     -10     176 226 255
-10     176 226 255     0       0   97  71
0       0   97  71      50      16  123 48
50      16  123 48      500     232 214 125
500     232 214 125     1200    163 68  0
1200    163 68  0       1800    130 30  30
1800    130 30  30      2800    161 161 161
2800    161 161 161     4000    206 206 206
4000    206 206 206     5000    255 255 255
B   -
F   -
N   128     128     128 $ pscoast -F+l | findstr /i japan $ pscoast -F+l | grep -i 'japan\|singapore\|zealand' $ pscoast -F+l | grep -i japan
List of ISO 3166-1 alpha-2 codes for DCW supported countries:

Africa [AF]:
Antarctica [AN]:
Asia [AS]:
Europe [EU]:
Oceania [OC]:
North America [NA]:
South America [SA]:
  JP    Japan $ pscoast -R-100/1/-50/34r -JM6i -FMX+g#CD5C5C -P > central_america.ps -F(code1),(code2),...+g(fill)+p(pen) ``grdimage`` - **plot colored image** ``makecpt`` - **Make or adjust a color ramp file** ``pscoast`` - **fill countries with colors** `Download ETOPO1 Bedrock in netCDF format`_ (383Mï¼will be 891M after extraction) color1='#CD5C5C'
colorgroup1='MX,BR,PA'
pscoast -R-100/1/-50/34r -JM6i -F${colorgroup1}+g${color1} -P > central_america.ps pscoast -Ggreen    # ... the later part is skipped Commands and Techniques Tasks before plotting In addition, we will also use the ``mby`` color ramp from the `cpt-city`_. You can download it from `the webpage of the cpt-city <http://soliton.vm.bytemark.co.uk/pub/cpt-city/mby/tn/mby.png.index.html>`_ or directly from :download:`here <coloring_topography/mby.cpt>`. Therefore, the commands in our GMT script should follow this order; i.e. your code will look like this: The patches of countries in various colors, which covered both topography and grid lines. If you are using GMT 5.2 or a later version, you should use ``-E`` instead of ``-F``.  In this chapter, we will continue to use the `ETOPO`_ bedrock database for plotting the bathymetry. For the detailed information about `ETOPO`_, please see ":doc:`coloring_topography`". The data can be downloaded from the website of `ETOPO`_ (ETOPO1 Bedrock -> grid-registered: netCDF), or from the following link: Use variables in a script to make your script look pretty Topography map How to specify colors on a map How to make and adjust a color ramp file Firstly let's take a look at out desired map. There are many different elements overlaid with a fixed order in the map. They can generally be classified into three groups, which are (from the bottom to the top): Procedure The extent of this map is ``-R-100/1/-50/34r``, shown as the following *Google Map* screen shot. If you don't know what ``-R`` is, please go to ":doc:`making_first_map`". Grid lines, over the topography of the ocean floor In order to show the data on a map effectively, we should select all the colors and line styles with discretion. Picking the right color and line combination for a map is truly an art - a map maker usually spends much time tweaking their map, and hopes that their map will look pleasing and comfortable. Here we are going to introduce how to manipulate the related settings in GMT, that will make you find your best combination for your map must faster. Setting up pen attributes Pen and Painting Overlay multiple map layers Goal Go to the final `Script`_ Make a map of central America. Ocean area is colorrd based on topography, and Land area is colorred based on countries, as the following map shows. The water area encircled by central America and many islands is `Caribbean Sea <https://en.wikipedia.org/wiki/Caribbean_Sea>`_\, and the bay area at the upper left corner is called the `Gulf of Mexico <https://en.wikipedia.org/wiki/Gulf_of_Mexico>`_. On this map, you can easily locate more than a dozen of major countries (in terms of area), and realize that both Caribbean Sea and the Gulf of Mexico are much shallower than the Atlantic Ocean in the northeast. 