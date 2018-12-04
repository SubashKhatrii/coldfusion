/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Menu){
ColdFusion.Menu={};
}
ColdFusion.Menu.menuItemMouseOver=function(id,_4b1){
var _4b2=document.getElementById(id);
_4b2.tempfontcolor=_4b2.firstChild.style.color;
if(_4b1){
_4b2.firstChild.style.color=_4b1;
}
};
ColdFusion.Menu.menuItemMouseOut=function(id){
var _4b4=document.getElementById(id);
if(_4b4.tempfontcolor){
_4b4.firstChild.style.color=_4b4.tempfontcolor;
}else{
_4b4.firstChild.style.color="black";
}
};
ColdFusion.Menu.initMenu=function(_4b5,_4b6){
return new YAHOO.widget.Menu(_4b5,_4b6);
};
ColdFusion.Menu.initMenuBar=function(_4b7,_4b8){
return new YAHOO.widget.MenuBar(_4b7,_4b8);
};
