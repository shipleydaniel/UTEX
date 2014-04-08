// Copyright(C)2010-2011 CSSMenuTools. All rights reserved.
// http://www.cssmenutools.com
//ProductID:MTLB
// Trial copy.
var MUTMJLD={dummy:0,
VERSION:'1.2.0.0',
CSS_Placement:2,
PreloadImage:'http://web.biosci.utexas.edu/utex/images/LightBox/ajax-loader.gif',
Position:0,
X:100,
Y:100,
Is_Fixed:false,
Width:435,
Height:485,
IsClickClose:true,
BGColor:'#000000',
BorderStyle:'image',
BorderColor:'#282828',
BorderWidth:5,
ShadeColor:'#000000',
ShadeOpacity:70,
TBarHeight:50,
TBarAlignment:1,
TBarColor:'#282828',
TBarImage:'',
TBarFont:'Verdana,Arial,Helvetica,sans-serif',
TBarFontSize:11,
TBarItalic:false,
TBarBold:true,
TBarFontColor:'#ffffff',
TBarIconPrev:'&../images/LightBox/mtlb_prev.gif',
TBarIconPrevMO:'&../images/LightBox/mtlb_prevmo.gif',
TBarIconNext:'&../images/LightBox/mtlb_next.gif',
TBarIconNextMO:'&../images/LightBox/mtlb_nextmo.gif',
TBarIconClose:'&../images/LightBox/mtlb_close.gif',
TBarIconCloseMO:'&../images/LightBox/mtlb_closemo.gif',
TLImage:'http://web.biosci.utexas.edu/utex/images/LightBox/tl.png',
TImage:'http://web.biosci.utexas.edu/utex/images/LightBox/t.png',
TRImage:'http://web.biosci.utexas.edu/utex/images/LightBox/tr.png',
LImage:'http://web.biosci.utexas.edu/utex/images/LightBox/l.png',
RImage:'http://web.biosci.utexas.edu/utex/images/LightBox/r.png',
BLImage:'http://web.biosci.utexas.edu/utex/images/LightBox/bl.png',
BImage:'http://web.biosci.utexas.edu/utex/images/LightBox/b.png',
BRImage:'http://web.biosci.utexas.edu/utex/images/LightBox/br.png',
HTImage:15,
HBImage:15,
WLImage:15,
WRImage:15,
END_PARAMETERS:1,
CurrList:null,
CurrInd:0,
imgH:0,
imgW:0,
bFirstOpen:true,
xB:0,
yB:0,
PreloadImg:null,
BWidth:100,
BHeight:100,
time:null,
browser:function(){var ua=navigator.userAgent.toLowerCase()
var ind=ua.indexOf('gecko')
this.opera=ua.indexOf('opera')>=0
this.safari=ua.indexOf('safari')>=0
this.ie=document.all&&!this.opera
this.ie6=this.ie&&ua.indexOf('msie 6')>0
this.ie7=this.ie&&ua.indexOf('msie 7')>0
this.compatMode=document.compatMode=="CSS1Compat"
this.ieCanvas=this.compatMode?document.documentElement:document.body
return this},
setPathAdjustment:function(ID){var sl=''
var sc=document.getElementsByTagName('script')
for(var i=0;i<sc.length;i++){if(sc[i].innerHTML.search(ID)>-1)sl=sc[i].src}this.SCRIPT_LOCATION=sl.substr(0, sl.lastIndexOf('/')+1)},
adjustPath:function(path){var idf=path.charAt(0)
if(idf=='*'||idf=='&')return this.SCRIPT_LOCATION+path.substr(1)
return path},
addLoadEvent:function(f){var done=0
function w(){if(!done){done=1
f()}}if(document.addEventListener){document.addEventListener('DOMContentLoaded', w, false)}if(this.br.ie&&window==top)(function(){try{document.documentElement.doScroll('left')}catch(e){setTimeout(arguments.callee, 0)
return}w()})()
var oldf=window.onload
if(typeof oldf!='function'){window.onload=w}else{window.onload=function(){try{oldf()}catch(e){}w()}}},
addResizeEvent:function(f){var oldf=window.onresize
if(typeof oldf!='function'){window.onresize=f}else{window.onresize=function(){try{oldf()}catch(e){}f()}}},
addScrollEvent:function(f){var oldf=window.onscroll
if(typeof oldf!='function'){window.onscroll=f}else{window.onscroll=function(){try{oldf()}catch(e){}f()}}},
init:function(){var m=this
m.br=new m.browser
this.setPathAdjustment('MTLB_MUTMJLD')
m.addLoadEvent(m.onload)
m.addResizeEvent(m.oResize)
m.addScrollEvent(m.oScroll)},
onload:function(){setTimeout('MUTMJLD.start()',0)},
start:function(){var m=this
m.TBarIconPrev=m.adjustPath(m.TBarIconPrev)
m.TBarIconPrevMO=m.adjustPath(m.TBarIconPrevMO)
m.TBarIconNext=m.adjustPath(m.TBarIconNext)
m.TBarIconNextMO=m.adjustPath(m.TBarIconNextMO)
m.TBarIconClose=m.adjustPath(m.TBarIconClose)
m.TBarIconCloseMO=m.adjustPath(m.TBarIconCloseMO)
var targets=document.getElementsByName('MTLB_MUTMJLD')
for(var i=0;i<targets.length;i++){targets[i].onclick=this.show}m.Preload()},
show:function(){var m=MUTMJLD
var e=this
m.CurrList=eval(e.id+'list');var len=m.CurrList.length; if(len==0)return false;for(var i=0;i<len;i++)m.CurrList[i][0]=m.adjustPath(m.CurrList[i][0])
m.CurrInd=0;if(!m.lbox){m.create();}if(m.CurrList.length==1){if(m.inext)m.inext.style.display='none';if(m.iprev)m.iprev.style.display='none';}else{if(m.inext)m.inext.style.display='';if(m.iprev)m.iprev.style.display='';}if(m.lbox){m.ShowFade(m.overlay, m.ShadeOpacity, 1000)}var et=e.firstChild;if(!et||(et&&et.tagName!='IMG'))et=e;m.xB=m.getLeft(et);m.yB=m.getTop(et);m.lbox.style.top=m.yB+'px';m.lbox.style.left=m.xB+'px';m.lbox.style.margin='0px';m.bFirstOpen=true;if(m.tbar)m.tbar.style.display='none';m.setSize(100,100,false);m.changeImage(m.CurrList[m.CurrInd]);return false;},
ShowFade:function(o, opacity, t){var old=parseFloat(o.style.opacity)*100;if(o.style.display!='block')o.style.display='block';var tbeg=new Date;if(!t)t=1000;if(o.tmr)clearTimeout(o.tmr);o.tmr=setTimeout(function(){var p=(new Date-tbeg)/t;if(p>1)p=1;var d=old+(opacity-old)*p;o.style.opacity=d/100;o.style.filter='alpha(opacity='+d+')';if(p==1){clearTimeout(o.tmr);if(0==d)o.style.display='none';}else o.tmr=setTimeout(arguments.callee, 10)}, 10);},
zoomLb:function(o, pos, img, ipos, tb, dur, f){var oldpos=new Object;var oldipos=new Object;for(var i in pos)oldpos[i]=parseInt(o.style[i]);for(var i in ipos)oldipos[i]=parseInt(img.style[i]);var tbeg=new Date;if(o.ztmr)clearTimeout(o.ztmr);o.ztmr=setTimeout(function(){var p=(new Date-tbeg)/dur;if(p>1)p=1;var d=((Math.sin((p-0.5)*Math.PI)/2)+0.5);for(var i in pos)o.style[i]=(pos[i]-oldpos[i])*d+oldpos[i]+'px';for(var i in ipos)img.style[i]=(ipos[i]-oldipos[i])*d+oldipos[i]+'px';img.parentNode.style.height=parseInt(o.style.height)-tb+'px';MUTMJLD.setImagePos(parseInt(img.style.width), parseInt(img.style.height), tb);if(p==1){clearTimeout(o.ztmr);if(f)f();}else o.ztmr=setTimeout(arguments.callee, 10);}, 10);},
create:function(){var m=this;m.overlay=document.createElement('div');var stl=m.overlay.style;stl.display='none';stl.opacity=0;if(m.br.ie){var pageSize=new m.getPageSize();var scrollPos=new m.getScrollPos();stl.left=scrollPos.scrollX+'px';stl.top=scrollPos.scrollY+'px';stl.position='absolute';stl.width=pageSize.winWidth+scrollPos.scrollX+'px';stl.height=pageSize.winHeight+scrollPos.scrollY+'px';}else{stl.position='fixed';stl.left='0px';stl.top='0px';stl.width='100%';stl.height='100%';}stl.zIndex=1000
stl.backgroundColor='#000000'
m.TLDiv=document.createElement('div')
m.TLDiv.className='MTLBMUTMJLDtl'
m.TDiv=document.createElement('div')
m.TDiv.className='MTLBMUTMJLDtop'
m.TRDiv=document.createElement('div')
m.TRDiv.className='MTLBMUTMJLDtr'
m.LDiv=document.createElement('div')
m.LDiv.className='MTLBMUTMJLDleft'
m.RDiv=document.createElement('div')
m.RDiv.className='MTLBMUTMJLDright'
m.BLDiv=document.createElement('div')
m.BLDiv.className='MTLBMUTMJLDbl'
m.BDiv=document.createElement('div')
m.BDiv.className='MTLBMUTMJLDbottom'
m.BRDiv=document.createElement('div')
m.BRDiv.className='MTLBMUTMJLDbr'
m.lbox=document.createElement('div')
stl=m.lbox.style
stl.position='absolute'
stl.width=m.BWidth+'px';stl.height=m.BHeight+'px';stl.top=m.HTImage+'px'; stl.left=m.WLImage+'px';stl.zIndex=1001;stl.borderStyle='none'
var lboxHTML="<div class=\"MTLBMUTMJLDcontent\"><div class=\"MTLBMUTMJLDdivimg\" id=\"MTLBMUTMJLDdivimg\"><img class=\"MTLBMUTMJLDimage\" id=\"MTLBMUTMJLDimg\" src=\"\" alt=\"\"/><img class=\"MTLBMUTMJLDimagef\" id=\"MTLBMUTMJLDimgf\" src=\"\" alt=\"\"/></div><div class=\"MTLBMUTMJLDpreloader\" id=\"MTLBMUTMJLDpreloader\"></div></div><div id=\"MTLBMUTMJLDtitlebar\"  class=\"MTLBMUTMJLDtitlebar\"><div class=\"MTLBMUTMJLDtext\" id=\"MTLBMUTMJLDtext\">"+m.CurrList[0][1]+"</div><div class=\"MTLBMUTMJLDicons\" id=\"MTLBMUTMJLDicons\"><img id=\"MTLBMUTMJLDiprev\" class=\"MTLBMUTMJLDicon MTLBMUTMJLDprev\" src=\""+m.TBarIconPrev+"\" alt=\"Previous\" onmouseover=\"this.src='"+m.TBarIconPrevMO+"'\" onmouseout=\"this.src='"+m.TBarIconPrev+"'\" onclick=\"MUTMJLD.prev();event.cancelBubble=true;\" /><img id=\"MTLBMUTMJLDinext\" class=\"MTLBMUTMJLDicon MTLBMUTMJLDnext\" src=\""+m.TBarIconNext+"\" alt=\"Next\" onmouseover=\"this.src='"+m.TBarIconNextMO+"'\" onmouseout=\"this.src='"+m.TBarIconNext+"'\" onclick=\"MUTMJLD.next();event.cancelBubble=true;\" /><img class=\"MTLBMUTMJLDicon MTLBMUTMJLDclose\" src=\""+m.TBarIconClose+"\" alt=\"Close\" onmouseover=\"this.src='"+m.TBarIconCloseMO+"'\" onmouseout=\"this.src='"+m.TBarIconClose+"'\" onclick=\"MUTMJLD.close();event.cancelBubble=true;\" /></div></div>";m.lbox.innerHTML=lboxHTML;document.body.appendChild(m.overlay);document.body.appendChild(m.lbox);var p=m.lbox;p.appendChild(m.TLDiv);p.appendChild(m.TDiv);p.appendChild(m.TRDiv);p.appendChild(m.LDiv);p.appendChild(m.RDiv);p.appendChild(m.BLDiv);p.appendChild(m.BDiv);p.appendChild(m.BRDiv);m.divimg=document.getElementById('MTLBMUTMJLDdivimg');m.image=document.getElementById('MTLBMUTMJLDimg');m.image.onload=m.onloadImage;m.imagef=document.getElementById('MTLBMUTMJLDimgf');m.tbar=document.getElementById('MTLBMUTMJLDtitlebar');m.preloader=document.getElementById('MTLBMUTMJLDpreloader')
m.tbar.style.display='none';m.text=document.getElementById('MTLBMUTMJLDtext')
m.inext=document.getElementById('MTLBMUTMJLDinext')
m.iprev=document.getElementById('MTLBMUTMJLDiprev')
m.icons=document.getElementById('MTLBMUTMJLDicons')
m.overlay.onclick=m.close},
prev:function(){var m=MUTMJLD;window.clearTimeout(m.time);if(m.CurrList!=null){var len=m.CurrList.length;m.CurrInd=m.CurrInd>0 ? m.CurrInd-1:len-1;if(m.CurrInd>=0&&m.CurrInd<len){this.changeImage(m.CurrList[m.CurrInd]);}}},
next:function(){var m=MUTMJLD;window.clearTimeout(m.time);if(m.CurrList!=null){var len=m.CurrList.length;m.CurrInd=m.CurrInd<len-1 ? m.CurrInd+1:0;if(m.CurrInd>=0&&m.CurrInd<len){this.changeImage(m.CurrList[m.CurrInd]);}}},
close:function(){var m=MUTMJLD
window.clearTimeout(m.time)
m.image.src=''
m.divimg.style.display='none'
m.lbox.style.display='none'
m.ShowFade(m.overlay,0,800)
m.CurrList=null;m.BWidth=100
m.BHeight=100
m.setSize(100, 100)},
changeImage:function(arr){var m=this
if(m.lbox.style.display=='none')m.lbox.style.display='block'
m.preloader.style.display='block'
if(m.text)m.text.innerHTML='';m.PreloadImg=new Image();m.PreloadImg.onload=m.onloadImg;m.PreloadImg.src=arr[0]},
setSize:function(imgWidth, imgHeight, showTB){var m=this
var tbWidth=(m.text?m.text.offsetWidth:0)+(m.icons?m.icons.offsetWidth:0)
m.Width=tbWidth>imgWidth?tbWidth:imgWidth
m.Height=imgHeight+(showTB?m.TBarHeight:0)
if(m.image)m.image.parentNode.style.height=imgHeight+'px'
m.lbox.style.width=m.Width+'px';m.lbox.style.height=m.Height+'px';m.divimg.style.width=imgWidth+'px';m.divimg.style.height=imgHeight+'px';},
setImagePos:function(imgWidth, imgHeight, tb){var m=this;if(!m.image)return;var W=parseInt(m.lbox.style.width);var H=parseInt(m.lbox.style.height)-tb;m.divimg.style.left=(W>imgWidth?(W-imgWidth)/2:0)+'px';m.divimg.style.top=(H>imgHeight?(H-imgHeight)/2:0)+'px';},
showTBar:function(){var m=MUTMJLD
m.text.innerHTML=m.CurrList[m.CurrInd][1]
m.tbar.style.display=''
m.text.style.marginTop=((m.TBarHeight-m.text.offsetHeight)/2)+'px'
var tbWidth=(m.text?m.text.offsetWidth:0)+(m.icons?m.icons.offsetWidth:0)
while(tbWidth>parseInt(m.lbox.style.width)){m.lbox.style.width=tbWidth+'px'
tbWidth=(m.text?m.text.offsetWidth:0)+(m.icons?m.icons.offsetWidth:0)}m.divimg.style.display='block'},
onloadImg:function(){var m=MUTMJLD
if(!m.bFirstOpen){m.imagef.src=m.image.src;m.imagef.style.opacity=1;m.imagef.style.filter='alpha(opacity=100)';m.imagef.style.display='block';}if(m.image)m.image.src=m.CurrList[m.CurrInd][0]},
onloadImage:function(){var m=MUTMJLD;m.preloader.style.display='none';var ih=m.PreloadImg.height;var iw=m.PreloadImg.width;m.PreloadImg=null;m.imgH=ih;m.imgW=iw;var scrollPos=new m.getScrollPos();var pageSize=new m.getPageSize();var LimitHeight=pageSize.winHeight-10;var maxH=LimitHeight-m.HTImage-m.HBImage-m.TBarHeight;if(maxH<ih){iw=Math.round(iw*maxH / ih);ih=maxH;}var LimitWidth=pageSize.winWidth-10;var maxW=LimitWidth-m.WLImage-m.WRImage;if(maxW<iw){ih=Math.round(ih*maxW / iw);iw=maxW;}var Hlb=ih+m.HTImage+m.HBImage+m.TBarHeight;var Wlb=iw+m.WLImage+m.WRImage;var yEnd=Math.round(pageSize.winHeight/2+scrollPos.scrollY-Hlb/2)+m.HTImage;var xEnd=Math.round(pageSize.winWidth/2+scrollPos.scrollX-Wlb/2)+m.WLImage;m.divimg.style.width=m.BWidth+'px';m.divimg.style.left='0px';m.divimg.style.top='0px';if(m.bFirstOpen){m.BHeight=m.BWidth / iw*ih;m.divimg.style.height=m.BHeight+'px';m.lbox.style.height=m.BHeight+'px';if(m.divimg)m.divimg.style.display='block';m.zoomLb(m.lbox,{top:yEnd,left:xEnd,height:ih,width:iw},m.divimg,{height:ih,width:iw}, 0,500,function(){var m=MUTMJLD;m.bFirstOpen=false;m.lbox.style.height=ih+m.TBarHeight+'px';m.showTBar();m.setImagePos(iw, ih, m.TBarHeight);m.BWidth=parseInt(m.lbox.style.width);m.BHeight=parseInt(m.lbox.style.height);})}else{m.divimg.style.height=m.BHeight-m.TBarHeight+'px';m.ShowFade(m.imagef,0,500);m.zoomLb(m.lbox,{top:yEnd,left:xEnd,height:ih+m.TBarHeight,width:iw},m.divimg,{height:ih,width:iw}, m.TBarHeight,500,function(){var m=MUTMJLD;m.showTBar();m.setImagePos(iw, ih, m.TBarHeight);m.BWidth=parseInt(m.lbox.style.width);m.BHeight=parseInt(m.lbox.style.height);})}},
updatePos:function(){var m=MUTMJLD;if(m.lbox&&m.lbox.style.display!='none'){var ih=m.imgH;var iw=m.imgW;var scrollPos=new m.getScrollPos();var pageSize=new m.getPageSize();var LimitHeight=pageSize.winHeight-10;var maxH=LimitHeight-m.HTImage-m.HBImage-m.TBarHeight;if(maxH<ih){iw=Math.round(iw*maxH / ih);ih=maxH;}var LimitWidth=pageSize.winWidth-10;var maxW=LimitWidth-m.WLImage-m.WRImage;if(maxW<iw){ih=Math.round(ih*maxW / iw);iw=maxW;}var Hlb=ih+m.HTImage+m.HBImage+m.TBarHeight;var tbWidth=(m.text?m.text.offsetWidth:0)+(m.icons?m.icons.offsetWidth:0);var Wlb=iw+m.WLImage+m.WRImage;var ew=iw;if(tbWidth>iw)ew=tbWidth;var yEnd=Math.round(pageSize.winHeight/2+scrollPos.scrollY-Hlb/2)+m.HTImage;var xEnd=Math.round(pageSize.winWidth/2+scrollPos.scrollX-Wlb/2)+m.WLImage;m.zoomLb(m.lbox,{top:yEnd,left:xEnd,height:ih+m.TBarHeight,width:ew},m.divimg,{height:ih,width:iw}, m.TBarHeight,500,function(){var m=MUTMJLD;m.showTBar();m.setImagePos(iw, ih, m.TBarHeight);m.BWidth=parseInt(m.lbox.style.width);m.BHeight=parseInt(m.lbox.style.height);});}},
updateOverlay:function(isResize){var m=MUTMJLD
if(m.lbox&&m.lbox.style.display!='none'){if(m.br.ie){var pageSize=new m.getPageSize()
var scrollPos=new m.getScrollPos()
m.overlay.style.left=scrollPos.scrollX+'px'
m.overlay.style.top=scrollPos.scrollY+'px'
m.overlay.style.width=pageSize.winWidth+'px'
m.overlay.style.height=pageSize.winHeight+'px'}}},
oResize:function(){var m=MUTMJLD
m.updatePos()
m.updateOverlay()},
oScroll:function(){var m=MUTMJLD
m.updatePos()
m.updateOverlay()},
getPageSize:function(){var xScroll, yScroll
var d=document
var docElem=d.documentElement
if(self.innerHeight&&self.scrollMaxY){yScroll=self.innerHeight+self.scrollMaxY}else if(d.body.scrollHeight>d.body.offsetHeight){yScroll=d.body.scrollHeight}else if(docElem&&docElem.scrollHeight>docElem.offsetHeight){yScroll=docElem.scrollHeight}else{yScroll=d.body.offsetHeight}if(self.innerWidth&&self.scrollMaxX){xScroll=self.innerWidth+self.scrollMaxX}else if(d.body.scrollWidth>d.body.offsetWidth){xScroll=d.body.scrollWidth}else if(docElem&&docElem.scrollWidth>docElem.offsetWidth){xScroll=docElem.scrollWidth}else{xScroll=d.body.offsetWidth}var windowWidth, windowHeight
if(self.innerHeight){windowWidth=self.innerWidth
windowHeight=self.innerHeight}else if(docElem&&docElem.clientHeight){windowWidth=docElem.clientWidth
windowHeight=docElem.clientHeight}else if(d.body){windowWidth=d.body.clientWidth
windowHeight=d.body.clientHeight}this.winHeight=windowHeight
this.winWidth=windowWidth
this.pageHeight=yScroll
this.pageWidth=xScroll},
getScrollPos:function(){var docElem=document.documentElement
this.scrollX=self.scrollX||(docElem&&docElem.scrollLeft)||document.body.scrollLeft
this.scrollY=self.scrollY||(docElem&&docElem.scrollTop)||document.body.scrollTop},
Preload:function(){var b=document.getElementsByTagName('body');if(b[0]){var bb=b[0];var d;var p=document.createElement('div');p.className='MTLBMUTMJLDPreload';p.id='MTLBMUTMJLDPreload';bb.appendChild(p);d=document.createElement('div');d.className='MTLBMUTMJLDtl MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDtop MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDtr MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDleft MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDright MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDbl MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDbottom MTLBMUTMJLDPreload';p.appendChild(d);d=document.createElement('div');d.className='MTLBMUTMJLDbr MTLBMUTMJLDPreload';p.appendChild(d);}},
getTop:function(e){var top=0;var abs=false;while(e&&((e.tagName!='BODY')||!abs)){if(e.style.position=='absolute')abs=true;top+=e.offsetTop;e=e.offsetParent;}return top;},
getLeft:function(e){var left=0;var abs=false;while(e&&((e.tagName!='BODY')||!abs)){if(e.style.position=='absolute')abs=true;left+=e.offsetLeft;e=e.offsetParent;}return left;},
dummy:null};MUTMJLD.init()
