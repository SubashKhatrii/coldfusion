����  -� 
SourceFile (/CFIDE/administrator/solr/solrserver.cfm cfsolrserver2ecfm2127376808  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PATH Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   ERROR_SOLRLANGUAGE   	   SOLRPORT   	    HTTPSENABLE " " 	  $ BROWSE_SERVER & & 	  ( SOLRHTTPSPORT * * 	  , SOLRUSERNAME . . 	  0 ERROR_REMOVE 2 2 	  4 DEFAULTPATH 6 6 	  8 ERROR_SOLRUPDATE : : 	  < SOLROLDHOME > > 	  @ CFCATCH B B 	  D ERROR_SOLRPASSWORD F F 	  H TOKEN J J 	  L SOLR_MIGRATE_RESTART N N 	  P DIALOGSTYLE R R 	  T SUFFIX V V 	  X 	TREEFIELD Z Z 	  \ SOLRHOME ^ ^ 	  ` SOLRSERVICE b b 	  d ERROR_SOLRADMINPORT f f 	  h COL_REMOVED j j 	  l COLLECTIONMESSAGE n n 	  p ERROR_SOLRPREFIX r r 	  t ERROR_SOLRBUFFERSIZE v v 	  x 
ERROR_HOST z z 	  | ADD_LANGUAGE_BUTTON ~ ~ 	  � ERROR_USERNAME � � 	  � LANG_ERROR_MSG � � 	  � 	RETURNURL � � 	  � 
SOLRWEBAPP � � 	  � I � � 	  � CHECKCSRFTOKEN � � 	  � LANG � � 	  � URL � � 	  � SOLRBUFFERSIZE � � 	  � SUCCESSMESSAGE � � 	  � DELETE � � 	  � ERROR_SOLRADMINHTTPSPORT � � 	  � 	URLENCHAR � � 	  � ERROR_SOLRWEBAPP � � 	  � 
SOLRPREFIX � � 	  � BROWSESUBMIT � � 	  � 	ERROR_MSG � � 	  � GETCSRFTOKEN � � 	  � ADDLANGUAGE � � 	  � FORM � � 	  � SOLRLANGUAGE � � 	  � SOLRHOST � � 	  � SOLRPASSWORD � � 	  � AERRORMESSAGES � � 	  � 	LANGUAGES � � 	  � REQUEST � � 	  � MIGRATE_SOLR_BUTTON � � 	  � MIGRATESOLR � � 	  � BERRORSEXIST � � 	  � com.macromedia.SourceModTime  d7� pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext 
 � parent Ljavax/servlet/jsp/tagext/Tag;	  Cp1252 setPageEncoding (Ljava/lang/String;)V	
 !coldfusion/runtime/NeoPageContext
 _setCurrentLineNo (I)V
  java/lang/String LICENSE _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
  getAppServerPlatform java/lang/Object _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; 
 ! sunone# _compare '(Ljava/lang/Object;Ljava/lang/String;)D%&
 ' _Object (Z)Ljava/lang/Object;)* coldfusion/runtime/Cast,
-+ _boolean (Ljava/lang/Object;)Z/0
-1 SERVER3 OS5 ADDITIONALINFORMATION7 _resolveAndAutoscalarize9
 : sunos< 'class$coldfusion$tagext$net$LocationTag Ljava/lang/Class; !coldfusion.tagext.net.LocationTag@ forName %(Ljava/lang/String;)Ljava/lang/Class;BC java/lang/ClassE
FD>?	 H _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;JK
 L !coldfusion/tagext/net/LocationTagN ../homepage.cfmP setUrlR

OS 	hasEndTag (Z)VUV coldfusion/tagext/GenericTagX
YW _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z[\
 ] %class$coldfusion$tagext$net$CookieTag coldfusion.tagext.net.CookieTag`_?	 b coldfusion/tagext/net/CookieTagd NEVERf 
setExpires (Ljava/lang/Object;)Vhi
ej cfcookiel namen cfadmin_lastpage_p GetAuthUser ()Ljava/lang/String;rs
 t concat &(Ljava/lang/String;)Ljava/lang/String;vw
x _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;z{
 | setName~

e matches� ^\w$� 30� value� CGI� SCRIPT_NAME� _String &(Ljava/lang/Object;)Ljava/lang/String;��
-� setValue�

e� setHttpOnly�V
e� H

<script language="Javascript" src="../scripts/util.js"></script>

� write�
 java/io/Writer�
�� $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag��?	 � coldfusion/tagext/io/SilentTag� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � LOCALE� REQUEST.LOCALE� en� checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V��
 � 
LOCALEFILE� java/lang/StringBuilder� resources/solr_� 

�� append -(Ljava/lang/String;)Ljava/lang/StringBuilder;��
�� .cfm� toString�s
� _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V��
 � coldfusion/runtime/CFBoolean� f_false Lcoldfusion/runtime/CFBoolean;��	�� set�i coldfusion/runtime/Variable�
�� ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
-� setArray !(Lcoldfusion/runtime/FastArray;)V��
�� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � ADMINSUBMIT� FORM.ADMINSUBMIT�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � REMOVELANGUAGE� URL.REMOVELANGUAGE�  � 	CSRFTOKEN� FORM.CSRFTOKEN� URL.CSRFTOKEN� _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � checkCSRFToken� _autoscalarize�
  DATASERVTABKEYNAME 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;
  (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag
?	  "coldfusion/tagext/lang/ImportedTag l10n 
../cftags/ admin :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V~
 &coldfusion/runtime/AttributeCollection id lang_error_msg var  ([Ljava/lang/Object;)V "
# setAttributecollection (Ljava/util/Map;)V%&  coldfusion/tagext/lang/ModuleTag(
)'
)� 7If specifying a language, both the fields are mandatory, doAfterBody.�
)/ _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;12
 3 doEndTag5� #javax/servlet/jsp/tagext/TagSupport7
86 doCatch (Ljava/lang/Throwable;)V:;
)< 	doFinally> 
)? *coldfusion/runtime/TransientVariableHolderA &(Lcoldfusion/runtime/NeoPageContext;)V C
BD TrimFw
 G 	WRITEDUMPI setCalledNameK

YL dumpN /WEB-INF/cftagsP cfdumpR \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;zT
 U consoleW outputY Len (Ljava/lang/Object;)I[\
 ] (I)Ljava/lang/Object;)_
-` (Ljava/lang/Object;D)D%b
 c SOLRe LANGUAGEg ,i t_truek�	�l ArrayLenn\
 o (D)Ljava/lang/Object;)q
-r _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)Vtu
 v #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTagyx?	 { coldfusion/tagext/lang/LogTag} audit setFile�

~� setApplication�V
~� cflog� text� User �  added stemmer language �  with prefix as � 
 for solr.� setText�

~� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag��?	 � coldfusion/tagext/io/OutputTag�
�� solrupdated� SuccessMessage� 9
				Solr Server Configuration information updated.
			�
�/ coldfusion/tagext/QueryLoop�
�6
�<
�? _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t56 [Ljava/lang/String; ANY���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
B� error_solrupdate� K
				An error occurred while attempting to save your changes. <br />
				� MESSAGE� D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;9�
 � EncodeForHTML�w
 � <br />
				� DETAIL� <br />
			      � unbind� 
B� _factor5��
 � 	error_msg� #Old Solr Home path can not be empty� migrateCollections�  migrated Solr Collections.� solrmigrationupdated� <
				Solr Collections have been migrated successfully.
			� t57��	 � <br />
			� _factor1��
 � FORM.HTTPSENABLE� setHttpsEnabled� t_TRUE��	�� f_FALSE��	�� ADVANCEDMODE� FORM.ADVANCEDMODE� int� JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;��
   USERNAME FORM.SOLRPASSWORD STATICPASSWORD '(Ljava/lang/Object;Ljava/lang/Object;)D%
 	 PASSWORD > changed solr server configuration. New values are solrhost :  , solrhome :  , solrport :  , solrbuffersize :  , solrwebapp :  _factor2�
  t58�	  _factor3�
  _factor6 �
 ! java#  coldfusion.server.ServiceFactory% CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;'(
 ) getSolrService+ removeLanguage-  removed stemmer /  language for solr.1 col_removed3  Removed5 t59 Any87�	 : true< error_remove> !
					Unable to remove language @ .<br/>
					B <br/>
					D <br/>
				F _factor4H�
 I
Y/
Y<
Y? 	_factor19N�
 O 

Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)VST
 U solr_pagenameW pagenameY Solr Server[ LANGUAGEPREFIX] HTTPSENABLED_ SolrHomea selectDirectoryc 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTagfe?	 h !coldfusion/tagext/lang/IncludeTagj ../filedialog/index.cfml setTemplaten

ko %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTagrq?	 t coldfusion/tagext/lang/AbortTagv %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTagyx?	 { coldfusion/tagext/lang/ParamTag} SolrHost
~ 	localhost� 
setDefault�i
~� string� setType�

~� ../header.cfm� 
� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag��?	 � #coldfusion/tagext/html/form/FormTag� post� 	setMethod�

�� cfform� action� 	setAction�

��
�� ../include/margintop.cfm� ../include/errors.cfm� 


� 
	<span style="color:green">� </span>
	<br><br>
� 1

<input type="hidden" name="csrftoken" value="� getCSRFToken� ">	

<table width="100%">
� ../include/buttonbar.cfm� %
</table>

<h2 class="pageHeader">� pageHeader_solr� </h2>
<br>

� Solrconfig_welcome�s
	You can install and configure Solr search service on a host other than the one
	on which ColdFusion runs. That is the host that Coldfusion will use while performing search operations.
	Click the Show Advanced Settings to configure these values.
	You should not need to change the advanced values if you are running with the ColdFusion installed
	version of Solr.
� _factor7��
 � �
<br><br>



<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("configureSolrServer")>� l10n_addsolr_config� Configure Solr Server� �</b>
	</td>
</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0">
<tr class="configureSolrServer">
	<td width="500">
		<div class="spacer10"></div>
		<label class="label-bold" for="SolrHost">� 	solr_host� Solr Host Name� </label>
		&nbsp;&nbsp;
		� 
error_host� APlease enter a valid host name or IP address ( xxx.xxx.xxx.xxx ).� �
	</td>	
</tr>

<tr class="configureSolrServer">
	<td>
		<div class="spacer10"></div>
		<input name="SolrHost" type="text" maxlength="150" size="30" id="SolrHost" value="� EncodeForHTMLAttribute�w
 � " required="true" message="� k">
	</td>
</tr>
<tr>
	<td>
		<div class="spacer10"></div>
		<label class="label-bold" for="SolrHome">� 	solr_home� 	Solr Home� �</label>
		&nbsp;&nbsp;
	</td>
</tr>
<tr>
<td>
<div class="spacer10"></div>
		<input name="SolrHome" type="text" maxlength="550" value="� 
ESAPIUTILS� encodeForHTMLAttributeFilePath� 0" size="40" id="SolrHome" required="true">
				� button_browse� browse_server� Browse Server� _factor8��
 � 5
				<input type="button" class="buttn-grey" title="� "  name="browsesubmit" value="� %" onclick='wopen("SolrHome")'>
					� hideAdvancedSettings� Show Advanced Settings� �
			
</td>
</tr>
</table>
<hr class="line">
<table cellpadding="0">
	<tr>
		<td>
			<b class="subheading" onclick="toggleClass('advancetable')" style="margin-top: 5px">� advanced_settings_header� Advanced Settings</b>
			<input type="hidden" name="advancedmode" value="true">
		</td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="advancetable" width="100%">
	<tr><td height="10px"></td></tr>
	<tr>
		<td width="150px"><label class="label-bold" for="solradminPort"> solr_adminport Solr Admin Port </label>
			&nbsp;&nbsp;
				 error_solradminport EPlease enter a valid Solr Admin port. The default Admin port is 8989. ~
		</td>
		<td width="100px">
			<input name="SolrPort" type="text" maxlength="20" Size="5" id="SolradminPort"
				value=" " required="Yes" message=" n" validate="integer" class="number">
		</td>
		<td width="110px"><label class="label-bold" for="solrwebapp"> solr_webapp Solr Webapp _factor9�
  error_solrwebapp 9Please enter a webapp. The default Solr webapp is 'solr'. l
		</td>
		<td>
			<input name="solrwebapp" type="text" maxlength="150" size="30" id="SolrWebapp" value="  ,">
	        <span style="margin-top: 10px">" l10n_graphcache_root$  Context root of the solr server.&�</span>
	     </td>
	 </tr>
	 <tr class="separator">
	 	<td>
	 		<div class="spacer20bottom"></div>
	 	</td>
	 	<td>
	 	</td>
	 	<td>
	 	</td>
	 	<td>
	 	</td>
	 </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="advancetable" width="100%">
	<tr class="advancetable"><td height="10px"></td></tr>
	<tr>
		<td width="150px">
			<label class="label-bold" for="solrbuffersize">( solr_buffersize* Solr Buffer Limit, error_solrbuffersize. 8Enter the buffer limit in MB. The default value is 40 MB0 r
		</td>
		<td>
			<input name="solrbuffersize" type="text" maxlength="20" size="5" id="SolrBufferSize" value="2 J" validate="integer" class="number">
			<span style="margin-left: 20px;">4 l10n_graphcache_text6 �Size in MB after which, the docs are committed to the Solr Server while indexing. More the buffer limit, better the performance.</span>
8 	_factor10:�
 ;H
		</td>
	</tr>
	<tr class="separator">
		<td><div class="spacer20bottom"></div>
		</td>
		<td>
		</td>
	</tr>
	<tr><td height="10px"></td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="advancetable" width="100%">
	<tr>
		<td width="150px">
			<label class="label-bold" for="solrusername">= solr_username? 	User nameA error_usernameC +Enter the username for basic authenticationE }
		</td>
		<td width="200px">
			<input name="solrusername" type="text" maxlength="20" size="30" id="SolrUsername" value="G " message="I m">
		</td>
		<td width="150px">
			<label class="label-bold" for="solrpassword" style="margin-left: 50px">K solr_pwdM PasswordO error_solrpasswordQ +Enter the password for basic authenticationS 
		</td>
		<td>
			U *class$coldfusion$tagext$html$form$InputTag $coldfusion.tagext.html.form.InputTagXW?	 Z $coldfusion/tagext/html/form/InputTag\ solrpassword^
] passworda
]� setMaxLengthd
]e cfinputg
]� messagej 
setMessagel

]m sizeo SolrPasswordq autocompletes offu
]' 	_factor11x�
 y �
		</td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="advancetable" width="100%">
	<tr>
	  <td colspan='2'>
	  	<div class="spacer10"></div>
	    { l10n_graphcache_condition} KIf basic authentication is enabled on Solr Server, specify the credentials.�<br />
       
	  </td>
	  <td><div class="spacer20bottom"></div></td><td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr class="separator">
		<td>
			<div class="spacer20bottom"></div>
		</td>
	</tr>
	<tr><td height="10px"></td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="advancetable" width="100%">
	<tr>
	<td width="150px">
                       <label class="label-bold" for="httpsenable">� solr_httpsenable� Solr Connection� error_solrhttpsenable� p
	</td>
	  <td width="250px">
                <input name="httpsenable" type="checkbox" value="1"
	         � checked� b
	              id="httpsenable">
                  <label class="label-bold" for="httpsenable">� 	ws_enable� Use HTTPS connection� |</label><br />
              
         </td>
		<td width="200px">
			<label class="label-bold" for="solradminhttpsPort">� solr_adminhttpsport� Solr Admin HTTPS Port� 	_factor12��
 � error_solradminhttpsport� QPlease enter a valid Solr Admin HTTPS port. The default Admin HTTPS port is 8443.� z
		</td>
		<td>
			<input name="SolrHttpsPort" type="text" maxlength="20" Size="5" id="SolradminhttpsPort"
				value="� �" validate="integer" class="number">
		</td>
	</tr>
</table>

<hr class="line">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("configureIndexingLanguage")>� l10n_addsolr_indexlang� Configure Indexing languages� �</b>
	</td>
</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr class="configureIndexingLanguage"><td height="10px"></td></tr>
<tr class="configureIndexingLanguage">
  <td colspan='2'>
         � Solrconfig_welcome_short� J
	After adding a stemmer, specify the language and the suffix.
         � �
         <div class="spacer10"></div>
  </td>
</tr>
<tr class="configureIndexingLanguage">
		<td width="100%" style="padding-top: 10px; padding-bottom: 10px;">
			<label class="label-bold" for="solrlanguage" style="margin-left: 15px;">� solr_solrlanguage� New language� error_solrlanguage� Enter the name of new language� 	_factor13��
 � 
			� solrlanguage� setRequired�V
]� SolrLanguage� K
			<label class="label-bold" for="solrprefix" style="margin-left: 40px;">� solr_lang_suffix� New language suffix� error_solrprefix�  Enter the suffix of the language� 
solrprefix� 
SolrPrefix� button_add_language� add_language_button� Add� 	_factor14��
 � U
			<input type="submit"  class="buttn-grey buttn-green"  name="addlanguage" value="� �" class="buttn-fix">
		</td>
	</tr>
</table>
	
<hr class="line">
<table border="0" cellpadding="0" cellspacing="0" width="100%">



	
<tr>
	<td colspan="3">
		<b class="subheading" onClick=toggle("currentLanguages")>� 
map_active� Current Languages� �</b>
	</td>
</tr>


    <tr id="currentLanguages">
	<td>
		<div class="spacer10"></div>
		
		<table class="main-table">
		<tr class="main-table-header">
			<th width="40%">
				
				<strong><a class="tableHeader" href="� ?locale=� J"
					  
					   onmouseout="window.status=''; return true;"
					   >� map_logical_path� Language Name� 2</a></strong>
			</th>
			<th width="40%">
				� +
				<strong><a class="tableHeader" href="� H"
					 
					   onmouseout="window.status=''; return true;"
					  >� map_dir_path� Language Suffix� 5</a></strong>
			</th>
			<th nowrap>
				<strong>� actions� Actions� 	_factor15��
 � <</strong>
			</th>
		</tr>
		
			
				
				

			
		  delete_mapping_confirmation 8Are you sure you want to delete this ColdFusion Mapping? 
		 
					 getLanguages
 1 _double (Ljava/lang/String;)D
- P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; 
  
						 _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;
  /
						
			<tr>
				<td  width="40%">
					 NAME 5&nbsp;
				</td>
				<td nowrap width="40%">
					 R&nbsp;
				</td>

				<td nowrap width="5%" style="text-align: center;">
					! edit# Edit% delete' Delete) B
					
								
								<a href="solrserver.cfm?RemoveLanguage=+ URLEncodedFormat 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;-.
 / &csrftoken=1 ?"><img src="../images/idelete.gif" height="16" width="16" alt="3 	" title="5 C" border="0"></a>
							&nbsp;
							
				</td>
			</tr>
			7 CFLOOP9 checkRequestTimeout;

 < _checkCondition (DDD)Z>?
 @ 	_factor16B�
 C �
			</table>
			
		</td>
	</tr>




</table>

<hr class="line">
	

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td colspan="3">
		<b class="subheading" onClick=toggleClass("migrateCollections")>E migrate_collectionsG Migrate CollectionsI </b>
	</td>
</tr>
<tr class="migrateCollections"><td height="10px"></td></tr>
</table>
<span class="migrateCollections">
K Solrmigration_welcomeM "
	Migrate old Solr collections.
O �
</span>
<div class="spacer10 migrateCollections"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="migrateCollections">
<tr>
        <td width="220">
		<label class="label-bold" for="solrmigrate">Q solr_oldpathS Old Solr HomeU �</label>
		&nbsp;&nbsp;
	</td>
	<td>
		<input name="SolrOldHome" type="text" maxlength="550" size="65" id="SolrOldHome">
				&nbsp;&nbsp;
				W 9" onclick='wopentype("SolrOldHome","dir")'>

				
				Y migrate_solr_button[ Migrate Solr Collections] 	_factor17_�
 ` K
				<input type="submit"  class="buttn-grey"  name="migratesolr"  title="b 
"  title="d 	" value="f g" class="buttn-fix">
			</td>
        </tr>
        <tr><td height="10px"></td></tr>
</table>


h
�/
�6
�<
�? 	_factor18n�
 o 	_factor20q�
 r 


<hr class="line">
t ../footer.cfmv solr_migrate_restartx ;Restart the Solr server before creating any new collection.z FORM.MIGRATESOLR| 
	<script>
		window.alert('~ ');
	</script>
	� metaData Ljava/lang/Object;��	 � 	Functions� 
Properties� this Lcfsolrserver2ecfm2127376808; __factorParent out Ljavax/servlet/jsp/JspWriter; module29 $Lcoldfusion/tagext/lang/ImportedTag; mode29 t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 	include30 #Lcoldfusion/tagext/lang/IncludeTag; abort31 !Lcoldfusion/tagext/lang/AbortTag; param32 !Lcoldfusion/tagext/lang/ParamTag; 	include33 output88  Lcoldfusion/tagext/io/OutputTag; mode88 t18 t19 t20 t21 t22 LocalVariableTable LineNumberTable java/lang/Throwable� Code runPage ()Ljava/lang/Object; 	include89 module90 mode90 t12 output91 mode91 t15 t16 t17 getMetadata varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; module49 mode49 module50 mode50 t14 module51 mode51 t23 t24 t25 t26 t27 module52 mode52 t30 t31 t32 t33 t34 t35 module53 mode53 t38 t39 t40 t41 t42 t43 module54 mode54 module55 mode55 module56 mode56 module57 mode57 input58 &Lcoldfusion/tagext/html/form/InputTag; module59 mode59 module60 mode60 module61 mode61 module62 mode62 module63 mode63 module39 mode39 module40 mode40 module41 mode41 module42 mode42 module43 mode43 module64 mode64 module65 mode65 module66 mode66 module67 mode67 module68 mode68 module44 mode44 module45 mode45 module46 mode46 module47 mode47 module48 mode48 input69 module70 mode70 module71 mode71 input72 module73 mode73 t28 t29 module74 mode74 module75 mode75 silent76  Lcoldfusion/tagext/io/SilentTag; mode76 module77 mode77 module78 mode78 	include34 	include35 	include36 module37 mode37 t13 module38 mode38 module79 mode79 D module80 mode80 module81 mode81 module82 mode82 module83 mode83 module84 mode84 module85 mode85 module86 mode86 form87 %Lcoldfusion/tagext/html/form/FormTag; mode87 	location0 #Lcoldfusion/tagext/net/LocationTag; cookie1 !Lcoldfusion/tagext/net/CookieTag; cookie2 silent28 mode28 module5 t5 log6 Lcoldfusion/tagext/lang/LogTag; output8 mode8 module7 mode7 module11 mode11 ,Lcoldfusion/runtime/TransientVariableHolder; log12 output14 mode14 module13 mode13 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable1 output16 mode16 module15 mode15 t36 t37 t44 t45 t46 t47 !coldfusion/runtime/AbortException` java/lang/Exceptionb t4 log23 output25 mode25 module24 mode24 __cfcatchThrowable3 output27 mode27 module26 mode26 module4 mode4 __cfcatchThrowable0 output10 mode10 module9 mode9 log17 log18 <clinit> output20 mode20 module19 mode19 __cfcatchThrowable2 output22 mode22 module21 mode21 1     H                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �    >?   _?   �?   
?   x?   �?   ��   ��   �   7�   e?   q?   x?   �?   W?   ��    q� �  /    �*,R�V*�+�M�:* ����Y�YSYXSY!SYZS�$�*�Z�+Y6� 6*,��M,\���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�*� �*��YfSY�S�;��*� a*��YfSY_S�;��*� !*��YfSYS�;��*� -*��YfSY+S�;��*� �*��YfSY�S�;��*� �*��YfSY�S�;��*� 1*��YfSYS�;��*� ����*� �*��YfSYhS�;��*� �*��YfSY^S�;��*� %*��YfSY`S�;��**� ��� �*� ]b��*� Ud��*� �*��Y�S�;��*� 9*��Y_S�;��*�i+�M�k:*�m�p�Z�^� �*�u+�M�w:*��Z�^� �*�*��YfSYS�;�^�a��d�� *� �*��YS�;��*�| +�M�~:*�����������Z�^� �*�i!+�M�k:*���p�Z�^� �*��X+�M��:*��Z��Y6� '*,�p� :� E�*,��V�������� :� #�� � #:��� � :� �:���*�  f � �� � � �� [ � �� � � �� [ � �� � � �� � � �� � � ��d}����������d}������������������ �   �   ���    ��   ���   ���   ���   �� �   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   �� �   ���   ���   ���   ���   ��� �  � x ? � ? � K � K �  � � � � � � � � � � � � � � � � � � � � � � � � �	 �) �) �) �) �% �E �E �E �E �A �a �a �a �a �] �} } } } y �������������������� � �������						





2222..\\Dr�������������������22H �� �  �    �*� ��L*�N*� ��*-+�P� �*-+�s� �+u��*�iY-�M�k:*�w�p�Z�^� �*+R�V*�Z-�M�:*����Y�YSYySY!SYyS�$�*�Z�+Y6� 6*+��L+{���0���� � :� �:*+�4L��9� :	� #	�� � #:

�=� � :� �:�@�**� ��}��.Y�2� W**� ���2��.�2� �*��[-�M��:*���Z��Y6� (+��+**� Q�����+����������� :� #�� � #:��� � :� �:���*+��V*+��V�  � � �� � � �� �	�� �	$�$�!$�$)$����������������������� �   �   ���    ���   ���   �   ���   ���   �� �   ���   ���   ��� 	  ��� 
  ���   ���   ���   �� �   ���   ���   ���   ��� �   � & N N 6 �� �� �� �� l�6�6�6�6�:�:�<�<�5�5�5�5�M�M�M�M�M�M�M�M�5�5�����������c�5�   �� �   "     ���   �       ��      �  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��   �       ���    ���   ���     �   #     *� 
�   �       ��   :� �  *  ,  Z,
��*�1+�M�:*y���Y�YSYSY!SYS�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,!��,*|�**� �����ٶ�,��,**� ������,#��*�2+�M�:*}���Y�YSY%S�$�*�Z�+Y6� 6*,��M,'���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,)��*�3+�M�:*����Y�YSY+S�$�*�Z�+Y6� 6*,��M,-���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,
��*�4+�M�:*����Y�YSY/SY!SY/S�$�*�Z�+Y6� 6*,��M,1���0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,3��,*��**� �����ٶ�,��,**� y�����,5��*�5+�M�:$*��$�$�Y�YSY7S�$�*$�Z$�+Y6%� 6*$%,��M,9��$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( e � �� � � �� Z � �� � � �� Z � �� � � �� � � �� � � ��_{~�~�~�T�������T���������������#?B�BGB�bn�hkn�b}�hk}�nz}�}�}�����2>�8;>��2M�8;M�>JM�MRM��	���,8�258��,G�25G�8DG�GLG� �  � ,  Z��    Z�   Z��   Z��   Z��   Z� �   Z��   Z��   Z��   Z�� 	  Z�� 
  Z��   Z��   Z� �   Z��   Z��   Z��   Z��   Z��   Z��   Z��   Z� �   Z��   Z��   Z��   Z��   Z��   Z��   Z��   Z� �   Z��   Z��   Z��    Z�� !  Z�� "  Z�� #  Z�� $  Z� � %  Z�� &  Z�� '  Z�� (  Z�� )  Z�� *  Z�� +�   � / >y >y Jy Jy y �| �| �| �| �| �| �| �| �| �| �| �| �| �|D}D}}��������������m�m�m�m�m�m�m�m�e����������������� x� �  _  %  ,>��*�6+�M�:*����Y�YSY@S�$�*�Z�+Y6� 6*,��M,B���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,
��*�7+�M�:*����Y�YSYDSY!SYDS�$�*�Z�+Y6� 6*,��M,F���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,H��,*��**� 1����ٶ�,J��,**� ������,L��*�8+�M�:*����Y�YSYNS�$�*�Z�+Y6� 6*,��M,P���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,
��*�9+�M�:*����Y�YSYRSY!SYRS�$�*�Z�+Y6� 6*,��M,T���0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,V��*�[:+�M�]:$*��$_�`$b�c$�f$h�**� ݶ���}�i$hk**� I����}�n$�Y�YpSY�SYSYrSYtSYvS�$�w$�Z$�^� �*�   Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��)EH�HMH�ht�nqt�h��nq��t�������#?B�BGB�bn�hkn�b}�hk}�nz}�}�}�����2>�8;>��2M�8;M�>JM�MRM� �  t %  ��    �   ��   ��   ��   � �   ��   ��   ��   �� 	  �� 
  ��   ��   � �   ��   ��   ��   ��   ��   ��   ��   � �   ��   ��   ��   ��   ��   ��   ��   � �   ��   ��   ��    �� !  �� "  �� #  �� $�   � 1 >� >� ����� ��������������������������������������������}�}���������������������������������e� �� �  b  ,  �,|��*�;+�M�:*����Y�YSY~S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,���*�<+�M�:*ɶ��Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,
��*�=+�M�:*˶��Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,T���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,���**� %��2� 
,���,���*�>+�M�:*Ѷ��Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,���*�?+�M�:$*ն$�$�Y�YSY�S�$�*$�Z$�+Y6%� 6*$%,��M,���$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��	���,8�258��,G�25G�8DG�GLG�������������'�'�$'�','��������������������������������� �  � ,  ���    ��   ���   ���   ���   �� �   ���   ���   ���   ��� 	  ��� 
  ���   ���   �� �   ���   ���   ���   ���   ���   ���   ���   �� �   ���   ���   ���   ���   ���   ���   ���   �� �   ���   ���   ���    ��� !  ��� "  ��� #  ��� $  �� � %  ��� &  ��� '  ��� (  ��� )  ��� *  ��� +�   R  >� >� ��� ������������_�_�_�����{�v�v�?� �� �   	 ,  _,Ķ�*�'+�M�:*<���Y�YSY�S�$�*�Z�+Y6� 6*,��M,ȶ��0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,ʶ�*�(+�M�:*E���Y�YSY�S�$�*�Z�+Y6� 6*,��M,ζ��0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,ж�*�)+�M�:*G���Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,Զ��0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,ֶ�,*N�**� ٶ���ٶ�,۶�,**� }�����,ݶ�*�*+�M�:*T���Y�YSY�S�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,��,*[�**��Y�S���Y**� a�S�"����,��*�++�M�:$*\�$�$�Y�YSY�SY!SY�S�$�*$�Z$�+Y6%� 6*$%,��M,��$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��	���,8�258��,G�25G�8DG�GLG�����&2�,/2��&A�,/A�2>A�AFA�����1=�7:=��1L�7:L�=IL�LQL� �  � ,  _��    _�   _��   _��   _��   _� �   _��   _��   _��   _�� 	  _�� 
  _��   _��   _� �   _��   _��   _��   _��   _��   _��   _��   _� �   _��   _��   _��   _��   _��   _��   _��   _� �   _��   _��   _��    _�� !  _�� "  _�� #  _�� $  _� � %  _�� &  _�� '  _�� (  _�� )  _�� *  _�� +�   � ( >< >< <EE �E�G�G�G�G�GgNgNgNgNgNgNgNgN_N�N�N�N�NN�T�T�T{[{[a[a[a[a[Y[�\�\�\�\�\ �� �  �  ,  $,
��*�@+�M�:*׶��Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,���,*۶**� -����ٶ�,��,**� ������,���*�A+�M�:*���Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,���*�B+�M�:*���Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,���*�C+�M�:*����Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,
��*�D+�M�:$*��$�$�Y�YSY�SY!SY�S�$�*$�Z$�+Y6%� 6*$%,��M,���$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( e � �� � � �� Z � �� � � �� Z � �� � � �� � � �� � � ��_{~�~�~�T�������T���������������#?B�BGB�bn�hkn�b}�hk}�nz}�}�}�����&2�,/2��&A�,/A�2>A�AFA����������������������� �  � ,  $��    $�   $��   $��   $��   $� �   $��   $��   $��   $�� 	  $�� 
  $��   $��   $� �   $��   $��   $��   $��   $��   $��   $��   $� �   $��   $��   $��   $��   $��   $��   $��   $� �   $��   $��   $��    $�� !  $�� "  $�� #  $�� $  $  � %  $�� &  $�� '  $�� (  $�� )  $�� *  $�� +�   � ! >� >� J� J� � �� �� �� �� �� �� �� �� �� �� �� �� �� ��D�D��������������������Y� � �    ,  P,���,**� )�����,���,**� )�����,���*�,+�M�:*^���Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,���*�-+�M�:*g���Y�YSY S�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,��*�.+�M�:*o���Y�YSYS�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,
��*�/+�M�:*q���Y�YSYSY!SYS�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,��,*u�**� !����ٶ�,��,**� i�����,��*�0+�M�:$*w�$�$�Y�YSYS�$�*$�Z$�+Y6%� 6*$%,��M,��$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( � � �� � � �� � � �� � � �� � � �� � � �� � � �� � � ��Uqt�tyt�J�������J���������������58�8=8�Xd�^ad�Xs�^as�dps�sxs�����(4�.14��(C�.1C�4@C�CHC������".�(+.��"=�(+=�.:=�=B=� �  � ,  P��    P�   P��   P��   P�   P �   P��   P��   P��   P�� 	  P�� 
  P��   P�   P �   P��   P��   P��   P��   P��   P��   P�   P �   P��   P��   P��   P��   P��   P��   P�   P �   P��   P��   P��    P�� !  P�� "  P�� #  P	� $  P
 � %  P�� &  P�� '  P�� (  P�� )  P�� *  P�� +�   � + ] ] ] ] ] ] ] ] ] ] j^ j^ v^ v^ 3^:g:gg�o�o�o�q�q�q�q�qcucucucucucucucu[u|u|u|u|u{u�w�w�w �� �  %    �*,��V*�[E+�M�]:*����`��c�f��hk**� ����}�n�Y�YpSY�SYSY�S�$�w�Z�^� �,Ŷ�*�F+�M�:*����Y�YSY�S�$�*�Z�+Y6� 6*,��M,ɶ��0���� � :� �:*,�4M��9� :	� #	�� � #:

�=� � :� �:�@�,
��*�G+�M�:*����Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,Ͷ��0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�*,��V*�[H+�M�]:*��϶`��c�f��hk**� u����}�n�Y�YpSY�SYSY�S�$�w�Z�^� �*,��V*�I+�M�:*����Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,׶��0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�*�  ��
� �%1�+.1� �%@�+.@�1=@�@E@�����������������������03�383�	S_�Y\_�	Sn�Y\n�_kn�nsn� �  .   ���    ��   ���   ���   ��   ��   � �   ���   ���   ��� 	  ��� 
  ���   ���   ��   � �   ���   ���   ���   ���   ���   ���   ��   ��   � �   ���   ���   ���   ���   ��   �� �   � '  �  � (� (� C� C� C� C� g� g� s� s� � �� �� ����������X�A�A�I�I�d�d�d�d���������)�����������  � �  3     W**� ��.Y�2� W**� ������.�2� *+,��� �**� ���� *+,�� �*�   �   *    W��     W�    W��    W�� �   � &  m  m  m  m   m   m   m   m  m  m  m  m  m  m  m  m  m  m  m  m  m  m  m  m   m   m   m 9 � 9 � 9 � 9 � = � = � @ � @ � 8 � 8 � 8 � �� �  �  ,  4,ܶ�,**� ������,޶�*�J+�M�:*���Y�YSY�S�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,��,*��Y�S�;����,��,*��Y�S�;����,��*�K+�M�:*���Y�YSY�S�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,��*��L+�M��:*��Z��Y6� /*,��M�K���� � :� �:*,�4M��9� :� #�� � #:�L� � :� �:�M�,��,*��Y�S�;����,��,*��Y�S�;����,��*�M+�M�:*%���Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,���*�N+�M�:$*(�$�$�Y�YSY�S�$�*$�Z$�+Y6%� 6*$%,��M,���$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( o � �� � � �� d � �� � � �� d � �� � � �� � � �� � � ��p�������e�������e���������������	!�!&!��AM�GJM��A\�GJ\�MY\�\a\�"�"'"��BN�HKN��B]�HK]�NZ]�]b]�������������!�!�!�!&!� �  � ,  4��    4�   4��   4��   4�   4 �   4��   4��   4��   4�� 	  4�� 
  4��   4�   4 �   4��   4��   4��   4��   4��   4��   4   4 �   4��   4��   4��   4��   4��   4��   4�   4 �   4��   4��   4��    4�� !  4�� "  4�� #  4� $  4 � %  4�� &  4�� '  4�� (  4�� )  4�� *  4�� +�   � & � � � � � T T  � � � � � UU�u"u"u"u"t"�"�"�"�"�"�%�%�%�(�(u( �� �  �    �*,��V*�i"+�M�k:*���p�Z�^� �*,��V*�i#+�M�k:*���p�Z�^� �*,��V**� ���  ,���,**� ������,���,���,*#�**� ɶ��*�Y*��YS�;S�	����,���*�i$+�M�k:*&���p�Z�^� �,���*�%+�M�:*)���Y�YSY�S�$�*�Z�+Y6� 6*,��M,\���0���� � :	� 	�:
*,�4M�
�9� :� #�� � #:�=� � :� �:�@�,���*�&+�M�:*,���Y�YSY�S�$�*�Z�+Y6� 6*,��M,����0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�*� e�������Z�������Z���������������)EH�HMH�ht�nqt�h��nq��t������� �   �   ���    ��   ���   ���   � �   �!�   �"�   �#�   �$ �   ��� 	  ��� 
  ���   ���   �%�   ���   �&�   �' �   ���   ���   ���   ���   ���   ��� �   � $      V V > u u u u t t � � � � � t �# �# �# �# �# �# �# �# �# �& �& �&J)J)),,�, B� �  �  #  G,��*�O+�M�:*1���Y�YSYSY!SYS�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�*,�V*� e*2�**2�*$&�*,��"��*,	�V*� �*3�***� e����"��*,��V9*4�**� ��p�9�9�sN*��:-�֧�*,�V*� �**� �**� �����,��,*9�**� ��YS�ʸ��Ͷ�, ��,*<�**� ��YWS�ʸ��Ͷ�,"��*�P+�M�:*@���Y�YSY$SY!SY$S�$�*�Z�+Y6� 6*,��M,&���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�*,	�V*�Q+�M�:*A���Y�YSY(SY!SY(S�$�*�Z�+Y6� 6*,��M,*���0���� � :� �:*,�4M��9� :� #�� � #:  �=� � :!� !�:"�@�",,��,*D�**� ��YS�ʸ�**� �����0��,2��,*D�**� ɶ��*�Y*��YS�;S�	����,4��,**� ������,6��,**� ������,8��c\9�sN-��:�=�A��)*�  e � �� � � �� Z � �� � � �� Z � �� � � �� � � �� � � ��B^a�afa�7�������7���������������/2�272�R^�X[^�Rm�X[m�^jm�mrm� �  B    G��    G�   G��   G��   G(�   G) �   G��   G��   G��   G�� 	  G�� 
  G��   G�*   G�*   G�*   G�    G+�   G, �   G��   G��   G��   G��   G��   G��   G-�   G. �   G�   G��   G��   G��    G�� !  G�� "�  � g >1 >1 J1 J1 1 �2 �2 �2 �2 �2 �2 �2 �2 �2 �2 �2 �2333333
3
3=4=4=4=4=4=4K4K4|5|5w5w5w5w5s5s5�9�9�9�9�9�9�9�9�9�<�<�<�<�<�<�<�<�<@@'@'@�@�A�A�A�A�A�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�DDDDDDB434 _� �  �  ,  ,F��*�R+�M�:*Z���Y�YSYHS�$�*�Z�+Y6� 6*,��M,J���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@�,L��*�S+�M�:*`���Y�YSYNS�$�*�Z�+Y6� 6*,��M,P���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,R��*�T+�M�:*h���Y�YSYTS�$�*�Z�+Y6� 6*,��M,V���0���� � :� �:*,�4M��9� :� #�� � #:�=� � :� �:�@�,X��*�U+�M�:*n���Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� : � # �� � #:!!�=� � :"� "�:#�@�#,���,**� )�����,���,**� )�����,Z��*�V+�M�:$*r�$�$�Y�YSY\SY!SY\S�$�*$�Z$�+Y6%� 6*$%,��M,^��$�0���� � :&� &�:'*%,�4M�'$�9� :(� #(�� � #:)$)�=� � :*� *�:+$�@�+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��� �  �� ,�&),�� ;�&);�,8;�;@;��������������������������������������������������� �  � ,  ��    �   ��   ��   /�   0 �   ��   ��   ��   �� 	  �� 
  ��   1�   2 �   ��   ��   ��   ��   ��   ��   3�   4 �   ��   ��   ��   ��   ��   ��   5�   6 �   ��   ��   ��    �� !  �� "  �� #  7� $  8 � %  �� &  �� '  �� (  �� )  �� *  �� +�   v  >Z >Z Z`` �`�h�h�h�n�n�n�nSn$o$o$o$o#o:o:o:o:o9o�r�r�r�rOr n� �  � 	   *,��V*��W+�M��:*������*��Y�S�;���}���Z��Y6�u*,��M*,��� :�N���*,��� :�7�o�*,�� :� �X�*,�<� :	�	�A	�*,�z� :
� �*
�*,��� :� ۨ�*,��� :� Ĩ ��*,��� :� �� ��*,��� :� �� ��*,�D� :� � ��*,�a� :� h� ��,c��,**� ������,e��,**� ������,g��,**� ������,i���j���� � :� �:*,�4M��k� :� #�� � #:�l� � :� �:�m�*� ) Z u�� { ��� � ��� � ��� � ��� � ��� � �����-��3D��J[��a������� O u�� { ��� � ��� � ��� � ��� � ��� � �����-��3D��J[��a������� O u�� { ��� � ��� � ��� � ��� � ��� � �����-��3D��J[��a��������������� �   �   ��    �   ��   ��   9:   ; �   ��   ��   ��   �� 	  �� 
  ��   ��   %�   ��   ��   ��   ��   ��   ��   ��   ��   �� �   Z      . . . .isisisishsssss~s�s�s�s�s�s  N� �  � 	   [*�**��YS���"$�(�~��.Y�2� *W*4�Y6SY8S�;=�(�~��.�2� w*�I+�M�O:*�Q�T�Z�^� �*�c+�M�e:*�g�kmoq*�*�u�y�}���Z�^� �*	�**	�*�u��Y�S�"�2� w*�c+�M�e:*	���km�*��Y�S�;���}����moq*	�*�u�y�}���Z�^� �,���*��+�M��:*��Z��Y6� �*,��M*,��� :	� ^� �	�*,�"� :
� G� 
�**� ���� *,�J� :� � W��K���� � :� �:*,�4M��9� :� #�� � #:�L� � :� �:�M�*� ����������
����9���9���9��-9�369���H���H���H��-H�36H�9EH�HMH� �   �   [��    [�   [��   [��   [<=   [>?   [@?   [A   [B �   [�� 	  [�� 
  [��   [��   [%�   [��   [��   [��   [�� �   D                   7  7  N  N  7  7  7  7      x  x  c  �  �  �  �  �  �  �  �  �  �  �    � 	 � 	 � 	 � 	 � 	 � 	 	 	" 	" 	" 	" 	K 	K 	T 	T 	T 	T 	K 	K 	 � 	 � 	y � �� �� �� �� �� �� �� �� �� �� �y  �� �  � 	   �*� �*<�**� ն���H��*�+�M�:*=�J�MOQ�**� ��:S!J�VWX:SZJ�VW�Y�Y!SYSYZSYS�$�*�Z�^� �*� Y*>�**� �����H��*?�**� ���^�a��d�t|�.Y�2� &W*?�**� Y��^�a��d�t|�.�2� �*A�**� ���^�a��d�t|�.Y�2� &W*A�**� Y��^�a��d�t|�.�2� ;*��YfSYhS**� ����j�y**� Y����y�˧ ;*� ��m��**� ��Y*I�**� ��p�c�sS**� ���w� ;*� ��m��**� ��Y*O�**� ��p�c�sS**� ���w**� ���2���*�|+�M�~:*S����������Y���*T�*�u�����**� ն�������**� ��������¶��}���Z�^� �*��+�M��:*U��Z��Y6	� �*��M�:
*V�
�
�Y�YSY�SY!SY�S�$�*
�Z
�+Y6� 6*
,��M,���
�0���� � :� �:*,�4M�
�9� :� &� c�� � #:
�=� � :� �:
�@�����/��� :� #�� � #:��� � :� �:���*� /KN�NSN�$q}�wz}�$q��wz��}��������q��w��������q��w��������������� �   �   ���    ��   ���   ���   �C�   �D�   ���   �EF   �G�   �H � 	  �I� 
  �J �   ���   �%�   ���   ���   ���   ���   ���   ���   ���   ��� �  � � 
 < 
 < 
 < 
 < 
 < 
 < 
 < 
 <   < D = D = ] = ] =  = � > � > � > � > � > � > � > � > � > � ? � ? � ? � ? � ? � ? � ? � ? � ? � ? � ? � ? � ? � ?  ?  ? � ? � ? � ? � ? � ? � ? A A A A( A( A A A A AD AD AD AD AR AR AD AD AD AD A A Ay Dy Dy Dy D� D� Dy Dy Dy Dy D� D� D� D� Dy Dy Dy Dy Df D� H� H� H� H� H� I� I� I� I� I� I� I� I� I� I� I� I� I� I� I A� N� N� N� N� N� O� O� O� O� O� O  O  O� O� O O O O O� O � ?   : R R R R R R8 S8 SP TP T\ T\ T\ T\ Tc Tc Ti Ti Ti Ti Tw Tw T} T} T} T} T� T� TL TL T! S V V V V� V� U R �� �  
� 	 0  G*�+�M�:*n���Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,ݶ��0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@��BY*� ��E:*� *r�**� A����H��*t�**� ��^�a��d�� 3*v�**��YfS���Y**� �S�"W� ;*� ��m��**� ��Y*{�**� ��p�c�sS**� Ŷ�w**� ���2���*�|+�M�~:* �����������Y���* ��*�u���¶��}���Z�^� :�Q�*��+�M��:* ���Z��Y6� �*��M�:* ����Y�YSY�SY!SY�S�$�*�Z�+Y6� 6*,��M,���0���� � :� �:*,�4M��9� :� )� i���� � #:�=� � :� �:�@�����+��� :� &�=�� � #:��� � :� �:�����:�:��:����  �           C��*��+�M��: * �� �Z ��Y6!�/*� �M�:"* ��"�"�Y�YSY�SY!SY�S�$�*"�Z"�+Y6#� �*"#,��M,Ŷ�,* ��**� E�Y�S�ʸ��Ͷ�,϶�,* ��**� E�Y�S�ʸ��Ͷ�,��"�0���� � :$� $�:%*#,�4M�%"�9� :&� )� i� �&�� � #:'"'�=� � :(� (�:)"�@�) ����� ��� :*� &� y*�� � #:+ +��� � :,� ,�:- ���-*� ��m��**� ��Y* ��**� ��p�c�sS**� =��w� �� � :.� .�:/�֩/*� 8 ] y |� | � |� R � �� � � �� R � �� � � �� � � �� � � ��w�������l�������l������������������������������WZ�Z_Z�������������������������}�����������}������������������� ��1a��1a��1a.1a ��6c��6c��6c.6c ��4���4���4�.4�1�4���4��14�494� �  � 0  G��    G�   G��   G��   GK�   GL �   G��   G��   G��   G�� 	  G�� 
  G��   G�M   GNF   G��   GO�   GP �   GQ�   GR �   G��   G��   G��   G��   G��   G��   G��   G��   G��   G�   GS   G�T   GU�   GV�    GW � !  GX� "  GY � #  GZ� $  G[� %  G�� &  G�� '  G�� (  G�� )  G�� *  G�� +  G\� ,  G]� -  G^� .  G_� /�  � w 6 n 6 n B n B n   n � r � r � r � r � r � r � r � r � r � t � t � t � t t t. v. v v v vB zB zB zB z> zY {Y {Y {Y {Y {Y {e {e {Y {Y {k {k {k {k {H { � t � pv v v v v v � �� �� �� �� �� �� �� �� �� �� �� �� �P �P �\ �\ � �� �v � �� �� �� �  �  �  �  �  �  �  �  �� �* �* �* �* �* �* �* �* �" �� �a �� �� �� �� �� � � � � � � � � � � � � � � �� �� � � o H� �  	�  (  ��BY*� ��E:*� e* ٶ** ٶ*$&�*,��"��*� �* ڶ***� e��.�Y*��Y�S�;S�"��*�|+�M�~:* ۶���������Y���* ܶ*�u��0��*��Y�S�;����2�¶��}���Z�^� :���*��+�M��:* ޶�Z��Y6� �*��M�:	* ߶	�	�Y�YSY4SY!SY4S�$�*	�Z	�+Y6
� W*	
,��M,* ߶*��Y�S�;���Ͷ�,6��	�0��Ө � :� �:*
,�4M�	�9� :� )� i���� � #:	�=� � :� �:	�@�����
��� :� &�w�� � #:��� � :� �:���*� q**� m��֨<�B:�:��:�;���                C��*� �=��*��+�M��:* ��Z��Y6�W*��M�:* ���Y�YSY?SY!SY?S�$�*�Z�+Y6� �*,��M,A��,* �*��Y�S�;���Ͷ�,C��,* �**� E�Y�S�ʸ��Ͷ�,E��,* �**� E�Y�S�ʸ��Ͷ�,G���0��x� � :� �:*,�4M��9� :� )� i� ��� � #:�=� � : �  �:!�@�!�������� :"� &� o"�� � #:##��� � :$� $�:%���%**� ��Y* �**� ��p�c�sS**� 5��w� �� � :&� &�:'�֩'*� 0x�������m�������m����������������-��!-�'*-��<��!<�'*<�-9<�<A<�%�������������������������5��)5�/25���D��)D�/2D�5AD�DID�  �ba ��ba�!ba'_ba  �gc ��gc�!gc'_gc  ��� �����!��'_��b����)��/������� �  � (  ���    ��   ���   ���   �dM   �eF   ���   �f�   �g �   �h� 	  �i � 
  ���   ���   �%�   ���   ���   ���   ���   ���   ���   ���   ��S   ��T   �j�   �k�   �l �   �m�   �n �   ��   ��   ���   ���   ���    ��� !  ��� "  ��� #  �Z� $  �[� %  ��� &  ��� '�  � x ! � ! � $ � $ �   �   �  �  �  �  �  �  � C � C � T � T � B � B � B � B � 7 � 7 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � k �Q �Q �] �] �� �� �� �� �� �� �� �� �� � � � �Q �Q �Q �Q �M �M �� �� �� �� �� �� �� �� �
 �
 �> �> �> �> �> �> �> �> �6 �f �f �f �f �f �f �f �f �^ �� �� �� �� �� �� �� �� �� �� �� �g �g �g �g �g �g �s �s �g �g �y �y �y �y �y �y �U �U �   � �� �  
�  !  �**� ������*��Y�S��Y���*��Y�S�;����Ķ¶Ƕ�*� ��Ѷ�*� �*'�*�ڸ޶�**� Ͷ�.Y�2� W**� ����.Y�2� W**� ����.Y�2� W**� ��.�2� �*� M���**� �����.Y�2� W**� �����.�2� >*� M**� ����� *��Y�S�;� *��Y�S�;��*3�**� ��� *�Y**� M�SY*��YS�;S�	W**� Ͷ�.Y�2� W**� ������.�2��*�+�M�:*8���Y�YSYSY!SYS�$�*�Z�+Y6� 6*,��M,-���0���� � :� �:*,�4M��9� :� #�� � #:		�=� � :
� 
�:�@��BY*� ��E:*+,��� :����:�:��:�����  �           C��*��
+�M��:*\��Z��Y6�,*�	�M�:*]���Y�YSY�SY!SY�S�$�*�Z�+Y6� �*,��M,Ŷ�,*_�**� E�Y�S�ʸ��Ͷ�,϶�,*`�**� E�Y�S�ʸ��Ͷ�,Ӷ��0���� � :� �:*,�4M��9� :� )� i� ��� � #:�=� � :� �:�@��������� :� &� x�� � #:��� � :� �:���*� ��m��**� ��Y*f�**� ��p�c�sS**� =��w� �� � :� �: �֩ *� "����3?�9<?��3N�9<N�?KN�NSN�9�������.�������.�����������������������.��.�.�+.�.3.�ly�a��aly�c��cly������������������� �  L !  ���    ��   ���   ���   �o�   �p �   ���   ���   ���   ��� 	  ��� 
  ���   ��M   �%�   ��S   ��T   �q�   �r�   �s �   �t�   �u �   ���   ���   ���   ���   ���   ���   ���   ��   ��   ���   ���   ���  �  � �                  !  !          " # " # ( # ( # ( # ( # > # > #  #  #  #  #  #  " N & N & N & N & J & _ ' _ ' ^ ' ^ ' ^ ' ^ ' T ' J % j + j + j + j + i + i + i + i + } + } + } + } + � + � + � + � + | + | + | + | + i + i + i + i + � + � + � + � + � + � + � + � + � + � + � + � + i + i + i + i + � + � + � + � + � + � + � + � + i + i + � . � . � . � . � . � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � / � 1 � 1 � 1 � 1 1 1 1 1 � 1 � 1 1 1! 1! 1 � 1 � 1 � 1 � 1 � 1 � /: 3: 3L 3L 3W 3W 3: 3: 3: 3 i + i *m 7m 7m 7m 7l 7l 7l 7l 7� 7� 7� 7� 7� 7� 7� 7� 7 7 7 7 7 7 7 7 7l 7l 7� 8� 8� 8� 8� 8 ] ] ] ]Q _Q _Q _Q _Q _Q _Q _Q _J _z `z `z `z `z `z `z `z `s `� ]� \C dC dC dC d? dZ fZ fZ fZ fZ fZ ff ff fZ fZ fl fl fl fl fI f? c_ 9l 7 � �  �    �*��YfSY�S* ��**� ٶ���H��*��YfSY_S* ��**� a����H��**� �#�� 6* ��**��YfS���Y��S�"W� ,* ��**��YfS���Y��S�"W**� �����.Y�2� W*��Y�S�;�2�r*��YfSYS* ��*�* ��**� !����H���*��YfSY+S* ��*�* ��**� -����H���*��YfSY�S* ��**� �����H��*��YfSYS* ��**� 1����H��**� ����.Y�2� -W*��Y�S�;*��YS�;�
�~�.�2� .*��YfSYS* ��**� ݶ���H��*��YfSY�S* ��*�* ��**� �����H���**� �����.Y�2� W*��Y�S�;�2� �*�|+�M�~:* �����������Y���* ��*�u����**� ٶ������**� a�������**� !�������**� ��������**� �����¶��}���Z�^� �� �*�|+�M�~:* �����������Y���* ��*�u����**� ٶ������**� a����¶��}���Z�^� �*�   �   >   ���    ��   ���   ���   �vF   �wF �  � �  �  �  �  �  �  �  �  �   � C � C � C � C � C � C � C � C � * � U � U � U � U � Y � Y � [ � [ � T � T � � � � � k � k � k � � � � � � � � � � � T � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �: �: �D �D �D �D �D �D �9 �9 �9 �9 �  �q �q �q �q �q �q �q �q �X �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � �� �� �9 �9 �C �C �C �C �C �C �8 �8 �8 �8 � � � �   �X �X �X �X �\ �\ �_ �_ �W �W �W �W �p �p �p �p �W �W �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � �  �  �  �  �� �� �� �c �c �{ �{ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �w �w �K �K �W � x  �   �     �A�G�Ia�G�c��G���G�z�G�|��G���Y�S���Y�S���Y�S��Y9S�;g�G�is�G�uz�G�|��G��Y�G�[�Y�Y�SY�SY�SY�S�$���   �       ���   � �  i 	 '  w�BY*� ��E:*+,�� :�R�*��+�M��:* ���Z��Y6� �*��M�:* ����Y�YSY�SY!SY�S�$�*�Z�+Y6	� 6*	,��M,����0���� � :
� 
�:*	,�4M��9� :� )� i���� � #:�=� � :� �:�@�����+��� :� &�>�� � #:��� � :� �:�����:�:��:����   �           C��*��+�M��:* ƶ�Z��Y6�/*��M�:* Ƕ��Y�YSY�SY!SY�S�$�*�Z�+Y6� �*,��M,Ŷ�,* ɶ**� E�Y�S�ʸ��Ͷ�,϶�,* ʶ**� E�Y�S�ʸ��Ͷ�,���0���� � :� �:*,�4M��9� :� )� i� ��� � #:�=� � :� �: �@� �������� :!� &� y!�� � #:""��� � :#� #�:$���$*� ��m��**� ��Y* ж**� ��p�c�sS**� =��w� �� � :%� %�:&�֩&*� 0 � � �� � � �� � � �� � � �� � �� � �� ��� < �:� �.:�47:� < �I� �.I�47I�:FI�INI������������������������������������������������������  `a   �`a �.`a4]`a  ec   �ec �.ec4]ec  d�   �d� �.d�4]d�`�d���d��ad�did� �  � '  w��    w�   w��   w��   wdM   wD�   wy�   wz �   w{�   w| � 	  w�� 
  w��   w��   w%�   w��   w��   w��   w��   w��   w��   w�S   w�T   w}�   w~�   w �   w��   w� �   w��   w�   w�   w��   w��   w��    w�� !  w�� "  w�� #  wZ� $  w[� %  w�� &�   � 4  �  � � � � � G �   �� �� �� �� �0 �0 �0 �0 �0 �0 �0 �0 �( �Z �Z �Z �Z �Z �Z �Z �Z �R �� �� �# �# �# �# � �; �; �; �; �; �; �G �G �; �; �M �M �M �M �) � �   �       �    �