Þ    a      $              ,  h  -  n          ]       þ	  B    /   Ö  '        .     À  <   X  4        Ê  U   O     ¥  ~   ¶  ,   5  *   b  /        ½     Í  6   U  B     ­   Ï  *   }  Z  ¨  à     $   ä  m   	  Ï  w  y   G  J   Á  [        h  {   ð  E   l  µ   ²     h  à  ë  G  Ì!     #  :  3#  I   n$     ¸$     Ñ$  »   T%  0   &    A&  Q  ]'  O   ¯)     ÿ)    *  Þ  +-  °   
/  ©  »/  =   e1  G   £1  9   ë1  ¶  %2  B   Ü3  E  4  c   e5    É5  `   ]7  Ë   ¾7  Í   8  	   X9  .  b9     :  $   :  ¤   Ã:  ä   h;  ;  M<    =  K  @  Z   ÚA    5B    ÇC    ÌD     fF  Ø   mF     FG  ñ   aG  Æ   SH     I     .I  a   5I     I     ­I  3   ÈI  m   üI  §  jJ  N   L  f   aL  q  ÈL  T   :N    N  o  )P  p   Q     
R  h  £R    T  M  ¬V  +   úY  '   &Z  }   NZ     ÌZ  :   N[  4   [     ¾[  o   C\     ³\  ~   Â\  ,   A]  *   n]  ,   ]     Æ]     Ó]  :   d^  L   ^  Á   ì^  /   ®_  <  Þ_  ã   a  (   ÿa     (b    «b  e   Æf  J   ,g  [   wg     Óg  {   [h  E   ×h  ñ   i     j  §  j    7l     »m  T  Õm  M   *o     xo  ¤   o  ´   5p  !   êp  f  q  £  sr  T   u     lu    u  ö  y  ì   	{  ò  ö{  >   é}  N   (~  &   w~  .  ~  3   Í  P    Z   R    ­  m   0  Æ     ¬   e           	   )      3  Ä   T  á       û  0    G  Ç  Y     ^  i  3  È  û  ü     ø  Ý   ý     Û  1  õ     '     Ç     ß  n   è     W     l  J     ^   Ñ  ­  0  Q   Þ  l   0  r          # (åç¥)
gmt begin windszzh.txtpeed_vs_temperature_gmt6 png
        # ==== ç¹ªé» ====
        gmt plot $zzh  -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf
        gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black

        # ==== ç°è²åç´èç· ====
        gmt plot -W0.03c,100,-- <<- LINEEND
        0 0
        0 7
        LINEEND
gmt end # ==== åä¾æ¡èåä¾å§å®¹ ====
gmt plot -W0.05c,black -G#E6F4F2 << BOXEND
16 5
22 5
22 6.5
16 6.5
BOXEND # ==== çé¢èä½ååè¨­å® ====
gmt basemap -R-1/23/0/7 -JX15c/10c -BWSne+t"January 2016" -Bxaf+l"Temperature (@.C)" -Bya2f+l"Wind Speed (m s@+-1@+)" # ==== è¨­å®è®æ¸ ====
zzh='zzh.txt'
suao='suao.txt'

gmt begin windspeed_vs_temperature png
    # ==== ç¹ªé» ====
    gmt plot $zzh  -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf
    gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black

    # ==== ç°è²åç´èç· ====
    gmt plot -W0.03c,100,-- << LINEEND
0 0
0 7
LINEEND

gmt end # ==== è¨­å®è®æ¸ ====
zzh='zzh.txt'
suao='suao.txt'
zzh_style="-Sc0.35c -G#58C73A -W0.03c,black"
suao_style="-Sd0.35c -G#3A6BC7 -W0.03c,black"

gmt begin windspeed_vs_temperature png
    # ==== çé¢èä½ååè¨­å® ====
    # -Baf ç¾å¨ææäº -Bxaf è -Bya2fï¼
    # ä½ å¯ä»¥åéçµ¦å® x è»¸è y è»¸ç aãfãg é¸é ï¼
    gmt basemap -R-1/23/0/7 -JX15c/10c -B+t"January 2016" \
                -Bxaf+l"Temperature (degree C)" -Bya2f+l"Wind Speed (m s-1)"
    # ==== ç¹ªé» ====
    gmt plot $zzh  $zzh_style
    gmt plot $suao $suao_style

    # ==== ç°è²åç´èç· ====
    gmt plot -W0.03c,100,-- << LINEEND
0 0
0 7
LINEEND

gmt end # ==== è¨­å®è®æ¸ ====
zzh='zzh.txt'
suao='suao.txt'
zzh_style="-Sc0.35c -G#58C73A -W0.03c,black"
suao_style="-Sd0.35c -G#3A6BC7 -W0.03c,black"

gmt begin windspeed_vs_temperature png
    # ==== çé¢èä½ååè¨­å® ====
    gmt basemap -R-1/23/0/7 -JX15c/10c -BWSne+t"January 2016" -Bxaf+l"Temperature (@.C)" -Bya2f+l"Wind Speed (m s@+-1@+)"

    # ==== ç¹ªé» ====
    gmt plot $zzh  $zzh_style
    gmt plot $suao $suao_style

    # ==== ç°è²åç´èç· ====
    gmt plot -W0.03c,100,-- << LINEEND
0 0
0 7
LINEEND

    # ==== åä¾æ¡èåä¾å§å®¹ ====
    gmt plot -W0.05c,black -G#E6F4F2 << BOXEND
16 5
22 5
22 6.5
16 6.5
BOXEND

    echo "17 6.05" | gmt plot $zzh_style
    echo "17 5.45" | gmt plot $suao_style
    echo "18 6.05 Zhuzihu" | gmt text -F+f14p+jML
    echo "18 5.45 Su'ao" | gmt text -F+f14p+jML
gmt end $ cut -d ',' -f 8,17 ä½ çæªæ¡.csv > zzh.txt $ echo "10.2 3.2" | gmt plot -é¸é å $ gmt info zzh.txt
zzh.txt: N = 31     <-0.4/17.8>     <0.2/6.3>
# æªå  è³æé»æ¸      ç¬¬ä¸æ¬æå°/æå¤§å¼  ç¬¬äºæ¬æå°/æå¤§å¼ $ gmt info zzh.txt suao.txt
dataset: N = 62     <-0.4/21.6>     <0.2/6.3>
#      è³æé»æ¸      ç¬¬ä¸æ¬æå°/æå¤§å¼  ç¬¬äºæ¬æå°/æå¤§å¼ $ gmt plot -é¸é å << END
...ä»»æçå¤è¡è³æ...
END $ gmt plot zzh.txt -R-1/23/0/7 -JX15c -Bafg -png zzh $ gmt plot zzh.txt -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf -png zzh
# -G: æ¨è¨å¡«è²
# -W: æ¨è¨å¤æ¡ç«ç­ -F+f[å­å½¢å±¬æ§]+j[å°é½é¨é»ä½ç½®]    # å¯¦éä¸ä¸åªéäºï¼ä½å¶é¤æ«ç¥ -Sä»£è[å°ºå¯¸] 14.6,3.6
15.7,0.2
16,0.3
17.7,0.3
17.8,0.7
# ....ä»¥ä¸ç¥....
# ç¬¬ 1 æ¬ï¼æ°£æº« (ææ°)ï¼ç¬¬ 2 æ¬ï¼é¢¨é (å¬å°º/ç§) :download:`suao.txt <scatter_plot/suao.txt>` :download:`zzh.txt <scatter_plot/zzh.txt>` GMT å±ç¨é¸é ï¼``-JX`` (ç´è§åº§æ¨ä½å) XY é»æ£ä½å ``<<-`` éå°åå­åææè³æçµæå­ååé¢ç ``tab`` åå¡ç§»é¤ï¼ä½¿ ``LINEEND`` çµæå­åè½å¤ æ­£ç¢ºçè¢«è®åã ``basemap`` - **è¨­å®ç¹ªååãåº§æ¨è»¸èéæ¡** ``info`` - **æ¥é±ç´æå­æ ¼å¼æ¸å¼è³ææªçåºæ¬è³è¨** ``plot`` **ç¡æ³åæç«ç·åç«é»**ãå¦æä½ æéæ¹é¢çéæ± (ä¾å¦ç¹ªè£½æç·å)ï¼éè¦ä½¿ç¨å©æ¬¡ ``plot`` æä»¤ï¼ç«å®ç·å¾åæé»ä¹æ¨ä¸å»ã ``plot`` - **ç¹ªè£½é»ãç·èå¤éå½¢** ``plot`` æ¯ç¨ä¾æé»è³ææç¹ªå°å°åä¸çå·¥å·ãå°æ¼ä¸è¬ä¸èå°çåº§æ¨ç¸éçè³æï¼å¨ç«åæç ``-J`` é¸é æ¯ ``-JX``ï¼GMT æä½¿ç¨å®ç´çç´è§åº§æ¨ä¾ç«åãè³æ¼è¦æéº¼æ±ºå® ``-R`` çç¯åï¼ä½ å¯ä»¥åä½¿ç¨ GMT å§éç ``info`` æä»¤ç°¡å®å°æ¥é±ä¸ä¸ç´æå­è³æçè³è¨ï¼åéæ¨£ï¼ ``plot`` é¤äºå¯ä»¥å¾æªæ¡ä¸­è®åè³æå¤ï¼ä¹å¯ä»¥å¾æ¨æºè¼¸å¥ (standard input, ``stdin``) è®åè³æãéæ¨£ä¸ä¾ï¼æåå°±å¯ä»¥ç´æ¥å¨è³æ¬æå½ä»¤åä¸­çµ¦å®åº§æ¨é»ãå¸¸è¦çä½æ³æå©ç¨®ï¼ ``text`` - **å¨åä¸æ¨è¨æå­** ``text`` ä¹å¯ä»¥è®ä½¿ç¨èä¸æ¬¡è¼¸å¥å¤åå­ä¸²ï¼æä»¥å¶å¯¦éå©è¡ ``text`` æä»¤ä¹å¯ä»¥å¯«æ ``ä»£è`` çºå®ä¸å­åçç¬¦èï¼èå°ºå¯¸æå®çæ±è¥¿åä¾ç¬¦èçä¸åèä¸åãå®æ´çä»£èåè¡¨å¯ä»¥å¨ `plot çèªªæé é¢ <https://docs.generic-mapping-tools.org/6.0/plot.html>`_\ æ¾å°ãèåä¾å­ï¼``-Sc0.25c`` æ¯æè³æé»è¨­çºç´å¾çº 0.25 cm çåå½¢ (``c``ï¼circle)ï¼è ``-Sd3c`` åæ¯å¤æ¥åç´å¾çº 3 cm çè±å½¢ (``d``ï¼diamond)ã**å¦æä¸çµ¦å°ºå¯¸çè©±ï¼GMT æå°æ¾è³ææªæ¡ä¸­çç¬¬ä¸æ¬ï¼ä¸¦ä¸ä»¥å¶æ¸å¼ç¶ä½å°æçè³æé»çå°ºå¯¸**ãéåè¦åå¨æåè¦ç«ä¸åå¤§å°çè³æé»æï¼éå¸¸æ¹ä¾¿ãå¨éè£¡ï¼æåçè³æåªæ x è y å©æ¬ï¼å æ­¤æææçé»è¨­æä¸æ¨£å¤§å°å°±è¡äºãå¦å¤ï¼ä½ æç¼ç¾ç¹ªååç®åæ¯ 15 cm x 15 cm çæ­£æ¹å½¢ï¼å¦æä½ æ³è¦ä»»æèª¿æ´ X æ Y è»¸çé·åº¦çè©±ï¼éè¦å¨ ``-JX`` å¾åéæå®ï¼å¦ ``-JX15c/10c`` ææ X è»¸è¨­æ 15 cmï¼Y è»¸è¨­æ 10 cmãè®æåä½¿ç¨ä»¥ä¸æ°å¢çé¸é ï¼éç«ä¸æ¬¡ççï¼ `é »ææ¥å ±ï¼2016 å¹´ 1 æ 24 æ¥æ°è <http://www.appledaily.com.tw/realtimenews/article/new/20160124/782086/>`_ã echo "17 6.05" | gmt plot $zzh_style
echo "17 5.45" | gmt plot $suao_style echo "18 6.05 Zhuzihu" | gmt text -F+f14p+jML
echo "18 5.45 Su'ao"   | gmt text -F+f14p+jML gmt basemap -R-1/23/0/7 -JX15c/10c -Baf
gmt plot $zzh  -Sc0.35c -G#58C73A -W0.03c,black
gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black gmt plot $zzh  -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf
gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black gmt text -F+f14p+jML << TEXTEND
18 6.05 Zhuzihu
18 5.45 Su'ao
TEXTEND ãä»¥å©åä¸åæ°£è±¡ç«ç 2016 å¹´ 1 æé¢¨éèæ°£æº«è§æ¸¬è³æï¼ç¹ªè£½ XY æ£ä½åãææ° 0 åº¦ä»¥ç°è²åç´ç·è¡¨ç¤ºãåä¾ãåº§æ¨è»¸çå·²æ¸æ¥çæ¨ç¤ºãã ä¸è¬ä¾èªªï¼ç«¹å­æ¹çæ°£æº«è¦æ¯èæ¾³ä¾å¾å·ä¸é»ï¼èä¸èæ¾³å¨ä¸æä»½éæè¶éææ° 20 åº¦ä»¥ä¸çæ¥å­ã ä¸ç¥ä½ æ¯å¦è¦ºå¾ï¼ä»¥ä¸è³æ¬å¯¦å¨èªªä¸ä¸ç¾è§ï¼è¦æ¹åä¹å¾éº»ç©ï¼åé¡çåå ï¼åºå¨ç¬¬ä¸å ``plot`` æä»¤ãçºäºè¨­å® ``-R``ã``-J`` èä¸äºé¡å¤è¨­å®ï¼ç¬¬ä¸å ``plot`` æä»¤ç¡¬æ¯ææ¯ç¬¬äºå ``plot`` è¦é·ãèæ®å°éå©åæä»¤å¨ç¹ªåä¸­æç­éçææ (é½æ¯ç«ä¸ä¸çµæ¸æçæ£ä½å)ï¼å¦æææ´é©ç¶çæ¹å¼ï¼è½å¤ åæè©²è¨­å®çé¸é è¨­å®å¥½ï¼è®å©å ``plot`` çææçèµ·ä¾æ´ç´è§å°±å¥½äºã äºå¯¦ä¸ï¼ä½ ä¹å¯ä»¥ä¸ç¨åªé¤ä»»ä½æªé ­åæ¬ä½ï¼åªè¦æè³æå­æ ``.csv`` æªæå¶ä» GMT è½æ¥åçç´æå­æ ¼å¼ï¼GMT èªå·±å°±æå¸¶æåè½é¸é ä¾è®åè³æè¡¨ä¸­çç¹å®æ¬ä½ï¼è«åè `GMT å®æ¹æåçèªªæ <https://docs.generic-mapping-tools.org/latest/cookbook/file_formats.html>`_ã ä»¥ä¸è³æ¬çåºåå¦ä¸ï¼ ä½¿ç¨å°ç£\ *ä¸­å¤®æ°£è±¡å±*\ çæ°£è±¡è³æï¼è£½ä½é¢¨é (Wind Speed) å°æ°£æº« (Temperature) ç XY æ£ä½åãåä¸­ä½¿ç¨äº 2016 å¹´ 1 æï¼ä½æ¼ç«¹å­æ¹ (Zhuzihu) èèæ¾³ (Su'ao) å©åæ¸¬ç«çæ¯æ¥è³æï¼ä¸¦ç¨ä¸åé¡è²èä¸åæ¨è¨è¡¨ç¤ºãå¨åä¸­å¯ä»¥çåºå¹¾é»æè¶£çäºæï¼ ä½¿ç¨æ¨æºè¼¸å¥éå°åæ­éçµæçè¼¸å¥å­å (``<<`` ç¬¦è)ï¼ ä½¿ç¨çæä»¤èæ¦å¿µ ä½¿ç¨ç®¡ç·å½ä»¤ï¼æåä¸åæä»¤çè¼¸åºå³çµ¦ ``plot``ãä¾å¦å¨åç¨®ä½æ¥­ç³»çµ±çµç«¯æ©é½æç ``echo`` æä»¤ï¼ ä¾ç§ ``info`` çè¼¸åºè³æï¼æåå¯ä»¥ç¥éææçè³æé»ä¸å®è½ç«å¨ ``-R-1/23/0/7`` çç¯åå§ (x å¾ -1 è³ 23ï¼y å¾ 0 è³ 7)ãé¦¬ä¸ä¾ç«ç«çæåçè³æï¼ ä¿®æ¹å¾çåº§æ¨è»¸çèµ·ä¾å°±æ¸ç½å¤äºï¼ å©ç¨®å¯«æ³ææä¸æ¨¡ä¸æ¨£ï¼ç«¯çä½ åæ­¡åªç¨®é½å¯ä»¥ãäºå¯¦ä¸ï¼``text`` ä¹æ¥åå¤æ¬çè¼¸å¥ï¼éæ¨£ä¸ä¾ä½ å¯ä»¥ææææ³è¼¸å¥çæå­é½å¯«å¨æªæ¡å§ï¼ååå¥æå®ä¸åçé¡è²ãæå­æ ¼å¼ç­ç­ãè©³ç´°èªªæè«åé±\ :doc:`layout_design`ã å¶ä¸­ ``å­å½¢å±¬æ§`` ççµ¦å®æ¹æ³éå¸¸é¡ä¼¼ç«ç­å±¬æ§ï¼ç± ``å­é«å¤§å°,å­é«åç¨±,é¡è²`` ä¸ååæ¸ææ§æãéè£¡æåæ«æåªæ¹åå­é«å¤§å°çº 14 é» (``14p``)ï¼å¶é¤ç¶­æé è¨­ã(æ´å¤çµ¦å®å­å½¢å±¬æ§çç´°ç¯è«åé±\ :doc:`layout_design`)ã``å°é½é¨é»ä½ç½®`` åæ¯æ²¿ç¨ä¸ä¸ç« ã\ :doc:`pen_and_painting`\ ãæå°ç\ **ä¹å®®æ ¼é¨é»**\ ä½ç½®ä¾åè¨´ GMT æå­çå°é½æ¹æ³ï¼ä¾å¦æåç­ä¸è¦ä½¿ç¨ç ``+jML`` æè®æå­ãé å·¦å°é½ãåç´ç½®ä¸­ãçµ¦å®çåº§æ¨é»ãè¼¸å¥æå­çæå®æ´é«ä¾çå°±å¦ä¸æç¤ºï¼ å¶ä¸­ç¬¬ 8 æ¬åç¬¬ 17 æ¬åå¥å°±æ¯ãæ°£æº«ãèãé¢¨éãçè³æã åç½®ä½æ¥­ å¯ï¼åº§æ¨è»¸æ¨ç±¤æåæåºç¾å¨ä¸ä¸åå·¦å³å©éï¼çèµ·ä¾æé»å¤é¤ï¼å¦å¤ï¼ç¸±è»¸çå®ä½ ``m s-1`` (å¬å°º/ç§) ç ``-1`` æè©²è¦ä¸æ¨ï¼ææ¯æ­£ç¢ºçå¯«æ³ãé¤æ­¤ä¹å¤ï¼å¦æ ``degree C`` è½å¤ ç´æ¥è¡¨ç¤ºæ ``Â°C`` çè©±ï¼æ´é¡¯å¾ç°¡æ½æåãè¦åå°ä»¥ä¸ä¿®æ¹ä¸¦ä¸å°é£ï¼é¦åï¼æåå¯ä»¥ä½¿ç¨ ``-BWSne`` é¸é è®å·¦éåä¸æ¹é¡¯ç¾åº§æ¨è»¸åå¶æ¨ç±¤ï¼èå³éåä¸æ¹åªé¡¯ç¤ºåº§æ¨è»¸ãå¦æè¦å¨æå­ä¸­é¡¯ç¤ºä¸ä¸æ¨ï¼éè¦å ä¸ **GMT å°ç¨çæ§å¶å­å** ``@``ã``@+`` æ¯ä¸æ¨ï¼``@-`` åæ¯ä¸æ¨ãè¢«ä¸ä¸æ¨æ§å¶å­ååèµ·ä¾çå­å°±æé¡¯ç¤ºçºä¸ä¸æ¨ãå æ­¤ï¼æååªè¦æ ``m s-1`` æ¹æ ``m s@+-1@+`` å³å¯ãææ°åº¦æ¸çç¬¦èä¹å¯ä»¥ä½¿ç¨æ­¤æ§å¶å­åä¾é¡¯ç¤ºï¼ä»£èæ¯ ``@.``ã å´æ ¼èªªä¾ï¼``@+`` æ§å¶çæ¯ä¸æ¨çéåèééï¼å æ­¤ ``m s@+-1`` å¶å¯¦å°±è½ä½¿ ``-1`` ä¸æ¨ãç¶èï¼ç­èå»ºè­°éæ¯é¤æè¯å¥½ç¿æ£ï¼é ­è·å°¾é½å ä¸æ§å¶å­åï¼ä¸åªææ¼å¤è®è·ä¿®æ¹ï¼ä¹è· `LaTeX <https://zh.wikipedia.org/wiki/LaTeX>`_ çèªæ³æ¦å¿µé¡ä¼¼ãæéæ§å¶å­åå¯æä½çå¶ä»å­ä¸²è¨­å®ï¼è«åè `GMT Cookbook <https://docs.generic-mapping-tools.org/latest/cookbook/features.html#character-escape-sequences>`_ã å¨ ``<<`` ç¬¦èå¾å¯ä»¥çºä»»æçå­ç¬¦ä¸²ï¼æ­¤ä¾çº ``END``ãå¾ä¸ä¸è¡éå§ï¼ä¸ç´å°ç¬¬äºå ``END`` çåä¸è¡ï¼é½æè¢«ç¶ä½ ``plot`` çè¼¸å¥è³è¨ã å¨æ¸æåæä¸­æéè¦ä¹æå¸¸ç¨çåè¡¨å½¢å¼ï¼é XY æ£ä½åè«å±¬ãéç¶ GMT æ¯ç¹ªè£½å°åçå°éå·¥å·ï¼ä½å®ä»ç¶è½èçè·å°çç©ºéç¡éçè³æï¼ä¸¦ååºç²¾ç¾çè¦è¦ºååæãå¨æ¬ç« ä¸­ï¼å°æè§£èªªç¨ä¾ç¹ªè£½é»ãç·ãé¢çéè¦æä»¤ ``plot`` (èç GMT å§çº ``psxy``)ï¼ä»¥åä¸äºè¡ä¼¸çä½åè¨­å®æå·§ãéäºæå·§å¨èçå°çç©ºéè³ææä¹é½é©ç¨ã å¤é¨æä»¤ ``echo`` - **æè³æè¼¸å¥å°ç®¡ç·å½ä»¤ä¸­** å¦ä½å¾è¢å¹æè³æ¬è¼¸å¥è³æå° GMT ä¸­ (æ¨æºè¼¸å¥éå°å) å¦ä½è¼¸å¥ ASCII (ç´æå­) æ ¼å¼çè³æå° GMT ä¸­ å¦æ­¤ä¸ä¾è³æå°±æ´çæ GMT çè¼¸å¥æ ¼å¼äºãåæ¬¡ä½¿ç¨åæ¨£æµç¨ï¼å¯ä»¥åå¾ä½æ¼å®è­ç¸£ (YiLanCounty) çèæ¾³ (SU-AO) æ¸¬ç«çç¸åè³æï¼æå®å½åçº ``suao.txt``ãGMT ä¸¦ä¸ä¾æå¯æªåè®åç´æå­è³æï¼ä½æ¯ç¸å°çï¼å®åªæ¥ååç¨®æ¬ä½åéç¬¦èï¼\ **ç©ºæ ¼**ã**Tab**ã**éè**\ è\ **åè**ãå¨æè³æè¼¸å¥ GMT åï¼åå¿ç¢ºèªä½ çè³æè½è¢« GMT æ­£ç¢ºè®åã å¦æ­¤ä¸ä¾ï¼(10.2, 3.2) å°±æè¢«ç¶æåº§æ¨é»ç«å¨åä¸ã å¦æ­¤ä¸ä¾ï¼å©è¡ ``plot`` æä»¤åèªçåç¨å°±ä¸ç®äºç¶ï¼å®ååªæ¯èçä¸¦ç¹ªè£½ä¸åçè³æé»ï¼ä½ç¹ªè£½çæ¹æ³æ¯ç¸åçãä½ å¯ä»¥æææé¸é èèªæ³æ ¼å¼é½äºç¸å°é½ä»¥æ±ç¾è§ï¼èææéç¨çè¨­å®ï¼åæ¬ ``-R``ã``-J``ã``-B`` ç­ï¼å¨é¨é½ä¸å° ``basemap`` å°±å°äºã æåå¯ä»¥æå°åçéç¨é¸é ç§»å° ``basmap`` ä¸­ï¼å æ­¤ä»¥ä¸æä»¤ä¹å¯ä»¥å¯«æéæ¨£ æåéæ¬¡ä½¿ç¨çè³ææ¯\ **ä¸­å¤®æ°£è±¡å±çå¤©æ°£è§æ¸¬ç´é**\ ãéäºè³æå¯ä»¥å¾ä¸­å¤®æ°£è±¡å±å»ºç½®çã\ `è§æ¸¬è³ææ¥è©¢ç³»çµ± <http://e-service.cwb.gov.tw/HistoryDataQuery/index.jsp>`_\ ãåå¾ãé¸æä½æ¼èºåå¸ (TaipeiCity) çç«¹å­æ¹ (ZHUZIHU) æ¸¬ç«ï¼è³ææ ¼å¼çºãæå ±è¡¨ãï¼æéçº 2016 å¹´ 1 æï¼æä¸æ¥è©¢éå¾ï¼æè©²æçå°å¦ä¸é é¢ï¼ æä»¥ä¸æ´åæ´çå°è³æ¬ä¸­ï¼ãçé¢èä½ååè¨­å®ãçé¨ä»½å°±æè®æéæ¨£ï¼ æç¬¬ä¸åãæªé ­åã(æ¬ä½åç¨±) åªé¤ï¼ãå¦å­æ°æªãçºéèåéæª (``.csv`` æª)ï¼åä½¿ç¨ shell æä»¤æä½éèåéæªãä¾å¦å¨å¤§é¨åç Linux shell ä¸ï¼å¯ä»¥ä½¿ç¨ æè¡¨æ ¼å¨é¸å¾è¤è£½è²¼ä¸å° *Microsoft Excel* æ *Libre Office Calc* ä¹é¡çè©¦ç®è¡¨è»é«ï¼è³æå°±æèªåå°å°ä¸åçæ¬ä½ãæ¥ä¸ä¾ï¼ä½ å¯ä»¥é¸æä»¥ä¸å©ç¨®ä½æ³çä»»ä¸ç¨®ï¼ æä»¤ç¨¿ æ¥ä¸ä¾ï¼åä¾æ¡ä¸­éè¦æ¾å¥ä¹åä½¿ç¨éçç¬¦èèç¸å°æçæå­èªªæãç¬¦èåæ¨£å¯ä»¥éé ``plot`` ç¹ªè£½ï¼éæ¬¡æåä½¿ç¨ ``echo`` æä»¤èç®¡ç·å½ä»¤ï¼ä¾æåé¢ç¨çç¬¦èç«å°åä¾æ¡ä¸­ãç¶ç¶ï¼ä½ å¿é è¦èªå·±æ±ºå®ç¬¦èåºç¾çåº§æ¨ï¼å¦ä¸æç¤ºï¼ æä½æµç¨ æ¬å°åçæçµæä»¤ç¨¿å¦ä¸ï¼ æ¬æå­¸é©ç¨æ¼ GMT 6 çç¾ä»£æ¨¡å¼ãå¦é åé± GMT 6 (å³çµ±æ¨¡å¼) è GMT 4-5 ç¹ªè£½ç¸ä¼¼å°åçæç¨ï¼\ `è«è³éè£¡ <scatter_plot_gmt5.html>`_ã æ¬ç« ä½¿ç¨çè³æäºå¯¦ä¸æ¯ä¾ç§æéæåºçï¼æ¯æ¥åªæä¸åæ¸¬éæ¸å¼ãå æ­¤ï¼è«å©ç¨æ¬ç« ä¸­æä¾çæ¸æï¼ç«åºç«¹å­æ¹èèæ¾³æ¸¬ç«å¨ 2016 å¹´ 1 æä»½çæ°£æº«æ¯æ¥è®åç\ **æç·å**ã æ³¨æå¨è¼¸å¥å¤è¡è³æçæåï¼è³æåçµæå­ååé¢ä¸è½æä»»ä½ç©ºæ ¼ï¼éå°±æ¯çºä»éº¼ä»¥ä¸çè³æ¬æä¸è¡ä¸ç¸®æçåå ãå¦æä½ è¦ºå¾éæ¨£ä¸ç¾è§ï¼å¯ä»¥ä½¿ç¨å¦ä¸ç¨®æ¨æºè¼¸å¥éå°åå­å ``<<-``ï¼ä¸éä½ ç\ **ç¸®æå­ç¬¦éå®åªè½ä½¿ç¨ tab**ï¼å¦ä¸æç¤ºï¼ çºäºå®æ XY æ£ä½åï¼æåæå¾éå¾å ä¸åä¾ï¼åè¨´è®èå©ç­ä¸åè³æä»£è¡¨çæç¾©ãGMT æ¬èº«å¶å¯¦åæ ``legend`` æä»¤ï¼ç¨ä¾ç¹ªè£½è±ªè¯çåä¾ï¼ä½å¨æ¬ä¾å­ä¸­ï¼æåå°æç¤ºç¯å¦ä¸ç¨®æ¯è¼ãåæ³çé¼ãï¼ä½æ¯è¼çºç´è§çä½æ³ï¼éç¨®ä½æ³å°æ¼ç°¡å®çåä¾ç¹ªè£½æ¯ç¶½ç¶½æé¤ãé¦åï¼æåè¦ç«ä¸ååä¾æ¡æ¶ï¼``plot`` åæåæ¬¡æ´¾ä¸ç¨å ´ãå¦æè¦ç¨ ``plot`` ç«å°éçå¤éå½¢ï¼åªè¦æå®ææçé é»åº§æ¨ï¼ç¶å¾è¼ä»¥ ``-G`` æå®å¡«è²ï¼åä¸­ææçé é»å°±æé£èµ·ä¾å½¢æå¤éå½¢ãä»¥ä¸çè³æ¬çæ®µï¼æä»¥ (16, 5)ã(22, 5)ã(22, 6.5) å (16, 6.5) çºé é»ï¼ç«ä¸åé¡è²çº ``#E6F4F2`` çç©å½¢ãä½ å¯ä»¥ææ­¤çæ®µæå¨ ``gmt end`` ä¹åï¼ çºäºå®ææ¬ç« ç®æ¨ï¼æåéè¦å¨ *x = 0* ä¹èç«ä¸æ¢ç°è²çåç´èç·ï¼ä»¥è¡¨ææä¸åé»æº«åº¦ä½æ¼é¶åº¦ãéç¨ ``plot`` é è¨­çç¹ªç·æ¨¡å¼èä¸è¿°çç¬¬äºç¨®ä½æ³ï¼å°±å¯ä»¥ç°¡å®çç«åºãå¨ä»¥ä¸çè³æ¬ä¸­ï¼æåé ä¾¿æç¬¬äºçµæ¸æä¹ç«ä¸å»äºï¼ä½¿ç¨æ¨è¨æ¯èè²çè±å½¢ï¼ çºäºæ¹ä¾¿èµ·è¦ï¼ä½ ä¹å¯ä»¥ç´æ¥å¾ä»¥ä¸é£çµåå¾æ¬ç« ç¯æä½¿ç¨çæªæ¡ï¼ ç¾å¨è³æ¬çç¬¬ä¸åæä»¤æ¯ä»¥ ``basemap`` éé ­ãç¶ç¶ï¼æåå¯ä»¥å¨éåæä»¤ä¸­ä¸ä½µè¨­å®æ¨é¡èåº§æ¨è»¸æ¨ç±¤ãå¨ã\ :doc:`making_first_map`\ ãä¸­ï¼æåææå°æ¨é¡å¯ä»¥ä½¿ç¨ ``-B+t`` æ·»å ï¼èå¨ã\ :doc:`editing_cpt_colorbar`\ ãä¸­ï¼æåä¹æå°äºè¦ä½¿ç¨ ``-B[xæy]+l`` æ·»å åº§æ¨è»¸çæ¨ç±¤ãå æ­¤ï¼æåå°±ä¾æ·»å ä¸äºæå­èªªæå§ï¼ ç±æ¼ç¬¬ä¸åç¬¬äºæ¬çæ¸å¼æåå¥è¢«ç¨å¨ x è»¸å y è»¸ï¼æåé¦¬ä¸å°±å¯ä»¥ä¾ç§æå¤§åæå°å¼æ±ºå® ``-R`` çç¯åã``info`` æä»¤ä¹å¯ä»¥æ¥åå¤æ¼ä¸åçè¼¸å¥æªï¼åªè¦æææªæ¡çæ¬ä½æ¸éç¸åå³å¯ãå¦ä¸æç¤ºï¼ ç«å®ç¬¦èå¾ï¼åªè¦åæ¨ä¸æå­èªªæï¼æ¬ç« ç®æ¨å°±å¤§ååæãGMT å·æ ``text`` æä»¤ï¼å¯ä»¥å¨æå®çåº§æ¨æºä¸çµ¦å®çæå­ã``text`` çç¨æ³è ``plot`` æ¥µçºç¸ä¼¼ï¼åªä¸éè³å°è¦æä¸æ¬è¼¸å¥è³æï¼**åå©æ¬çº xy åº§æ¨ï¼ç¬¬ä¸æ¬çºæ¬²é¡¯ç¤ºçæå­**ãå¦å¤ï¼``text`` éå·æå°æçæå­æ ¼å¼èª¿æ´é¸é  ``-F``ã``-F`` ä¸æ¯è¼éè¦çé¸é çº ç®æ¨ ç´æ¥å¨è©¦ç®è¡¨è»é«ä¸­åªé¤ä¸è¦çè³æï¼åªçãæ°£æº«ãèãé¢¨éãå©æ¬ãæç¬¬ä¸åãæªé ­åã(ä¹å°±æ¯æ¬ä½åç¨±) ä¹åªé¤ï¼æ¥èãå¦å­æ°æªãçºéèåéæª (``.csv`` æª)ã ç´æ¥è§ç\ `æä»¤ç¨¿`_ ç«¹å­æ¹æä¸å¤©çæº«åº¦æå°äºææ° 0 åº¦ä»¥ä¸ãäºå¯¦ä¸ï¼éå¤©æ¯ç«¹å­æ¹ç½éäº 11 å¹´å¾ï¼ååº¦ä¸éªçæ¥å­\ [#]_ãéäºåãè¶ç´å¯æµãå½±é¿çè³æé»ï¼çèµ·ä¾å°±åæ¯æ´åè² ç¸éè¶¨å¢çé¢ç¾¤å¼ã ç¬¬ä¸è¡ææ (18, 6.05) è¨­çº ``Zhuzihu`` (ç«¹å­æ¹) æå­çæå·¦å´ï¼èç¬¬äºè¡åæ¯ä½¿ç¨ç¸åçæä»¤è¨­å® ``Su'ao`` (èæ¾³) æå­åºç¾çå°æ¹ï¼åä¾å°æ­¤å°±è¨­è¨å®æï¼ ç¹ªè£½ XY æ£ä½å ç¿é¡ èçå®ç ``zzh.txt`` æªå¯ä»¥ç´æ¥ä½¿ç¨æå­ç·¨è¼¯å¨æéï¼åå¹¾æ¬æè©²æé·éæ¨£ è£½ä½ç°¡æçåä¾ è§ç\ `æçµçåç`_ è¨­å®åº§æ¨è»¸æ¨ç±¤èç¹æ®æå­çèçæ¹æ³ è«å©ç¨ ``plot`` ç«åºã`å¤§è¡ä¹æ <https://zh.wikipedia.org/wiki/%E5%A4%A7%E8%A1%9B%E6%98%9F>`_ãã éæåï¼ç¸½ç®è¼ªå° ``basemap`` æä»¤ä¸å ´ï¼``basemap`` æ¯\ **å°éç¨ä¾è¨­å®åºåèéæ¡æ¨£å¼**\ çæä»¤ãå¨ç­çè³æ¬ä¸­ï¼æåå¯ä»¥ééå¶ä»æä»¤éå¸¶ç ``-B`` ææ¯å¶ä»é¸é ä¾è¨­å®åºåèéæ¡ï¼ä½æ¯ç¶è³æ¬ä¸é·ï¼ææ¯ç¶ä½ æ³è¦èª¿æ´è¨±å¤æéçé è¨­é¸é æï¼ä½¿ç¨ ``basemap`` å¯ä»¥è®ä½ çè³æ¬çèµ·ä¾æ´æ¸æ°ææãè®æååæ¬¡åå°éå©è¡æä»¤ éæ¢ç°è²çç·å¯¬åº¦æ¯ 0.03 cmï¼ä¸¦ä¸é£æ¥ (0, 0) è (0, 7) å©é»ã é¸æäºé©ç¶çæ¨è¨æ¨£å¼èå¡«è²ï¼èç²ä¸é»çæ¨è¨æ¡ç·ï¼çèµ·ä¾å°±æç¾è§è¨±å¤ã éç¶è³ææ¯ç«ä¸å»äºï¼ä¸ééä¸¦ä¸æ¯æåæ³è¦çæ¨£å­...éæ¯å çº ``plot`` çé è¨­ç¹ªåæ¨¡å¼çº\ **æç·å**\ ï¼ææææçé»ä»¥ç·é£æ¥èµ·ä¾ï¼å¦ææååªæ³è¦ ``plot`` ç«é»ï¼å¿é è¦å ä¸ ``-S`` é¸é ãæ­¤é¸é é¤äºä½¿ ``plot`` è½ææ\ **æ£ä½å**\ æ¨¡å¼å¤ï¼éå¯ä»¥ä½¿ç¨ä»¥ä¸èªæ³è¨­å®è³æé»çæ¨£å¼ï¼ é¢¨éèæ°£æº«çä¾åç¾è² ç¸éï¼ä¹å°±æ¯èªªï¼æ°£æº«è¶ä½ï¼é¢¨éè¶å¿«ã Project-Id-Version: GMT æå­¸æå 1.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-01-14 19:37-0500
PO-Revision-Date: 2020-03-22 05:41-0400
Last-Translator: Whyjay Zheng <jhsttshj@gmail.com>
Language: en_US
Language-Team: English (United States)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 # (skipped)
gmt begin windszzh.txtpeed_vs_temperature_gmt6 png
        # ==== Scatter plot ====
        gmt plot $zzh  -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf
        gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black

        # ==== Gray vertical line ====
        gmt plot -W0.03c,100,-- <<- LINEEND
        0 0
        0 7
        LINEEND
gmt end # ==== Legend box and its content ====
gmt plot -W0.05c,black -G#E6F4F2 << BOXEND
16 5
22 5
22 6.5
16 6.5
BOXEND # ==== Settings about the map ====
gmt basemap -R-1/23/0/7 -JX15c/10c -BWSne+t"January 2016" -Bxaf+l"Temperature (@.C)" -Bya2f+l"Wind Speed (m s@+-1@+)" # ==== Setting variables ====
zzh='zzh.txt'
suao='suao.txt'

gmt begin windspeed_vs_temperature png
    # ==== Scatter plot ====
    gmt plot $zzh  -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf
    gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black

    # ==== Gray vertical line ====
    gmt plot -W0.03c,100,-- << LINEEND
0 0
0 7
LINEEND

gmt end # ==== Setting variables ====
zzh='zzh.txt'
suao='suao.txt'
zzh_style="-Sc0.35c -G#58C73A -W0.03c,black"
suao_style="-Sd0.35c -G#3A6BC7 -W0.03c,black"

gmt begin windspeed_vs_temperature png
    # ==== Settings about the map ====
    # -Baf now becomes -Bxaf and -Bya2f
    # and you can specify a, f, and g options for x and y axes separately!
    gmt basemap -R-1/23/0/7 -JX15c/10c -B+t"January 2016" \
                -Bxaf+l"Temperature (degree C)" -Bya2f+l"Wind Speed (m s-1)"
    # ==== Scatter plot ====
    gmt plot $zzh  $zzh_style
    gmt plot $suao $suao_style

    # ==== Gray vertical line ====
    gmt plot -W0.03c,100,-- << LINEEND
0 0
0 7
LINEEND

gmt end # ==== Setting variables ====
zzh='zzh.txt'
suao='suao.txt'
zzh_style="-Sc0.35c -G#58C73A -W0.03c,black"
suao_style="-Sd0.35c -G#3A6BC7 -W0.03c,black"

gmt begin windspeed_vs_temperature png
    # ==== Settings about the map ====
    gmt basemap -R-1/23/0/7 -JX15c/10c -BWSne+t"January 2016" -Bxaf+l"Temperature (@.C)" -Bya2f+l"Wind Speed (m s@+-1@+)"

    # ==== Scatter plot ====
    gmt plot $zzh  $zzh_style
    gmt plot $suao $suao_style

    # ==== Gray vertical line ====
    gmt plot -W0.03c,100,-- << LINEEND
0 0
0 7
LINEEND

    # ==== Legend box and its content ====
    gmt plot -W0.05c,black -G#E6F4F2 << BOXEND
16 5
22 5
22 6.5
16 6.5
BOXEND

    echo "17 6.05" | gmt plot $zzh_style
    echo "17 5.45" | gmt plot $suao_style
    echo "18 6.05 Zhuzihu" | gmt text -F+f14p+jML
    echo "18 5.45 Su'ao" | gmt text -F+f14p+jML
gmt end $ cut -d ',' -f 8,17 yourfile.csv > zzh.txt $ echo "10.2 3.2" | gmt plot [-options] $ gmt info zzh.txt
zzh.txt: N = 31     <-0.4/17.8>     <0.2/6.3>
# Filename  Datapoints      Column1-Max/Min  Column2-Max/Min $ gmt info zzh.txt suao.txt
dataset: N = 62     <-0.4/21.6>     <0.2/6.3>
#      Datapoints      Column1-Max/Min  Column2-Max/Min $ gmt plot -options << END
...Multi-line data table...
END $ gmt plot zzh.txt -R-1/23/0/7 -JX15c -Bafg -png zzh $ gmt plot zzh.txt -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf -png zzh
# -G: Marker filling
# -W: Marker frame pen -F+f[word_attributes]+j[anchor_point]    # There are more in fact, but we are not going to talk about them here -S[code][size] 14.6,3.6
15.7,0.2
16,0.3
17.7,0.3
17.8,0.7
# ....(skipped)....
# Column 1: Temperature (Celcius); Column 2: Wind Speed (m/sec) :download:`suao.txt <scatter_plot/suao.txt>` :download:`zzh.txt <scatter_plot/zzh.txt>` GMT shared options: ``-JX`` (Cartesian plot) Scatter Plot ``<<-`` redirection characters remove any ``tab`` blocks at the beginning of a line so that ``LINEEND`` ending characters can be read correctly. ``basemap`` - **set up mapping area, axes, and map frame** ``info`` - **display basic information from a text-based numeric data file** ``plot`` **can not draw lines and points at the same time** If you want to do this (for example, when making a line chart), you need to use ``plot`` twice, putting lines first and points later. ``plot`` - **plot points, lines, and polygons** ``plot`` is a tool for plotting point data on a map. When plotting non-spatial data, we use ``-JX`` as the ``-J`` option, and GMT will use Cartesian coordinates to set up the figure. But what about ``-R``? You can use the built-in GMT command ``info`` to check the information of the text data real quick, like this: In addition to loading data from a file, ``plot`` can also reads data from the standard input (``stdin``). By doing this, we are able to give coordinates in the script or the terminal. There are two common ways to achieve this: ``text`` - **Make text labels in a map** ``text`` also accepts multi-line data input. So these two lines of ``text`` commands can be rewritten using the stdin redirection: ``code`` is a single character indicating different shapes, and what is referred to as ``size`` varies when the shape changes. The full list of the ``code`` is available at the `manual page of plot <https://docs.generic-mapping-tools.org/6.0/plot.html>`_. For example, ``-Sc0.25c`` means to plot data with circles (``c``) with a diameter of 0.25 cm, and ``-Sd3c`` means diamonds (``d``) whose circumcircle size is 3 cm. **If size is omitted, GMT will find the third column in the data table and use the number from there as the size of each point**. This rule is especially convenient when we want to plot points with different sizes. Here our data table only has two columns -- x and y -- so that all the points will be in the same size. Also, you may find that the map now is a 15-by-15 cm square. If you would like to adjust the length of the x or y axis separately, you have to specify that after ``-JX``. For example, ``-JX15c/10c`` sets the x-axis length at 15 cm and the y-axis length at 10 cm. Use these new options and draw our figure again: `Apple Daily, 2016/1/24 <http://www.appledaily.com.tw/realtimenews/article/new/20160124/782086/>`_ã echo "17 6.05" | gmt plot $zzh_style
echo "17 5.45" | gmt plot $suao_style echo "18 6.05 Zhuzihu" | gmt text -F+f14p+jML
echo "18 5.45 Su'ao"   | gmt text -F+f14p+jML gmt basemap -R-1/23/0/7 -JX15c/10c -Baf
gmt plot $zzh  -Sc0.35c -G#58C73A -W0.03c,black
gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black gmt plot $zzh  -R-1/23/0/7 -JX15c/10c -Sc0.35c -G#58C73A -W0.03c,black -Baf
gmt plot $suao -Sd0.35c -G#3A6BC7 -W0.03c,black gmt text -F+f14p+jML << TEXTEND
18 6.05 Zhuzihu
18 5.45 Su'ao
TEXTEND "Make an XY scatter plot using the wind speed and temperature data recorded in January 2016 from two weather stations. Gray dashed vertical line represents the zero degrees Celcius. Information is given in the legend and in the axis labels." The temperature in Zhuzihu is usually lower than Su'ao. Also, there are still few days warmer than 20 degrees Celcius in Su'ao. What do you think about the current script? For me, this doesn't look so pretty because of its first ``plot`` command. It is much longer than the second ``plot`` command because we have to set up ``-R``, ``-J``, and some other things for the first time. Since these two commands are doing quite the same thing, it would be better to set up other options before the first ``plot`` comes so that they can be straightforward.  Actually, you can choose not to delete any headers and columns. As long as you save your data as a ``.csv`` file or other GMT-acceptable text format, there are options in the GMT commands that can parse the datasheet and only load part of the dataset you want. Please see `GMT Official Manual <https://docs.generic-mapping-tools.org/latest/cookbook/file_formats.html>`_ for more details. Here's the output figure: Using the data from the *Central Weather Bureau*, Taiwan, Make an X-Y scatter plot showing wind speed versus temperature. We use the daily weather data in January 2016 from two weather stations: Zhuzihu (ç«¹å­æ¹) and Su'ao (èæ¾³). Each station is labeled with a distinct color and marker. We can see something interesting from the plot: Redirect the standard input using the ``<<`` characters at the end of a line: Commands and Techniques Use the pipe command and pass the output from the previous command to ``plot``. For example, this shows the ``echo`` command that is available in many OS terminals: According to the output message from ``info``, we know that all the data points can be shown within ``-R-1/23/0/7`` (x from -1 to 23; y from 0 to 7). Let's take a look at our data: Now, these axes look much better. This has the same effect from the first method we used in the chapter, so it is only a question which style you like more. Also, ``text`` accepts the input data with more than 3 columns so that you can writing everything down in the text file and assign each line with a distinct color, word attributes, etc. Please see :doc:`layout_design` for more details. The way to specify ``word attributes`` is similar to that to specify pen attributes. It consists of 3 parameters: ``font size, font name, color``. Here we only change the font size to 14 points (``14pt``) and leave the other settings by default. (See  :doc:`layout_design` for more details about the word attributes.) ``Anchor point`` follows in concent from the previous chapter :doc:`pen_and_painting`. It uses a **2-character combination** to tell GMT how to align the text. For example, ``+jML`` (which we are going to use here) will align the left side of the text and the (horizontal) center to the given coordinates. The full command to input text will look like this: Here the columns 8 and 17 are the data of temperature and wind speed, respectively.  Tasks before plotting Hmm, now the axis labels appear at all sides, which is a bit redundant. And the unit of the vertical axis ``m s-1`` (m/s) is not correct writing; the ``-1`` here should be superscripted. In addition, if we can rewrite ``degree C`` as ``Â°C``, it would be more clear to read. It's not hard to make these changes. First, we can use the ``-BWSne`` option to make axis ticks and labels appear at the west and the south side. Only the axis lines would show up at the east and the north side. If you want to superscript/subscript characters, you need to use the **GMT control character** ``@``. ``@+`` is to toggle superscription on/off, and ``@-`` is to toggle subscription on/off. Any letters enclosed by the control characters will be superscripted/subscripted. Therefore, we can change ``m s-1`` to ``m s@+-1@+`` to achieve our goal. The degree symbol is also available using the control character -- it's ``@.``. Strictly speaking, ``@+`` toggles the superscription on/off so that ``m s@+-1`` would suffice for our need. However, I still suggest to add the control characters at both ends so that it's easier to read and edit. This style also resembles the `LaTeX <https://en.wikipedia.org/wiki/LaTeX>`_ writing guide. For other details regarding what the GMT control character can do, please see the `GMT Cookbook <https://docs.generic-mapping-tools.org/latest/cookbook/features.html#character-escape-sequences>`_. The string after the ``<<`` characters can be anything you like. We use ``END`` here, for example. Starting from the next line, all the content here until the last line before we meet ``END`` again will be used as the data for ``plot``. The most common and important graph type for data analysis is definitely X-Y scatter plots. We have learned that GMT is excellent for making maps, but in fact, it is also capable of processing non-spatial data and visualized them pretty well. In this chapter, we will introduce a command used to draw points, lines, and polygons: ``plot`` (or ``psxy`` in older versions of GMT). We will also show some associated tricks for plotting figures, which are useful for both spatial and non-spatial data.  External command ``echo`` - **pass input data through a pipe** How to import data to GMT via terminal or a script (standard input, aka stdin) How to import ASCII (text) data to GMT Now we are done setting data up to the GMT-compatible input format. Using the same workflow again, we can also get the dataset from the Su'ao (SU-AO) station (YiLanCounty at the first dropdown menu). Rename the processed GMT-compatible to ``suao.txt``. GMT doesn't need the ``.txt`` file extension when loading text data, but you have to make sure you use one of the following four characters to separate your columns: **space**, **tab**, **comma**, or **semicomma**. Before plotting the data, Remember to make sure your data can be loaded by GMT correctly.  Hence, (10.2, 3.2) will be plotted as a data point. Now it makes more sense to these two lines of ``plot`` commands: they read and plot data points in the same way, but using different markers and colors. You can also align all the options to make your script prettier. Remember: just toss all general options, like ``-R``, ``-J``, ``-B``, to the ``basemap`` command, and you are all set! We can move all the general settings to the ``basemap`` command, and the script becomes to We will use the data from the **Central Weather Bureau's observations**. The dataset is available at the `CWB observation data inquire system <http://e-service.cwb.gov.tw/HistoryDataQuery/index.jsp>`_. Select "TaipeiCity", "ZHUZIHU", and "monthly data" in the dropdown menu, and specify the time to January 2016. Press the "Query (æ¥è©¢)" button, and you should see the following page: Let's modify our script based on the changes above and the "Settings about the map" section will become this: Delete the header row (names of the columns), and save it as a ``.csv`` comma-separated file. Then use shell commands to process the CSV file. For example, you can use this in the most Linux shells: Select all content in the sheet, copy and paste them to an application like *Microsoft Excel* or *Libre Office Calc*. Next, you can choose one of the following two methods: Script Now we have to put the previously used markers and the corresponding labels. ``plot`` can draw the markers for us. This time, we use ``echo`` and the pipe commands to plot the symbols in the legend box. Of course, you have to determine their coordinates first. Like this: Procedure The final script for our map is: This instruction is for the Modern Mode in GMT 6. For making the same map using the GMT 6 Classic Mode or GMT 4-5, `Please go to this page <scatter_plot_gmt5.html>`_ (only final script available). The data used in this chapter are timely ordered. They only have one measurement each day. Please use the same data to plot a **line chart** showing the temperature vs time in January 2016 for both Zhuzihu and Su'ao stations. Note that when entering multi-line data in the script, no space is allowed at the beginning of any line, including the ending characters. This is why we don't indent those three lines in the script. If you think this isn't that beautiful, there is another stdin redirection symbol ``<<-`` you can use, but keep in mind that **you can only use tab as the indentation character** with this symbol, as shown here: To finalize our scatter plot, we need to add a legend telling readers the meanings of the two datasets. GMT has ``legend`` command to draw legends as fancy as you like, but here in this example, we will show you how to make a simple legend using a more straightforward method. It is much easier to learn than ``legend`` for a simple legend. To begin with, we need a legend box, and ``plot`` can do the job. To draw a closed polygon using ``plot``, we have to assign all the vertex points and specify the ``-G`` option in the command. And then, it will connect all the points by the given order and form a polygon. The following script snippet uses (16, 5), (22, 5), (22, 6.5), and (16, 6.5) as the vertices and fills the rectangular polygon with the color ``#E6F4F2``. You can insert this snippet before ``gmt end``: One of the chapter goals is to draw a gray vertical line at *x = 0*, which represents a point with temperature below the freezing point. We can simply draw this using the default mode of ``plot`` and the second way described above. In the following script, we also plot the second dataset using the blue diamond as point marks. For your convenience, you can also download the data used in this chapter from this link: Now the script begins with a ``basemap`` option. We can set up the title and the axis label in this line as well. In :doc:`making_first_map`, we learned how to add a title using ``-B+t``; and in :doc:`editing_cpt_colorbar`, we also mentioned that the axis label is governed by ``-B[x_or_y]+l``. Follow these instructions and add some text in the map: Since the values from the first and the second column will be used for x and y, we can determine the range of ``-R`` based on their minimum and maximum values. ``info`` command can also accept more than one input files as long as all the files have the same amount of columns. The syntax goes the following: After drawing the symbols, the final last goal in this chapter is to put labels explaining them. GMT has ``text`` command to show text at given coordinates. ``text`` is similar to ``plot`` in terms of the syntax, but you need at least three columns in your input data instead of two. **The first two columns are the x-y coordinates, and the third column is the text to be labeled**. Also, ``text`` has its own option ``-F`` to adjust the details of the text. Some important options under the ``-F`` flag are Goal Delete all unnecessary data in the software except for the columns for Temperature and Wind Speed. Delete the header row (the first row with names of the columns) as well. Then save it as a ``.csv`` comma-separated file.  Go to the final `Script`_ There was one day when the temperature in Zhuzihu dropped below 0 degrees Celcius. In fact, this is a special snow day since Zhuzihu had had no snowfall for 11 years before 2016 [#]_. The temperature on that day, influenced by a "super winter front," looks like an outlier in the overall scattering trend. In the first line, ``Zhuzihu`` is left aligned to (18, 6.05). The second line follows the same way, but the aligned point has shifted. Now your legend is done! Plot a 2-D scatter plot Exercise The output file ``zzh.txt`` can be opened directly in a text editor. The first few rows should look like this: Make a simple legend Check the `final figure`_ How to place an axis label and how to deal with special characters/formats Please draw the `Star of David <https://en.wikipedia.org/wiki/Star_of_David>`_ using ``plot``. It's finally time to introduce the ``basemap`` command! ``basemap`` lets you set up, of course, the basemap and the frame style. In a short script, we can use the ``-B`` option in many commands to adjust the basemap settings. However, when your script gets longer, or there are many settings about your map, I would suggest using ``basemap`` since it would make your script clear and more readable. Let's revisit these two lines: The width of the gray line is 0.03 cm. It connects two points: (0, 0) and (0, 7). Now the figure looks much better after changing a good combination of marker fill, style, and a thicker pen. Ok, there are data in the figure, but this isn't what we expected. This is because the default ``plot`` mode is **line chart**, which connects all the data points with lines. If we want only points using ``plot``, we have to add the ``-S`` option. This option turns ``plot`` into the **scatter plot mode** and has the following syntax to set up the style of data points: There is a negative correlation between wind speed and temperature; that is, the lower the temperature, the faster the wind blows. 