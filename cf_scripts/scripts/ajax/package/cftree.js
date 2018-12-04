/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Tree){
ColdFusion.Tree={};
}
ColdFusion.Tree.AttributesCollection=function(){
this.cache=true;
this.fontname=null;
this.bold=false;
this.italic=false;
this.completepath=false;
this.appendkey=false;
this.delimiter=null;
this.formname=null;
this.fontsize=null;
this.formparamname=null;
this.prevspanid=null;
this.prevspanbackground=null;
this.images={};
this.images.folder=_cf_ajaxscriptsrc+"/resources/cf/images/FolderClose.gif";
this.images.cd=_cf_ajaxscriptsrc+"/resources/cf/images/Cd.png";
this.images.computer=_cf_ajaxscriptsrc+"/resources/cf/images/Computer.png";
this.images.document=_cf_ajaxscriptsrc+"/resources/cf/images/Document.gif";
this.images.element=_cf_ajaxscriptsrc+"/resources/cf/images/Elements.png";
this.images.floppy=_cf_ajaxscriptsrc+"/resources/cf/images/Floppy.png";
this.images.fixed=_cf_ajaxscriptsrc+"/resources/cf/images/HardDrive.png";
this.images.remote=_cf_ajaxscriptsrc+"/resources/cf/images/NetworkDrive.png";
this.imagesopen={};
this.imagesopen.folder=_cf_ajaxscriptsrc+"/resources/cf/images/FolderOpen.gif";
this.imagesopen.cd=_cf_ajaxscriptsrc+"/resources/cf/images/Cd.png";
this.imagesopen.computer=_cf_ajaxscriptsrc+"/resources/cf/images/Computer.png";
this.imagesopen.document=_cf_ajaxscriptsrc+"/resources/cf/images/Document.gif";
this.imagesopen.element=_cf_ajaxscriptsrc+"/resources/cf/images/Elements.png";
this.imagesopen.floppy=_cf_ajaxscriptsrc+"/resources/cf/images/Floppy.png";
this.imagesopen.fixed=_cf_ajaxscriptsrc+"/resources/cf/images/HardDrive.png";
this.imagesopen.remote=_cf_ajaxscriptsrc+"/resources/cf/images/NetworkDrive.png";
this.eventcount=0;
this.eventHandlers=new Array();
this.nodeCounter=0;
};
ColdFusion.Tree.refresh=function(_742){
var tree=ColdFusion.objectCache[_742];
var _744=ColdFusion.objectCache[_742+"collection"];
if(!tree||YAHOO.widget.TreeView.prototype.isPrototypeOf(tree)==false){
ColdFusion.handleError(null,"tree.refresh.notfound","widget",[_742],null,null,true);
return;
}
if(!_744.dynLoadFunction){
ColdFusion.Log.info("tree.refresh.statictree","widget");
return;
}
_744.dynLoadFunction.call(null,tree.getRoot());
ColdFusion.Log.info("tree.refresh.success","widget",[_742]);
};
ColdFusion.Tree.getTreeObject=function(_745){
if(!_745){
ColdFusion.handleError(null,"tree.gettreeobject.emptyname","widget",null,null,null,true);
return;
}
var _746=ColdFusion.objectCache[_745];
if(_746==null||YAHOO.widget.TreeView.prototype.isPrototypeOf(_746)==false){
ColdFusion.handleError(null,"tree.gettreeobject.notfound","widget",[_745],null,null,true);
return;
}
return _746;
};
ColdFusion.Tree.loadNodes=function(_747,_748){
var i=0;
var _74a=ColdFusion.objectCache[_748.treeid+"collection"];
var tree=ColdFusion.objectCache[_748.treeid];
var _74c;
var _74d=false;
if(_747&&typeof (_747.length)=="number"&&!_747.toUpperCase){
if(_747.length>0&&typeof (_747[0])!="object"){
_74d=true;
}
}else{
_74d=true;
}
if(_74d){
ColdFusion.handleError(tree.onbinderror,"tree.loadnodes.invalidbindvalue","widget",[_748.treeid]);
return;
}
if(_748.parent&&!_748.parent.isRoot()){
tree.removeChildren(_748.parent);
}else{
if(_748.parent&&_748.parent.hasChildren()){
tree.removeChildren(_748.parent);
_748.parent=tree.getRoot();
}
}
if(!_748.parent.leafnode){
for(i=0;i<_747.length;i++){
var _74e=_74a.nodeCounter++;
var node={};
node.id=_747[i].VALUE;
if(typeof (_747[i].DISPLAY)==undefined||_747[i].DISPLAY==null){
node.label=_747[i].VALUE;
}else{
node.label=_747[i].DISPLAY;
}
node.expand=_747[i].EXPAND;
node.appendkey=_747[i].APPENDKEY;
node.href=_747[i].HREF;
node.img=_747[i].IMG;
node.imgOpen=_747[i].IMGOPEN;
node.imgid="_cf_image"+_74e;
node.spanid="_cf_span"+_74e;
node.target=_747[i].TARGET;
if(_74a.appendkey&&_74a.appendkey==true&&node.href){
var _750=new String(node.href);
_750=_750.toLowerCase();
if(_750.indexOf("javascript")<0){
if(_750.indexOf("?")>=0){
node.href=_747[i].HREF+"&";
}else{
node.href=_747[i].HREF+"?";
}
node.href=node.href+"CFTREEITEMKEY="+node.id;
}
}
var _751="";
if(node.img){
if(_74a.images[node.img]){
_751="<img src='"+_74a.images[node.img]+"' id='"+node.imgid+"' style='border:0'/>&nbsp;";
}else{
_751="<img src='"+node.img+"' id='"+node.imgid+"' style='border:0'/>&nbsp;";
}
}
if(_74a.fontname||_74a.italic==true||_74a.bold==true||_74a.fontsize){
_751=_751+"<span id='"+node.spanid+"' style='";
if(_74a.fontname){
_751=_751+"font-family:"+_74a.fontname+";";
}
if(_74a.italic==true){
_751=_751+"font-style:italic;";
}
if(_74a.bold==true){
_751=_751+"font-weight:bold;";
}
if(_74a.fontsize){
_751=_751+"font-size:"+_74a.fontsize+";";
}
_751=_751+"'>"+node.label+"</span>";
node.label=_751;
}else{
node.label=_751+"<span id='"+node.spanid+"'  >"+node.label+"</span>";
}
node.childrenFetched=false;
var _752=new YAHOO.widget.TextNode(node,_748.parent,false);
var _753=false;
if(_747[i].LEAFNODE&&_747[i].LEAFNODE==true){
_753=true;
_752.leafnode=true;
_752.iconMode=1;
}
if(_753==true||(node.expand&&node.expand==true)){
_752.expand();
}
}
}
if(!_748.parent.isRoot()){
_748.parent.data.childrenFetched=true;
}
if(_748.onCompleteCallBack){
_748.onCompleteCallBack.call();
}else{
_748.parent.tree.draw();
}
ColdFusion.Log.info("tree.loadnodes.success","widget",[_748.treeid]);
};
ColdFusion.Tree.onExpand=function(node){
if(node.isRoot()){
return;
}
var _755=ColdFusion.objectCache[node.tree.id+"collection"];
if(node.data.imgOpen&&typeof (node.leafnode)=="undefined"){
var _756=ColdFusion.DOM.getElement(node.data.imgid,node.tree.id);
var src;
if(_755.imagesopen[node.data.imgOpen]){
src=_755.imagesopen[node.data.imgOpen];
}else{
src=node.data.imgOpen;
}
_756.src=src;
}
if(_755.cache==false&&node.data.childrenFetched==false&&_755.dynLoadFunction){
node.tree.removeChildren(node);
}
};
ColdFusion.Tree.onCollapse=function(node){
if(node.isRoot()){
return;
}
var _759=ColdFusion.objectCache[node.tree.id+"collection"];
if(node.data.img){
var _75a=ColdFusion.DOM.getElement(node.data.imgid,node.tree.id);
var src;
if(_759.images[node.data.img]){
src=_759.images[node.data.img];
}else{
src=node.data.img;
}
_75a.src=src;
}
node.data.childrenFetched=false;
};
ColdFusion.Tree.formPath=function(node,_75d){
var _75e=ColdFusion.objectCache[node.tree.id+"collection"];
if(_75e.completepath==true&&node.isRoot()){
return "";
}else{
if(_75e.completepath==false&&node.parent.isRoot()){
return "";
}
}
if(!_75d){
_75d=node;
}
var _75f=ColdFusion.Tree.formPath(node.parent,_75d);
_75f=_75f+node.data.id;
if(_75d.data.id!=node.data.id){
_75f=_75f+_75e.delimiter;
}
return _75f;
};
ColdFusion.Tree.onLabelClick=function(node){
var _761="";
var _762=ColdFusion.objectCache[node.tree.id+"collection"];
var _761=ColdFusion.Tree.formPath(node);
if(_762.prevspanid){
var _763=ColdFusion.DOM.getElement(_762.prevspanid,node.tree.id);
if(_763.style){
_763.style.backgroundColor=_762.prevspanbackground;
}
}
var _764=ColdFusion.DOM.getElement(node.data.spanid,node.tree.id);
if(_764&&_764.style){
_762.prevspanbackground=_764.style.backgroundColor;
}
_764.style.backgroundColor="lightblue";
_762.prevspanid=node.data.spanid;
node.tree._cf_path=_761;
node.tree._cf_node=node.data.id;
var val="PATH="+_761+"; NODE="+node.data.id;
updateHiddenValue(val,_762.formname,_762.formparamname);
ColdFusion.Tree.fireSelectionChangeEvent(node.tree.id,_762.formname);
};
ColdFusion.Tree.fireSelectionChangeEvent=function(id,_767){
ColdFusion.Log.info("tree.fireselectionchangeevent.fire","widget",[id]);
ColdFusion.Event.callBindHandlers(id,_767,"change");
};
ColdFusion.Tree.getObject=function(_768){
var _769={};
_769.id=_768.value;
if(_768.href&&_768.href!="null"){
_769.href=_768.href;
}
_769.target=_768.target;
_769.label=_768.label;
_769.display=_768.display;
_769.img=_768.img;
_769.imgOpen=_768.imgOpen;
_769.imgid=_768.imgid;
_769.spanid=_768.spanid;
_769.childrenfetched=_768.childrenfetched;
return _769;
};
ColdFusion.Tree.initializeTree=function(_76a,_76b,_76c,bold,_76e,_76f,_770,_771,_772,_773,_774,_775){
var _776=new YAHOO.widget.TreeView(_76a);
_776.subscribe("expand",ColdFusion.Tree.onExpand);
_776.subscribe("collapse",ColdFusion.Tree.onCollapse);
_776.subscribe("labelClick",ColdFusion.Tree.onLabelClick);
_776._cf_getAttribute=function(_777){
_777=_777.toUpperCase();
if(_777=="PATH"){
return _776._cf_path;
}else{
if(_777=="NODE"){
return _776._cf_node;
}else{
return null;
}
}
};
_776.onbinderror=_773;
ColdFusion.objectCache[_76a]=_776;
var _778=new ColdFusion.Tree.AttributesCollection();
_778.cache=_76b;
_778.italic=_76c;
_778.bold=bold;
_778.completepath=_76e;
_778.delimiter=_770;
_778.appendkey=_76f;
_778.formname=_771;
_778.formparamname=_772;
_778.fontsize=_774;
_778.fontname=_775;
ColdFusion.objectCache[_76a+"collection"]=_778;
ColdFusion.Log.info("tree.initializetree.success","widget",[_76a]);
return _776;
};
