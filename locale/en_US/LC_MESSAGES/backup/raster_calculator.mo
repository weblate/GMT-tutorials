��          �               l  !   m  0   �  &   �  (   �       %   .      T  �  u     &     -     F  9   S  	   �     �  $   �     �     �     �     �     	  �  	  !   �
  0   �
  &   �
  (        F  %   d      �  �  �     \     c     |  9   �  	   �     �  $   �     �          !     3     :   ``grdimage`` - 繪製著色影像 ``grdmath`` - **對網格檔進行數值運算** ``makecpt`` - 製作或調整色階檔 ``psconvert`` - 把 ps 檔轉成 png 檔 ``psscale`` - 繪製色階條 ``pstext`` - 在地圖上加入文字 ``psxy`` - 輸出檔頭與檔尾 out_ps="rosenvalle.ps"
putlabel="pstext -R -J -O -K -F+jCM+f14p,15,black"
psxy -R0/1/0/1 -JX1c -T -K -P > $out_ps


in_grd="rosenvalle.grd"
cpt="DEM_poster.cpt"

grdmath -R-2/2/-1/3 -I0.01 1 X SUB SQR 100 Y X SQR SUB SQR MUL ADD = $in_grd
grdimage $in_grd -R-2/2/-1/3 -JX3i -Y4i -O -K -C$cpt -Ba1 -BWSne >> $out_ps
psscale -O -K -C$cpt -D1.5i/-0.4i/2i/0.5ch -G0/3000 -Bxa1500 >> $out_ps
echo 0 -0.7 Topo \(Bathymetry\) | $putlabel >> $out_ps


in_grd2="rosenvalle_slope.grd"
cpt2="slope.cpt"
makecpt -Crainbow -T0/4000/500 -Z > $cpt2

grdmath $in_grd DDX SQR $in_grd DDY SQR ADD SQRT = $in_grd2
grdimage $in_grd2 -R -J -O -K -X4i -C$cpt2 -Ba1 -BWSne >> $out_ps
echo 0 -0.7 Surface slope | $putlabel >> $out_ps


in_grd3="rosenvalle_watersurface.grd"
cpt3="DEM_poster_waterlevel.cpt"
makecpt -C$cpt -G21/NaN -M --COLOR_BACKGROUND=cornflowerblue > $cpt3

grdmath $in_grd $in_grd 20 GT MUL 20 $in_grd 20 LE MUL ADD  = $in_grd3
grdimage $in_grd3 -R -J -O -K -X-4i -Y-4i -C$cpt3 -Ba1 -BWSne >> $out_ps
echo 0 -0.7 Topo \(Water surface\) | $putlabel >> $out_ps


in_grd4="rosenvalle_waterdepth.grd"
cpt4="DEM_poster_waterdepth.cpt"
makecpt -Cocean -I -T0/25/1 -Z > $cpt4

grdmath $in_grd3 $in_grd SUB  = $in_grd4
grdimage $in_grd4 -R -J -O -K -X4i -C$cpt4 -Ba1 -BWSne >> $out_ps
psscale -O -K -C$cpt4 -D1.5i/3.6i/2i/0.5ch -G0/20 -Bxa10 >> $out_ps
echo 0 -0.7 Water depth | $putlabel >> $out_ps


psxy -R0/1/0/1 -JX1c -O -T >> $out_ps

psconvert $out_ps -A -P -Tg 「」 使用的指令與概念 前置作業 外部指令 ``echo`` - 把資料輸入到管線命令中 指令稿 操作流程 本地圖的最終指令稿如下： 目標 直接觀看\ `指令稿`_ 網格計算機 習題 觀看\ `最終版地圖`_ Project-Id-Version: GMT 教學手冊 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-09 23:18-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 ``grdimage`` - 繪製著色影像 ``grdmath`` - **對網格檔進行數值運算** ``makecpt`` - 製作或調整色階檔 ``psconvert`` - 把 ps 檔轉成 png 檔 ``psscale`` - 繪製色階條 ``pstext`` - 在地圖上加入文字 ``psxy`` - 輸出檔頭與檔尾 out_ps="rosenvalle.ps"
putlabel="pstext -R -J -O -K -F+jCM+f14p,15,black"
psxy -R0/1/0/1 -JX1c -T -K -P > $out_ps


in_grd="rosenvalle.grd"
cpt="DEM_poster.cpt"

grdmath -R-2/2/-1/3 -I0.01 1 X SUB SQR 100 Y X SQR SUB SQR MUL ADD = $in_grd
grdimage $in_grd -R-2/2/-1/3 -JX3i -Y4i -O -K -C$cpt -Ba1 -BWSne >> $out_ps
psscale -O -K -C$cpt -D1.5i/-0.4i/2i/0.5ch -G0/3000 -Bxa1500 >> $out_ps
echo 0 -0.7 Topo \(Bathymetry\) | $putlabel >> $out_ps


in_grd2="rosenvalle_slope.grd"
cpt2="slope.cpt"
makecpt -Crainbow -T0/4000/500 -Z > $cpt2

grdmath $in_grd DDX SQR $in_grd DDY SQR ADD SQRT = $in_grd2
grdimage $in_grd2 -R -J -O -K -X4i -C$cpt2 -Ba1 -BWSne >> $out_ps
echo 0 -0.7 Surface slope | $putlabel >> $out_ps


in_grd3="rosenvalle_watersurface.grd"
cpt3="DEM_poster_waterlevel.cpt"
makecpt -C$cpt -G21/NaN -M --COLOR_BACKGROUND=cornflowerblue > $cpt3

grdmath $in_grd $in_grd 20 GT MUL 20 $in_grd 20 LE MUL ADD  = $in_grd3
grdimage $in_grd3 -R -J -O -K -X-4i -Y-4i -C$cpt3 -Ba1 -BWSne >> $out_ps
echo 0 -0.7 Topo \(Water surface\) | $putlabel >> $out_ps


in_grd4="rosenvalle_waterdepth.grd"
cpt4="DEM_poster_waterdepth.cpt"
makecpt -Cocean -I -T0/25/1 -Z > $cpt4

grdmath $in_grd3 $in_grd SUB  = $in_grd4
grdimage $in_grd4 -R -J -O -K -X4i -C$cpt4 -Ba1 -BWSne >> $out_ps
psscale -O -K -C$cpt4 -D1.5i/3.6i/2i/0.5ch -G0/20 -Bxa10 >> $out_ps
echo 0 -0.7 Water depth | $putlabel >> $out_ps


psxy -R0/1/0/1 -JX1c -O -T >> $out_ps

psconvert $out_ps -A -P -Tg 「」 使用的指令與概念 前置作業 外部指令 ``echo`` - 把資料輸入到管線命令中 指令稿 操作流程 本地圖的最終指令稿如下： 目標 直接觀看\ `指令稿`_ Raster Calculator 習題 觀看\ `最終版地圖`_ 