/* jce - 2.6.35 | 2018-12-19 | https://www.joomlacontenteditor.net | Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved | GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html */
!function($){var ImageManagerDialog={settings:{},init:function(){tinyMCEPopup.restoreSelection();var br,ed=tinyMCEPopup.editor,n=ed.selection.getNode(),self=this;$("#insert").click(function(e){self.insert(),e.preventDefault()});var src=decodeURIComponent(ed.dom.getAttrib(n,"src"));if(src=ed.convertURL(src),$.each(this.settings.attributes,function(k,v){parseFloat(v)||$("#attributes-"+k).hide()}),$("#onmouseover, #onmouseout").focus(function(){$("#onmouseover, #onmouseout").removeClass("focus"),$(this).addClass("focus")}),Wf.init(),n&&"IMG"==n.nodeName){$(".uk-button-text","#insert").text(tinyMCEPopup.getLang("update","Update",!0)),$("#src").val(src),$("#sample").attr({src:n.src}).attr(Wf.sizeToFit(n,{width:80,height:60}));var w=Wf.getAttrib(n,"width"),h=Wf.getAttrib(n,"height");$("#width").val(function(){return w?($(this).addClass("uk-isdirty"),w):h?void 0:n.width}),$("#height").val(function(){return h?($(this).addClass("uk-isdirty"),h):w?void 0:n.height}),$("#alt").val(ed.dom.getAttrib(n,"alt")),$("#title").val(ed.dom.getAttrib(n,"title")),$.each(["top","right","bottom","left"],function(){$("#margin_"+this).val(Wf.getAttrib(n,"margin-"+this))}),$("#border_width").val(function(){var v=Wf.getAttrib(n,"border-width");return 0==$('option[value="'+v+'"]',this).length&&$(this).append(new Option(v,v)),v}),$("#border_style").val(Wf.getAttrib(n,"border-style")),$("#border_color").val(Wf.getAttrib(n,"border-color")).change(),$("#border").is(":checked")||$.each(["border_width","border_style","border_color"],function(i,k){$("#"+k).val(self.settings.defaults[k]).change()}),$("#align").val(Wf.getAttrib(n,"align")),$("#classes").val(ed.dom.getAttrib(n,"class")),$("#style").val(ed.dom.getAttrib(n,"style")),$("#id").val(ed.dom.getAttrib(n,"id")),$("#dir").val(ed.dom.getAttrib(n,"dir")),$("#lang").val(ed.dom.getAttrib(n,"lang")),$("#usemap").val(ed.dom.getAttrib(n,"usemap")),$("#insert").button("option","label",ed.getLang("update","Update")),$("#longdesc").val(ed.convertURL(ed.dom.getAttrib(n,"longdesc"))),$("#onmouseout").val(src),$.each(["onmouseover","onmouseout"],function(){v=ed.dom.getAttrib(n,this),v=$.trim(v),v=v.replace(/^\s*this.src\s*=\s*\'([^\']+)\';?\s*$/,"$1"),v=ed.convertURL(v),$("#"+this).val(v)}),br=n.nextSibling,br&&"BR"==br.nodeName&&br.style.clear&&$("#clear").val(br.style.clear)}else Wf.setDefaults(this.settings.defaults);"external"===ed.settings.filebrowser_position?Wf.createBrowsers($("#src"),function(files){var file=files.shift();self.selectFile(file)},"images"):$("#src").filebrowser().on("filebrowser:onfileclick",function(e,file,data){self.selectFile(file,data)}).on("filebrowser:onfileinsert",function(e,file,data){self.selectFile(file,data)}),Wf.updateStyles(),$(".uk-constrain-checkbox").on("constrain:change",function(e,elms){$(elms).addClass("uk-isdirty")}).trigger("constrain:update"),$(".uk-equalize-checkbox").trigger("equalize:update")},insert:function(){var ed=tinyMCEPopup.editor,self=this,n=ed.selection.getNode();return""===$("#src").val()?(Wf.Modal.alert(tinyMCEPopup.getLang("imgmanager_dlg.no_src","Please enter a url for the image")),!1):(n&&"IMG"===n.nodeName&&""===ed.dom.getAttrib(n,"alt")&&this.insertAndClose(),void(""===$("#alt").val()?Wf.Modal.confirm(tinyMCEPopup.getLang("imgmanager_dlg.missing_alt"),function(state){state&&self.insertAndClose()},{width:300,height:200}):this.insertAndClose()))},insertAndClose:function(){var v,el,ed=tinyMCEPopup.editor,self=this,args={},br="";Wf.updateStyles(),tinyMCEPopup.restoreSelection(),tinymce.isWebKit&&ed.getWin().focus(),args={vspace:"",hspace:"",border:"",align:""},$.each(["src","width","height","alt","title","classes","style","id","dir","lang","usemap","longdesc"],function(i,k){v=$("#"+k+":enabled").val(),"src"==k&&(v=Wf.String.buildURI(v)),"width"!=k&&"height"!=k||(v=self.settings.always_include_dimensions?$("#"+k).val():$("#"+k+".uk-isdirty").val()||""),"classes"==k&&(k="class"),args[k]=v}),args.onmouseover=args.onmouseout="";var over=$("#onmouseover").val(),out=$("#onmouseout").val();over&&out&&(args.onmouseover="this.src='"+ed.convertURL(over)+"';",args.onmouseout="this.src='"+ed.convertURL(out)+"';"),el=ed.selection.getNode(),br=el.nextSibling,el&&"IMG"==el.nodeName?(ed.dom.setAttribs(el,args),br&&"BR"==br.nodeName?(($("#clear").is(":disabled")||""===$("#clear").val())&&ed.dom.remove(br),$("#clear").is(":disabled")||""===$("#clear").val()||ed.dom.setStyle(br,"clear",$("#clear").val())):$("#clear").is(":disabled")||""===$("#clear").val()||(br=ed.dom.create("br"),ed.dom.setStyle(br,"clear",$("#clear").val()),ed.dom.insertAfter(br,el))):(ed.execCommand("mceInsertContent",!1,'<img id="__mce_tmp" src="" />',{skip_undo:1}),el=ed.dom.get("__mce_tmp"),$("#clear").is(":disabled")||""===$("#clear").val()||(br=ed.dom.create("br"),ed.dom.setStyle(br,"clear",$("#clear").val()),ed.dom.insertAfter(br,el)),ed.dom.setAttribs("__mce_tmp",args),ed.dom.setAttrib("__mce_tmp","id","")),ed.undoManager.add(),ed.nodeChanged(),tinyMCEPopup.close()},selectFile:function(file,data){var name=data.title,src=data.url;if($("#rollover_tab").hasClass("uk-active"))$("input.focus","#rollover_tab").val(src);else{if(name=Wf.String.stripExt(name),name=name.replace(/[-_]+/g," "),$("#alt").val(name),$("#onmouseout").val(src),$("#src").val(src),data.width&&data.height)$.each(["width","height"],function(i,k){var v=data[k]||"";$("#"+k).val(v).data("tmp",v).removeClass("uk-edited").addClass("uk-text-muted")});else{var img=new Image;img.onload=function(){$.each(["width","height"],function(i,k){$("#"+k).val(img[k]).data("tmp",img[k]).removeClass("uk-edited").addClass("uk-text-muted")})},img.src=src}var dim=Wf.sizeToFit({width:data.width,height:data.height},{width:80,height:60});$("#sample").attr({src:data.preview}).attr(dim)}}};window.ImageManagerDialog=ImageManagerDialog,$(document).ready(function(){ImageManagerDialog.init()})}(jQuery);