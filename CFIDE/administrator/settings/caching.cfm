����  - � 
SourceFile )/CFIDE/administrator/settings/caching.cfm 7cfcaching2ecfm851322214$func_CF_ANONYMOUSCLOSURE_ELVIS1  coldfusion/runtime/Closure  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   ! javax/servlet/jsp/JspContext #
 $ " parent Ljavax/servlet/jsp/tagext/Tag; & '	  ( _CF_EVAR * _setCurrentLineNo (I)V , -
  . REQUEST 0 java/lang/String 2 RUNTIME 4 _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; 6 7
  8 getRedisCacheStoragePassword : java/lang/Object < _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; > ?
  @ _set '(Ljava/lang/String;Ljava/lang/Object;)V B C
  D _cf_Evar F _isDefinedElvis &(Ljava/lang/String;)Ljava/lang/Object; H I coldfusion/runtime/CFPage K
 L J _boolean (Ljava/lang/Object;)Z N O coldfusion/runtime/Cast Q
 R P   T _autoscalarize V I
  W _CF_ANONYMOUSCLOSURE_ELVIS1 Y metaData Ljava/lang/Object; [ \	  ] &coldfusion/runtime/AttributeCollection _ elvisClosure a true c closure e Name g 
Parameters i ([Ljava/lang/Object;)V  k
 ` l getMetadata ()Ljava/lang/Object; this 9Lcfcaching2ecfm851322214$func_CF_ANONYMOUSCLOSURE_ELVIS1; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       [ \     n o  s   "     � ^�    r        p q    t u  s   !     Z�    r        p q    v w  s   #     � 3�    r        p q    x y  s   	 
   d+� � :+� ,� :	-� � %:-� ):-+-�� /--1� 3Y5S� 9;� =� A� E-G� M� S� U� 	-+� X��    r   f 
   d p q     d z {    d | \    d } ~    d  �    d � �    d � \    d & '    d  �    d  � 	 �   * 
 .� .� .� .� V� V� J� J� J� J�     s   #     *� 
�    r        p q    �   s   Z     <� `Y� =YbSYdSYfSYdSYhSYZSYjSY� =S� m� ^�    r       < p q        ����  -� 
SourceFile )/CFIDE/administrator/settings/caching.cfm cfcaching2ecfm851322214  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   SORTLIST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   MEMCACHEDSERVERMAXOBJECTS   	   ITM   	    VERIFYSSCONNECTION " " 	  $ BROWSE_SERVER & & 	  (  CACHING_CLEAR_FOLDER_CACHE_TITLE * * 	  , INVALID_REDIS_PORT . . 	  0 TRUSTEDCACHE 2 2 	  4 REDISSERVERUSERNAME 6 6 	  8 ERROR_LICENSE : : 	  < CFCATCH > > 	  @ REDISSERVERMAXLIFE B B 	  D CLUSTERENABLED F F 	  H TOKEN J J 	  L DSN N N 	  P JCSSERVERMAXLIFE R R 	  T JCSDSNVALUE V V 	  X L10N_MEMCACHED Z Z 	  \ CACHING_CREATETABLES_DESC ^ ^ 	  ` MAX_CACHED_QUERIES_ERROR b b 	  d MEMCACHEDSERVERMAXLIFE f f 	  h REDISISCLUSTER j j 	  l TABLESCREATED n n 	  p TEMPLATE_CACHE_SIZE_ERROR r r 	  t  QUERY_CACHING_CLEAR_CACHE_BUTTON v v 	  x 	LOGACTION z z 	  | JCSSERVERMAXOBJECTS ~ ~ 	  � DATA � � 	  � SESSIONSTORAGE � � 	  � TRIMMEDSERVER � � 	  � ERROR_EMPTY_MC � � 	  � MEMCACHEDSERVER � � 	  � STDATASOURCES � � 	  � SESSION_STORAGE_VERIFY_FAILURE � � 	  � "COMPONENT_CACHING_CLEAR_CACHE_DESC � � 	  � SAVECLASSFILES � � 	  � REDISSERVERMAXIDLE � � 	  � COMPONENTCACHE � � 	  � L10N_EHCACHE � � 	  � I � � 	  � FOLDER_NOT_SPECIFIED_ERROR � � 	  � $COMPONENT_CACHING_CLEAR_CACHE_BUTTON � � 	  � CHECKCSRFTOKEN � � 	  � VERIFY � � 	  � REDISSERVERETERNAL � � 	  � 	PAGELABEL � � 	  � 	REDISPORT � � 	  � VERIFYMCCONNECTION � � 	  � SETREDIS � � 	  � !CACHING_CLEAR_FOLDER_CACHE_BUTTON � � 	  � BENT � � 	  � CACHING_CLEAR_CACHE_DESC � � 	  � SESSIONSTORAGECONNECTIONSTATUS � � 	  � 
L10N_REDIS � � 	  � SERVERCACHETYPE � � 	  � GETCSRFTOKEN � � 	  � 
RUNTIMECFC � � 	  � 
GETEDITION � � 	  � CURCACHE � � 	   CACHEREALPATH 	  REDISSERVERPASSWORD 	  INTERNALQUERYCACHEENABLED

 	  FORM 	  ERROR_EMPTY_REDIS_HOSTNAME 	  NUMERIC_REDIS_PORT 	  CACHING_CLEAR_CACHE_BUTTON 	  REDISSERVERMAXOBJECTS 	   ISDCAVAILABLE"" 	 $ INREQTRUSTEDCACHE&& 	 ( AERRORMESSAGES** 	 , 
JCSDSNNAME.. 	 0 LOGAUDITLOG22 	 4 TEMPLATECACHESIZE66 	 8 MEMCACHEDSERVERMAXIDLE:: 	 < MCCONNECTIONSTATUS>> 	 @ JCSSERVERETERNALBB 	 D ADMINSUBMITFF 	 H REDISSERVERJJ 	 L MAXCACHEDQUERIESNN 	 P L10N_JCSRR 	 T REQUESTVV 	 X MC_VERIFY_FAILUREZZ 	 \ 	SERVERARY^^ 	 ` JCSSERVERMAXIDLEbb 	 d CACHING_CLEAR_FOLDER_CACHE_DESCff 	 h MEMCACHEDSERVERETERNALjj 	 l BERRORSEXISTnn 	 p ERROR_TABLESrr 	 t MC_VERIFY_FALSEvv 	 x ___IMPLICITARRYSTRUCTVAR4z createImplicitVariable S(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;)Lcoldfusion/runtime/Variable;|}
 ~z 	 � ___IMPLICITARRYSTRUCTVAR5�� 	 � ___IMPLICITARRYSTRUCTVAR2�� 	 � ___IMPLICITARRYSTRUCTVAR3�� 	 � ___IMPLICITARRYSTRUCTVAR0�� 	 � ___IMPLICITARRYSTRUCTVAR1�� 	 � ___IMPLICITARRYSTRUCTVAR6�� 	 � ___IMPLICITARRYSTRUCTVAR7�� 	 � com.macromedia.SourceModTime  d7ߡ pageContext #Lcoldfusion/runtime/NeoPageContext;��	 � getOut ()Ljavax/servlet/jsp/JspWriter;�� javax/servlet/jsp/JspContext�
�� parent Ljavax/servlet/jsp/tagext/Tag;��	 � Cp1252� setPageEncoding (Ljava/lang/String;)V�� !coldfusion/runtime/NeoPageContext�
�� F
<script language="Javascript" src="../scripts/util.js"></script>

� write�� java/io/Writer�
�� _setCurrentLineNo (I)V��
 � GetAuthUser ()Ljava/lang/String;��
 � matches� java/lang/Object� ^\w$� _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;��
 � _boolean (Ljava/lang/Object;)Z�� coldfusion/runtime/Cast�
�� %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag� forName %(Ljava/lang/String;)Ljava/lang/Class;�� java/lang/Class�
����	 � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;��
 � coldfusion/tagext/net/CookieTag� 30� 
setExpires (Ljava/lang/Object;)V��
�� cfcookie� value� CGI� java/lang/String� SCRIPT_NAME� _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;��
 � _String &(Ljava/lang/Object;)Ljava/lang/String;��
�� _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
  setValue�
� setHttpOnly (Z)V
�	 name cfadmin_lastpage_ concat &(Ljava/lang/String;)Ljava/lang/String;
� setName�
� 	hasEndTag coldfusion/tagext/GenericTag
 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag �	 " coldfusion/tagext/io/SilentTag$ 
doStartTag ()I&'
%( 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;*+
 , LOCALE. REQUEST.LOCALE0 en2 checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V45
 6 false8 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V4:
 ; 	component= CFIDE.adminapi.runtime? CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;AB
 C setE� coldfusion/runtime/VariableG
HF  J 86400L 10000N FORM.MEMCACHEDSERVERETERNALP FORM.REDISSERVERETERNALR FORM.JCSSERVERETERNALT _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;VW
 X FORM.JCSSERVERMAXIDLEZ FORM.JCSSERVERMAXLIFE\ FORM.JCSSERVERMAXOBJECTS^ 
LOCALEFILE` java/lang/StringBuilderb resources/settings_d �
cf append -(Ljava/lang/String;)Ljava/lang/StringBuilder;hi
cj .cfml toStringn�
�o _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Vqr
 s cfide.adminapi.runtimeu 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTagxw�	 z !coldfusion/tagext/lang/IncludeTag| ../auditlog.cfm~ setTemplate��
}� ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
�� setArray !(Lcoldfusion/runtime/FastArray;)V��
H� _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � 
getEdition� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � Standard� _compare '(Ljava/lang/Object;Ljava/lang/String;)D��
 � _Object (Z)Ljava/lang/Object;��
�� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag���	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V�
�� &coldfusion/runtime/AttributeCollection� id� template_cache_size_error� var� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
��
�( GThe template cache size must be a number greater than or equal to zero.� doAfterBody�'
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�' #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� max_cached_queries_error� TThe maximum number of cached queries must be a number greater than or equal to zero.� _factor1�W
 � caching_clear_cache_submit� Template Cache Cleared.� folder_not_specified_error� :Specify folder for clearing folder specific trusted cache.� error_empty_redis_hostname� ,Enter a valid hostname for the Redis Server.� mc_verify_false� 5Connection to memcached server can not be established� error_empty_mc� 0Enter a valid hostname for the Memcached Server.� _factor2�W
 � error_license� ^Distributed caching(Redis and Memcached) is only available with an Enterprise edition license.� numeric_redis_port� *Redis server port value should be numeric.� invalid_redis_port  >Redis server port number must be in the range from 1 to 65535.
�
�
� SQLEXECUTIVE MAXQUERYCOUNT	 isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z
  	CSRFTOKEN FORM.CSRFTOKEN  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z
  checkCSRFToken _autoscalarize�
  SETTINGSTABKEYNAME FORM.VERIFYSSCONNECTION USEJ2EESESSION  FORM.USEJ2EESESSION" SESSIONSTORE$ FORM.SESSIONSTORE& memory( FORM.REDISSERVER* FORM.REDISPORT, 6379. FORM.REDISSERVERPASSWORD0 FORM.REDISISCLUSTER2 Trim4
 5 coldfusion/runtime/CFBoolean7 t_true Lcoldfusion/runtime/CFBoolean;9:	8; ArrayLen (Ljava/lang/Object;)I=>
 ? (D)Ljava/lang/Object;�A
�B _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)VDE
 F 	IsNumericH�
 I (Ljava/lang/Object;D)D�K
 L  �� _factor4OW
 P *coldfusion/runtime/TransientVariableHolderR &(Lcoldfusion/runtime/NeoPageContext;)V T
SU STATICPASSWORDW Compare '(Ljava/lang/String;Ljava/lang/String;)IYZ
 [ (I)Ljava/lang/Object;�]
�^ !verifyRedisCacheStorageConnection` nullb JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;de
 f unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;hi coldfusion/runtime/NeoExceptionk
lj t97 [Ljava/lang/String; anypno	 r findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Itu
lv bind '(Ljava/lang/String;Ljava/lang/Object;)Vxy
Sz true| $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag~�	 � coldfusion/tagext/io/OutputTag�
�( 
						� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � session_storage_verify_failure� =
							Redis Connection Verification Failed.<br />
							� MESSAGE� D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;��
 � EncodeForHTML�
 � <br />
							� DETAIL� <br />
						� 
					�
�� coldfusion/tagext/QueryLoop�
��
��
�� 
					
					� unbind� 
S� _factor3�W
 � redis� FORM.VERIFYMCCONNECTION� FORM.MEMCACHEDSERVER� ,� ListToArray 6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;��
 � _List $(Ljava/lang/Object;)Ljava/util/List;��
�� java/util/List� size�'�� P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; �
 � get�]�� Len�>
 � _int (D)I��
�� Left '(Ljava/lang/String;I)Ljava/lang/String;��
 � RUNTIME� _resolve��
 � verifyMemcachedConnection� f_false�:	8� t98�o	 � mc_verify_failure� A
							Memcached Connection Verification Failed.<br />
							� _factor5�W
 � CLEARTRUSTEDCACHENOW� FORM.CLEARTRUSTEDCACHENOW� clearTrustedCache� 	logaction� cleared the template cache� CLEARCOMPONENTCACHENOW� FORM.CLEARCOMPONENTCACHENOW� clearComponentCache� cleared the component cache� 	_factor13�W
 � Val (Ljava/lang/String;)D��
 � _double (Ljava/lang/Object;)D
� Round (D)D
  '(Ljava/lang/Object;Ljava/lang/Object;)D�	
 
E�
H Caching Template cache size getTemplateCacheSize 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object;
  Trusted Cache isTrustedCache ASSUMETEMPLATECACHEISNOTDIRTY "FORM.ASSUMETEMPLATECACHEISNOTDIRTY Component Cache isComponentCache! ENABLECOMPONENTCACHE# FORM.ENABLECOMPONENTCACHE% _factor6'W
 ( Cache Template In Request* isInRequestTemplateCacheEnabled, INREQUESTTEMPLATECACHE. FORM.INREQUESTTEMPLATECACHE0 Save class files2 getSaveClassFiles4 FORM.SAVECLASSFILES6 &(Ljava/lang/String;)Ljava/lang/Object;�8
 9 getInstallType; j2ee= SERVER.COLDFUSION.APPSERVER? isDefinedCanonicalName (Ljava/lang/String;)ZAB
 C SERVERE 
COLDFUSIONG 	APPSERVERI JRun4K Cache web server pathsM isCachePathsO FORM.CACHEREALPATHQ _factor7SW
 T  Maximum number of cached queriesV getMaxQueryCountX $Use internal cache to store queries Z isInternalCacheForQueryEnabled\ USEINTERNALCACHE^ FORM.USEINTERNALCACHE` logauditlogb 	_factor14dW
 e t99go	 h _factor8jW
 k 	_factor15mW
 n selectp CREATETABLESr FORM.CREATETABLESt setJCSClusterDsnNamev Max (DD)Dxy
 z setMaxQueryCount| setTemplateCacheSize~ int�@�i�     Min�y
 � setTrustedCache� t_TRUE�:	8� f_FALSE�:	8�  setInRequestTemplateCacheEnabled� setComponentCache� _factor9�W
 � setSaveClassFiles� setInternalCacheForQueryEnabled� setCachePaths� setRuntimeProperty� redisCacheStorageHost� redisCacheStoragePort� setSessionStorageCluster� redisCacheStoragePassword� 	_factor10�W
 � setMemcachedServer� setMemcachedServerMaxIdle� setMemcachedServerMaxLife� setMemcachedServerEternal� setMemcachedServerMaxObjects� setRedisServerMaxIdle� setRedisServerMaxLife� setRedisServerMaxObjects� setRedisServerEternal� setJCSServerMaxIdle� setJCSServerMaxLife� setJCSServerMaxObjects� setJCSServerEternal� getServerCacheType� setServerCacheType� 	_factor11�W
 � t100 Any��o	 � update_caching_error� error_tables� 8
						Unable to update caching settings.<br />
						� <br />
					� 
				� 
				
				� 	_factor12�W
 � CLEARTRUSTEDFOLDERCACHENOW� FORM.CLEARTRUSTEDFOLDERCACHENOW� FOLDERTRUSTEDCACHE� clearTemplateFolderFromCache� *cleared the template cache for the folder � CLEARQUERYCACHENOW� FORM.CLEARQUERYCACHENOW� purgeQueryCache� cleared the query cache� 	_factor34�W
 � getRuntimeProperty� getMemcachedServer� getMemcachedServerMaxIdle� getMemcachedServerMaxLife� getMemcachedServerMaxObjects� getMemcachedServerEternal� getRedisServerMaxIdle� getRedisServerMaxLife getRedisServerMaxObjects getRedisServerEternal getJCSServerMaxIdle getJCSServerMaxLife	 getJCSServerMaxObjects getJCSServerEternal getSessionStorageIsCluster 	_factor16W
  7cfcaching2ecfm851322214$func_CF_ANONYMOUSCLOSURE_ELVIS1 _invokeElvisUDF A(Ljava/lang/String;Lcoldfusion/runtime/CFPage;)Ljava/lang/Object;
  	_factor17W
  caching_pagename pagename ../header.cfm! ?
<table width="100%" style="overflow-x: hidden">
<tr>
<td>
# 
% )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag('�	 * #coldfusion/tagext/html/form/FormTag, editForm.
- cfform1 action3 	setAction5�
-6 post8 	setMethod:�
-;
-( ../include/margintop.cfm> ../include/errors.cfm@ 1<b style='color:green'>Table has been created</b>B WriteOutputDB
 E /
<input type="hidden" name="csrftoken" value="G getCSRFTokenI ">

<h2 class="pageHeader">K pageHeader_cachingM 	
CachingO .
</h2>


<br>
<span style="color:green;">Q memcached_verify_successS  Memcached Connection Successful.U <br><Br>W 	_factor23YW
 Z &</span>

<span style="color:green;">\ redis_verify_success^ Redis Connection Successful.` <Br><Br>b </span>

<b><label for="tcs">d template_cache_sizef "Maximum number of cached templatesh g</label>&nbsp;</b>
<input name="TemplateCacheSize" id="tcs" type="text" maxlength="5" size="6" value="j " class="number">
<br>

l caching_template_cacheSize_descn�
Limits the number of templates cached using template caching. If the cache is set to a small value, ColdFusion might re-process your templates. If your server has a sufficient amount of memory, you can achieve optimum performance by setting this value to the total number of all of your ColdFusion templates. Setting the cache to a high value does not automatically reduce available memory because ColdFusion caches templates incrementally.
p 

r getJCSClusterDsnNamet isJCSClusterTablesCreatedv DATASOURCESx _Map #(Ljava/lang/Object;)Ljava/util/Map;z{
�| J2EEDATASOURCES~ StructAppend "(Ljava/util/Map;Ljava/util/Map;Z)Z��
 � t101�o	 � ex� 	_factor24�W
 � 


<br><br>
� l10n_ehcache� EHCache� l10n_jcs� JCS� 
l10n_redis� Redis� l10n_memcached� 	Memcached� �

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("serverCacheType")>� ServerCacheTypeTitle� Server wide cache engine� 	_factor25�W
 � v</b>
	</td>
</tr>
<tr class="serverCacheType"><td height="10px"></td></tr>
<tr class="serverCacheType"> 
  <td>
� server_cache_type_desc� v
Default server wide caching engine to be used. <i>Switching cache engine will result in loss of old cached data.</i>� �
</td></tr>
<tr class="serverCacheType"><td height="10px"></td></tr>
<tr class="serverCacheType"><td>
<select name="servercachetype" id="servercachetype" >
  <option value='0' � selected� >�  </option>
  <option value='1'  � !</option>
   <option value='2'  � "</option>
    <option value='3'  � 2</option>
</select>
</td></tr>

</table>


� IsDCAvailable� �

<hr class="line">


<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("memcachedCacheSettings")>� MemcachedStorageTitle� Memcached Cache Settings� �</b>
	</td>
</tr>
<tr class="memcachedCacheSettings"><td height="10px"></td></tr>
</table>
		<span class="memcachedCacheSettings">
		� defaultedisStorageDescription� b
		Specify comma separated IP addresses of memcached servers like localhost:11211,localhost:11212� �</span>
	<table class="memcachedCacheSettings">
	<tr><td height="10px"></td></tr>
	<tr>
	                <td>
				<label for="MemcachedServer" class="labelbold">� memcachedserver� Memcached Servers� �</label>
			</td>
			<td>
				<input type="text" maxlength="550" style="width:400px; margin-left: 10px;" name="memcachedserver" size="25" value="� EncodeForHTMLAttribute�
 � K" id="memcachedserver">
			</td>
			<td align="left" class="redis">
				� verifymcconnection� Verify Connection� <
				<input type="Submit" name="verifymcconnection" value="� ^" class="buttn-grey" >
				
			</td>
		</tr>
	</table>
<br>	
	<b class="subheading">
		� memcachedExtraSettings� lSpecify server level cache properties for Memcached. Changing these settings requires restarting ColdFusion.� 	_factor18�W
 � �
	</b>
	<Br><br>
	<table>
		<tr>

                        <td>
				<label for="MemcachedServerMaxIdle" class="labelbold">� memcachedservermaxidle� Max idle time(seconds)� �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="memcachedservermaxidle" size="25" value="� �" id="memcachedservermaxidle">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr>

                        <td>
				<label for="MemcachedServerMaxLife" class="labelbold">� memcachedservermaxlife� Max life span(seconds)� �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="memcachedservermaxlife" size="25" value="� �" id="memcachedservermaxlife">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr>

                        <td>
				<label for="MemcachedServerMaxObjects" class="labelbold">� memcachedservermaxobjects� Max elements� �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="memcachedservermaxobjects" size="25" value="� �" id="memcachedservermaxobjects">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr>

                        <td>
				<label for="MemcachedServerEternal" class="labelbold">� memcachedservereternal� Eternal �</label>
			</td>
			<td>
				 <input style='margin-left:10px' name="memcachedservereternal" type="checkbox" value="1" title="memcachedservereternal "   checked �
				id="memcachedservereternal">
			</td>
		</tr>
</table>
<hr class="line">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("redisCacheSettings")> RedisStorageTitle	 Redis Cache Settings 	_factor19W
  �</b>
	</td>
</tr>
<tr class="redisCacheSettings"><td height="10px"></td></tr>
<tr class="redisCacheSettings">
	<td>
		<div class="description">
		 defaultedisStorageDescription2 �
		Specify Redis server settings for caching. These settings for caching only applies when Redis is chosen as default cache engine at the server level, or you specify Redis as cache engine at the application level.
		 v
		</div>
	</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="redisCacheSettings">
		 �
		<tr class="redis"><td height="10px"></td></tr>
		<tr class="redis">
			<td width="150px">
				<label class="label-bold" for="RedisServer"> redisserver Redis Server h</label>
			</td>
			<td>
				<input type="text" maxlength="550" name="RedisServer" size="25" value=" �" id="redisserver">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr class="redis">
			<td>
				<label class="label-bold" for="RedisPort">  redis_server_port" Redis Server Port$ 	_factor20&W
 ' c</label>
			</td>
			<td>
				<input type="text" maxlength="5" name="RedisPort" size="3" value=") �" id="redisport" class="number">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr class="redis">
			<td>
				<label class="label-bold" for="RedisServerPassword">+ RedisServerPassword- Password/ �</label>
			</td>
			<td>
                <input type="password" maxlength="100" name="RedisServerPassword" size="25" value="1 �" autocomplete="off" id="redispassword">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
        <tr class="redis">
			<td>
				<label class="label-bold" for="RedisIsCluster">3 RedisIsCluster5 
Is Cluster7 n</label>
			</td>
			<td>
			   <input name="redisiscluster" type="checkbox" value=1 id="redisiscluster"   9 CHECKED; g>
                        </td>
		</tr>
</table>
<div class="redis spacer10 redisCacheSettings">
	= verifyssconnection? <
				<input type="Submit" name="verifyssconnection" value="A ," class="buttn-grey" >
				
</div>
<br>
C redisExtraSettingsE �
		<b class="subheading">Specify server level cache properties for Redis. Changing these settings requires restarting ColdFusion.</b>
		G �<Br><br>

<table border="0" cellpadding="0" cellspacing="0" class="redisCacheSettings">
<tr class="redis">

                        <td>
				<label for="redisServerMaxIdle" class="labelbold">I 	_factor21KW
 L �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="redisservermaxidle" size="25" value="N �" id="redisservermaxidle">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr class="redis">

                        <td>
				<label for="redisServerMaxLife" class="labelbold">P �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="redisservermaxlife" size="25" value="R �" id="redisservermaxlife">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr class="redis">

                        <td>
				<label for="redisServerMaxObjects" class="labelbold">T �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="redisservermaxobjects" size="25" value="V �" id="redisservermaxobjects">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr class="redis">

                        <td>
				<label for="RedisServerEternal" class="labe-lbold">X �</label>
			</td>
			<td>
				 <input style='margin-left:10px' name="redisservereternal" type="checkbox" value="1" title="redisservereternal "  Z =
				id="redisservereternal">
			</td>
		</tr>
</table>
\ 	_factor26^W
 _ �

<hr class="line">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("configureJCSCluster")>a JCSStorageTitlec JCS Cache Settingse e</b>
	</td>
</tr>
<tr class="configureJCSCluster"><td height="10px"></td></tr>
</table>

    
g StructIsEmpty (Ljava/util/Map;)Zij
 k	
               
   <table border="0" cellpadding="0" cellspacing="0" id = "jcsdsntable" class="configureJCSCluster">
   		<tr><td height="10px"></td></tr>
		              <tr>
			       <td  id="schd_dsn" style="display: ;">
                                <label for="schd_dsn">m schd_dsno fChoose the data source in which you want to create a table to be used by the JCS JDBC auxiliary cache.q �&nbsp;</label>
	                       </td>
			       <td nowrap id="jcsdsnname" style="display: block;">
						<select name="jcsdsnname" >
								s StructKeyList #(Ljava/util/Map;)Ljava/lang/String;uv
 w 
textnocasey asc{ ListSort J(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;}~
  ,
							   <option value='select' selected>� select_datasource� Select data source� T</option>                                                         
							
							� java/util/StringTokenizer� '(Ljava/lang/String;Ljava/lang/String;)V �
�� 	nextToken��
�� 
							
								� -MySQL5,MSSQLServer,MySQL_DD,OracleThin,Oracle� _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;��
 � DRIVER� 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object;��
 � ListContainsNoCase�Z
 � (D)Z��
��  
								 <option value="� " 
								   >� *</option>
								  
								 
								� 	
							� CFLOOP� checkRequestTimeout��
 � hasMoreTokens ()Z��
��
							
						</select>
			       </td>
			     </tr>
				<tr><td height="10px"></td></tr>
			     <tr>
	
	                       <td>
                                   <input name="createtables" type="checkbox" value="1" id="createtables"><b> <label for="createtables_">� caching_wscreatetables�  Override table if already exists� �</label></b><br />
              
                               </td>
                             </tr>
                <tr><td height="10px"></td></tr>
     </table>
      � caching_createtables_desc�4The JDBC disk cache uses a relational database such as MySQL as a persistent store. The cache elements are serialized and written into a BLOB. You can find more details here : <a target='blank' href='https://commons.apache.org/proper/commons-jcs/JDBCDiskCache.html'>JCS JDBC Disk Cache</a>
		               � 	_factor22�W
 � %
	<span class="configureJCSCluster">� </span>

	<br><BR>
	� JCSExtraSettings� �
		<b class="subheading">Specify server level cache properties for JCS. Changing these settings requires restarting ColdFusion.</b>
		� p<Br><br>
	<table>
		<tr>

                        <td>
				<label for="jcsServerMaxIdle" class="labelbold">� �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="jcsservermaxidle" size="25" value="� �" id="jcsservermaxidle">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr>

                        <td>
				<label for="jcsServerMaxLife" class="labelbold">� �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="jcsservermaxlife" size="25" value="� �" id="jcsservermaxlife">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr>

                        <td>
				<label for="jcsServerMaxObjects" class="labelbold">� 	_factor27�W
 � �</label>
			</td>
			<td>
				<input type="text" maxlength="250" style="width:200px; margin-left: 10px;" name="jcsservermaxobjects" size="25" value="� �" id="jcsservermaxobjects">
			</td>
		</tr>
		<tr class="redis"><td height="10px"></td></tr>
		<tr>

                        <td>
				<label for="jcsServerEternal" class="labelbold">� �</label>
			</td>
			<td>
				 <input style='margin-left:10px' name="jcsservereternal" type="checkbox" value="1" title="jcsservereternal "  � �
				id="jcsservereternal">
			</td>
		</tr>
</table>

<hr class="line">

<table width="100%">
<tr>
<td class="px350">
<table><tr><td width="15px">
<input name="AssumeTemplateCacheIsNotDirty" id="atc" type="checkbox" value="1"
	� %
	>
</td><td>
<b><label for="atc">� caching_trusted_cache� Trusted cache� F</label></b>
</td></tr><tr><td></td><td>
<div class="description">
� caching_trusted_cache_desc�*
	When checked, any requested files found to currently reside in the template cache will not be inspected for potential updates. For sites where
	templates are not updated during the life of the server, this minimizes
	file system overhead. This setting does not require restarting the server.
� �
</div>
</td></tr></table>
</td>

<td class="px350">
<table><tr><td width="15px">
<input name="inRequestTemplateCache" id="artc" type="checkbox" value="1"
	� &
	>
</td><td>
<b><label for="artc">� in_request_template_cache� Cache template in request� in_request_template_cache_text��
   When checked, any requested files will be inspected only once for potential updates within a request. If unchecked,
   requested file will be inspected for changes each and everytime when its accessed within the same request. For application where
   templates/components are not expected to reflect updates within the same request, this minimizes file system overhead. This setting does not require restarting the server.
� 	_factor28�W
 � �
</div>
</td></tr></table>
</td>

<td class="px350">
<table><tr><td width="15px">
<input name="enablecomponentcache" id="acc" type="checkbox" value="1"
	� %
	>
</td><td>
<b><label for="acc">� caching_component_cache  Component cache caching_component_cache_desc �
	When checked, component path resolution is cached and not resolved again. This setting does not require restarting the server.
 �
</div>
</td></tr></table>
</td>
</tr>
</table>

<table width="100%">
<tr><td height="15px"></td></tr>
<tr>
<td class="px350">
<table><tr><td width="15px">
<input name="SaveClassFiles" id="scf" type="checkbox" value="1"
	 %
	>
</td><td>
<b><label for="scf">
 save_class_files save_class_files_desc �
	When you select this option, the class files generated by ColdFusion are saved to disk for reuse after the server restarts.
	Adobe recommends this for production systems.  During development, Adobe recommends that you do not select this option.	 '
</div>
</td></tr></table>
</td>

 �
	<td class="px350">
	<table><tr><td width="15px">
   	<input name="cacheRealPath" id="cacheRealPath" type="checkbox" value="1"
		 4
		>
	</td><td>
  	<b><label for="cacheRealPath"> cacheRealPath K</label></b>
  	</td></tr><tr><td></td><td>
	<div class="description">
	 cacheRealPath_desc s
		Caches page paths on embedded & multiple site web server installations, which provides improved performance.
	 (
	</div>
	</td></tr></table>
	</td>
  	_factor29"W
 # �

<td class="px350">
<table><tr><td width="15px">
	<input name="useinternalcache" id="useinternalcache" type="checkbox" value="1"
		% &
		>
</td><td>
<b><label for="uic">' use_internal_cache) #Use internal cache to store queries+ use_internal_cache_desc-
	When checked, a server level internal cache is used to store cached queries. By default, cached queries are stored in QUERY region supported by currently selected caching engine at server level. You must restart the server for this change to take effect
/ j
</div>
</td></tr></table>
</td>
</tr>
</table>

<div class="spacer10"></div>
<b><label for="mcq">1 caching_Max_cachedQueries3 `</label></b>
<input name="MaxCachedQueries" id="mcq" type="text" maxlength="6" size="3" value="5 ." class="number">
<div class="description">
7 caching_Max_cachedQueries_desc9
	Limits the maximum number of cached queries that the server will maintain.
	Cached queries allow for retrieval of result sets from memory rather
	than through a database transaction. Since the queries reside in memory,
	and query result set sizes differ, there must be some user-imposed limit
	to the number of queries that are cached. When this value is exceeded,
	the oldest query is dropped from the cache and is replaced with the
	specified query. This setting does not apply to Application-specific caching.
; 
</div>
<br><br>
= caching_clear_cache_button? Clear Template Cache NowA 	_factor30CW
 D caching_clear_cache_descF �Click the button below to clear the template cache. ColdFusion will reload templates into memory the next time they are requested and recompile them if they have been modified.H caching_clear_cache_titleJ Clear template cacheL �

<div class="grey-background-div">
<input type="hidden" name="ClearTrustedCacheNow" value="0">
<input name="ClearTrustedCache" id="ctc" class="buttn-grey"  type="button" value="N d" onClick="document.forms[0].ClearTrustedCacheNow.value=1;form.submit()" style="margin-left: 0px">
P 2
</div>

<div class="spacer20bottom"></div>

R !caching_clear_folder_cache_buttonT 'Clear Template Cache of Specific FolderV caching_clear_folder_cache_descX �Click Clear Template Cache of Specific Folder to clear the template cache of the selected folder. ColdFusion reloads templates into the memory, next time they are requested and recompiles them if they have been modified.Z  caching_clear_folder_cache_title\ $Clear folder specific template cache^ 	_factor31`W
 a 

<b>c !</b>
<div class="description">
e �</div>


<div class="grey-background-div spacer10">
<table>
<tr>
	<td width="120">
		<b><label for="foldertrustedcachelabel">g foldertrustedcachelabeli Select folderk �</label></b>
		&nbsp;&nbsp;
	</td>
	<td>
		<input name="foldertrustedcache" id="foldertrustedcache" type="text" maxlength="550" value="" size="65" id="foldertrustedcache" >
				&nbsp;&nbsp;
				m button_browseo browse_serverq Browse Servers 5
				<input type="button" class="buttn-grey" title="u "  name="browsesubmit" value="w �" onclick='wopentype("foldertrustedcache","dir");'>

	</td>
	<td>
		<input type="hidden" name="ClearTrustedFolderCacheNow" value="0">
		<input name="ClearTrustedFolderCache" id="ctfc" class="buttn-grey"  type="button" value="y �" onClick="document.forms[0].ClearTrustedFolderCacheNow.value=1;form.submit()">
	</td>
</tr>
</table>
</div>

<br><br>

{ $component_caching_clear_cache_button} Clear Component Cache Now  query_caching_clear_cache_button� Clear Query Cache Now� "component_caching_clear_cache_desc� �Click the button to clear the component cache. ColdFusion will ignore the resolved path for components and try the resolution again.� 	_factor32�W
 � #component_caching_clear_cache_title� Clear component cache� �



<div class="grey-background-div">
<input type="hidden" name="ClearComponentCacheNow" value="0">
<input name="ClearComponentCache" id="ctc" class="buttn-grey"  type="button" value="� M" onClick="document.forms[0].ClearComponentCacheNow.value=1;form.submit()">
� �
</div>


<br><br>

<div class="grey-background-div">
<input type="hidden" name="ClearQueryCacheNow" value="0">
<input name="ClearQueryCache" id="ctc" class="buttn-grey"  type="button" value="� K" onClick="document.forms[0].ClearQueryCacheNow.value=1;form.submit()">

� clear_query_cache_desc� -
	Click the button to clear the query cache.� "
</div>

<table width="100%">
� ../include/buttonbar.cfm� 
</table>
� ../include/marginbottom.cfm�
-�
-�
-�
-� 	_factor33�W
 � 	_factor35�W
 � 
</td>
</tr>
</table>

� ../footer.cfm� metaData Ljava/lang/Object;��	 � 	Functions� 
Properties� this Lcfcaching2ecfm851322214; __factorParent out Ljavax/servlet/jsp/JspWriter; module83 $Lcoldfusion/tagext/lang/ImportedTag; mode83 t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module84 mode84 t14 t15 t16 t17 t18 t19 module85 mode85 t22 t23 t24 t25 t26 t27 LocalVariableTable LineNumberTable java/lang/Throwable� Code module86 mode86 module87 mode87 module88 mode88 module89 mode89 t30 t31 t32 t33 t34 t35 module90 mode90 t38 t39 t40 t41 t42 t43 module95 mode95 module96 mode96 t20 Ljava/lang/String; t21 Ljava/util/StringTokenizer; module97 mode97 t28 t29 module98 mode98 t36 t37 	include57 #Lcoldfusion/tagext/lang/IncludeTag; 	include58 module59 mode59 t12 t13 output61  Lcoldfusion/tagext/io/OutputTag; mode61 module60 mode60 output63 mode63 module62 mode62 module64 mode64 module65 mode65 ,Lcoldfusion/runtime/TransientVariableHolder; #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable4 !coldfusion/runtime/AbortException java/lang/Exception module67 mode67 module68 mode68 module69 mode69 module70 mode70 module71 mode71 module72 mode72 module91 mode91 module92 mode92 module93 mode93 module94 mode94 module99 mode99 	module100 mode100 	module101 mode101 	module102 mode102 	module103 mode103 	module104 mode104 	module105 mode105 	module106 mode106 	module107 mode107 	module108 mode108 	module109 mode109 	module110 mode110 	module111 mode111 	module112 mode112 	module113 mode113 t46 t47 t48 t49 t50 t51 runPage ()Ljava/lang/Object; 
include135 getMetadata varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs 	module114 mode114 	module115 mode115 	module116 mode116 	module117 mode117 	module118 mode118 	module119 mode119 	module120 mode120 	module121 mode121 	module122 mode122 	module123 mode123 	module124 mode124 	module125 mode125 	module126 mode126 	module127 mode127 	module128 mode128 form133 %Lcoldfusion/tagext/html/form/FormTag; mode133 	module129 mode129 	module130 mode130 
include131 
include132 cookie0 !Lcoldfusion/tagext/net/CookieTag; silent35  Lcoldfusion/tagext/io/SilentTag; mode35 module32 mode32 module33 mode33 module34 mode34 t4 t5 __cfcatchThrowable3 output54 mode54 module53 mode53 Ljava/util/List; __cfcatchThrowable2 output52 mode52 module51 mode51 module55 mode55 	include56 	output134 mode134 module73 mode73 module74 mode74 module75 mode75 module76 mode76 module77 mode77 module78 mode78 module79 mode79 module80 mode80 module81 mode81 module82 mode82 	include23 module25 mode25 module26 mode26 __cfcatchThrowable1 output46 mode46 module45 mode45 module27 mode27 module28 mode28 module29 mode29 module30 mode30 module31 mode31 <clinit> __cfcatchThrowable0 output43 mode43 module42 mode42 1     m                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �            
                        "    &    *    .    2    6    :    >    B    F    J    N    R    V    Z    ^    b    f    j    n    r    v    z    �    �    �    �    �    �    �    ��   �   w�   ��   no   ~�   �o   go   �o   '�   �o   ��   * &W �  �    X,��*��S+����:*����������Y��Y�SYS�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,��**�M��� *,���*�MK�I*,���*,���**� Ѷ�� *,���*� �K�I*,���*,���**� 9��� *,���*� 9K�I*,���*,���**�	��� *,���*�	K�I*,���*,���**� m��� *,���*� m9�I*,���,��*��T+����:*ζ��������Y��Y�SYS�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,��,*Ѷ�**�M����Ӷ�,!��*��U+����:*׶��������Y��Y�SY#S�������Y6� 6*,�-M,%���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*�  Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��#&�&+&��FR�LOR��Fa�LOa�R^a�afa��
�

��*6�036��*E�03E�6BE�EJE� �     X��    X��   X��   X��   X��   X� �   X��   X��   X��   X�� 	  X�� 
  X��   X��   X� �   X��   X��   X��   X��   X��   X��   X��   X� �   X��   X��   X��   X��   X��   X�� �  � g >� >� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������� ��*�*�*�*�)�)�)�)�)�)�B�B�B�B�>�>�)�Y�Y�Y�Y�X�X�X�X�X�X�q�q�q�q�m�m�X���������������������������������������������������������y������� KW �  �  ,  J,*��,*ڶ�**� Ѷ���Ӷ�,,��*��V+����:*���������Y��Y�SY.S�������Y6� 6*,�-M,0���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,2��,**�	�����,4��*��W+����:*���������Y��Y�SY6S�������Y6� 6*,�-M,8���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,:��**� m��ՙ 
,<��,>��*��X+����:*���������Y��Y�SY@SY�SY@S�������Y6� 6*,�-M,ٶ��ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,B��,**� %�����,D��*��Y+����:*����������Y��Y�SYFS�������Y6� 6*,�-M,H���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,J��*��Z+����:$*���$�����$��Y��Y�SY�S����$�$��Y6%� 6*$%,�-M,��$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( y � �� � � �� n � �� � � �� n � �� � � �� � � �� � � ��Sor�rwr�H�������H���������������?[^�^c^�4~������4~��������������58�8=8�Xd�^ad�Xs�^as�dps�sxs���������(�"%(��7�"%7�(47�7<7� �  � ,  J��    J��   J��   J��   J��   J� �   J��   J��   J��   J�� 	  J�� 
  J��   J��   J� �   J��   J��   J��   J��   J��   J��   J��   J� �   J��   J��   J��   J��   J��   J��   J��   J� �   J��   J��   J��    J�� !  J�� "  J�� #  J�� $  J� � %  J�� &  J�� '  J�� (  J�� )  J�� *  J�� +�   � ' � � � � � � � � � ^� ^� '� �� �� �� �� ��8�8����������$�$������������������������� �W �  �  )  6,n��*��_+����:*@���������Y��Y�SYpS�������Y6� 6*,�-M,r���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,t��*� *D��*D��***� ���}�xz|���I,���*��`+����:*E���������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,���**� ���:�:6*O��:��Y��:� ���N-�I*,���*I���***� �**� Q����}��Y�S���������� J,���,*J��**� Q����Ӷ�,���,*K��**� Q�������,���*,������`6����T,���*��a+����:*X���������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �: �٩ ,���*��b+����:!*^��!�����!��Y��Y�SY�SY�SY�S����!�!��Y6"� 6*!",�-M,���!�ɚ��� � :#� #�:$*",��M�$!��� :%� #%�� � #:&!&�֨ � :'� '�:(!�٩(*�   Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��Qmp�pup�F�������F�������������������8D�>AD��8S�>AS�DPS�SXS�������������#�#� #�#(#� �  � )  6��    6��   6��   6��   6��   6� �   6��   6��   6��   6�� 	  6�� 
  6��   6��   6� �   6��   6��   6��   6��   6��   6��   6��   6��   6� �   6�    6��   6��   6� �   6��   6��   6��   6��   6��   6��    6 � !  6 � "  6�� #  6� $  6� %  6�� &  6�� '  6�� (�   C >@ >@ @ �D �D �D �D �D �D �D �D �D �D �D �D �D �D �D �D �D �D6E6E �E�G�G�G�GIIIIIIIIIILJLJLJLJLJLJLJLJDJlKlKlKlKlKlKlKlKdKI�G�G�X�X�X�^�^�^�^k^ YW �  �    �*,&��*�{9+���}:*��?����� �*,&��*�{:+���}:*��A����� �*,&��**�1���Y�ՙ W**�1�q���~�����ՙ *	��*C�FW,H��,*��**� ���J*��Y*W��YS��S������,L��*��;+����:*���������Y��Y�SYNS�������Y6� 6*,�-M,P���ɚ��� � :� �:	*,��M�	��� :
� #
�� � #:�֨ � :� �:�٩,R��**�A��ՙ2*��=+����:*�����Y6� �*��<����:*���������Y��Y�SYTS�������Y6� 6*,�-M,V���ɚ��� � :� �:*,��M���� :� &� j�� � #:�֨ � :� �:�٩,X������3��� :� #�� � #:��� � :� �:���*� Jfi�ini�?�������?���������������D`c�chc�9�������9����������������������������������������������� �     ���    ���   ���   ���   �   �   ��   � �   ���   ��� 	  ��� 
  ���   �	�   �
�   �   � �   ��   � �   ���   ���   ���   ���   ���   ���   ���   ���   ���   ��� �   � 6      V V > u u u u t t t t � � � � � � � � � � � � t t �	 �	 �	 �	 �	 t t � � � � � � � � �// ���))��� �W �  �  (  -,]��**� ��ՙ2*��?+����:*�����Y6� �*��>����:*���������Y��Y�SY_S�������Y6� 6*,�-M,a���ɚ��� � :� �:	*,��M�	��� :
� &� j
�� � #:�֨ � :� �:�٩,c������3��� :� #�� � #:��� � :� �:���,e��*��@+����:*���������Y��Y�SYgS�������Y6� 6*,�-M,i���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,k��,**�9�����,m��*��A+����:*���������Y��Y�SYoS�������Y6� 6*,�-M,q���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � : �  �:!�٩!*,&��**� YK�<*,s��*� �*"��**W��Y�S����ɶ϶I*� Y*#��**W��Y�S��u�ɶ϶I*� q*$��**W��Y�S��w�ɶ϶I*� �*W��YSYyS���I�SY*���V:"*)��**� ���}*W��YSYS���}��W� K� Q:##�:$$�m:%%���w�              "�%�{� $�� � :&� &�:'"���'*� % � � �� � � �� � � �� � � �� � � �� � � �� � � �� � � �� 1 �$� �$�!$� 1 �3� �3�!3�$03�383���������������������������������w�������l�������l��������������������������� �  � (  -��    -��   -��   -��   -   - �   -�   - �   -��   -�� 	  -�� 
  -��   -	�   -
�   -��   -��   -��   -��   -�   - �   -��   -��   -��   -��   -��   -��   -�   - �   -��   -��   -��   -��   -��    -�� !  -� "  -� #  - $  -� %  -�� &  -�� '�   � >   t t <  ��K\\%���������""""�"2#2#2#2#'#\$\$\$\$Q$''''{'�)�)�)�)�)�)�)�)�)�)�)�)�)�(�! �W �  y  ,  	,���*��C+����:*0���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩*,&��*��D+����:*1���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*,&��*��E+����:*2���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*,&��*��F+����:*3���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,���*��G+����:$*8��$�����$��Y��Y�SY�S����$�$��Y6%� 6*$%,�-M,���$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( e � �� � � �� Z � �� � � �� Z � �� � � �� � � �� � � ��6RU�UZU�+u��{~��+u��{~����������#&�&+&��FR�LOR��Fa�LOa�R^a�afa����������#� #��2� 2�#/2�272��������������������������������� �  � ,  	��    	��   	��   	��   	 �   	! �   	��   	��   	��   	�� 	  	�� 
  	��   	"�   	# �   	��   	��   	��   	��   	��   	��   	$�   	% �   	��   	��   	��   	��   	��   	��   	&�   	' �   	��   	��   	��    	�� !  	�� "  	�� #  	(� $  	) � %  	�� &  	�� '  	�� (  	�� )  	�� *  	�� +�   ^  >0 >0 J0 J0 01111 �1�2�2�2�2�2�3�3�3�3z3�8�8J8 ^W �  �  $  �,���*��H+����:*>���������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,���**� ���M�� 
,���,���,**� ������,���**� ���M�� 
,���,���,**�U�����,���**� ���M�� 
,���,���,**� ������,���**� ���M�� 
,���,���,**� ]�����,���*Y��**�%���*�ɸ��ՙ*+,��� �*+,�� �*+,�(� �*+,�M� �,O��,*��**� �����Ӷ�,Q��*��[+����:*���������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,S��,*��**� E����Ӷ�,U��*��\+����:*���������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,W��,*��**�!����Ӷ�,Y��*��]+����:*���������Y��Y�SY S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,[��**� ɶ�ՙ 
,��,]��*�   Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��l�������a�������a���������������Plo�oto�E�������E���������������4PS�SXS�)s�y|�)s��y|��������� �  j $  ���    ���   ���   ���   �*�   �+ �   ���   ���   ���   ��� 	  ��� 
  ���   �,�   �- �   ���   ���   ���   ���   ���   ���   �.�   �/ �   ���   ���   ���   ���   ���   ���   �0�   �1 �   ���   ���   ���    ��� !  ��� "  ��� #�  ^ W >> >> > �D �D �D �D �D �D �D �D �D �DEE	E	EE"E"E"E"E!E7F7F?F?F7FXFXFXFXFWFmGmGuGuGmG�G�G�G�G�G�Y�Y�Y�Y�QQ���������55���������������Y �W �  :  ,  b,b��*��^+����:*+���������Y��Y�SYdS�������Y6� 6*,�-M,f���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,h��*:��***� ���}�l�� ,*+,��� �,Ŷ�,**� a�����,Ƕ�*,&��*��c+����:*d���������Y��Y�SY�S�������Y6� 6*,�-M,˶��ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,Ͷ�*��d+����:*k���������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,϶�,*n��**�e����Ӷ�,Ѷ�*��e+����:*u���������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,Ӷ�,*x��**� U����Ӷ�,ն�*��f+����:$*��$�����$��Y��Y�SY�S����$�$��Y6%� 6*$%,�-M,���$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��i�������^�������^���������������-IL�LQL�"lx�rux�"l��ru��x�������-0�050�P\�VY\�Pk�VYk�\hk�kpk�����4@�:=@��4O�:=O�@LO�OTO� �  � ,  b��    b��   b��   b��   b2�   b3 �   b��   b��   b��   b�� 	  b�� 
  b��   b4�   b5 �   b��   b��   b��   b��   b��   b��   b6�   b7 �   b��   b��   b��   b��   b��   b��   b8�   b9 �   b��   b��   b��    b�� !  b�� "  b�� #  b:� $  b; � %  b�� &  b�� '  b�� (  b�� )  b�� *  b�� +�   � 1 >+ >+ + �: �: �: �: �: �: �: �: �: �: �` �` �` �` �` �:NdNddkk�k�n�n�n�n�n�n�n�n�n�u�u�u�x�x�x�x�x�x�x�x�x��� �W �  �  ,  J,ڶ�,*���**� �����Ӷ�,ܶ�*��g+����:*����������Y��Y�SY S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,޶�**�E��ՙ 
,��,��**� 5��ՙ 
,<��,��*��h+����:*����������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,��*��i+����:*����������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,��**�)��ՙ 
,<��,��*��j+����:*����������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,��*��k+����:$*���$�����$��Y��Y�SY�S����$�$��Y6%� 6*$%,�-M,���$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( y � �� � � �� n � �� � � �� n � �� � � �� � � �� � � ��u�������j�������j���������������9UX�X]X�.x��~���.x��~�����������58�8=8�Xd�^ad�Xs�^as�dps�sxs���������(�"%(��7�"%7�(47�7<7� �  � ,  J��    J��   J��   J��   J<�   J= �   J��   J��   J��   J�� 	  J�� 
  J��   J>�   J? �   J��   J��   J��   J��   J��   J��   J@�   JA �   J��   J��   J��   J��   J��   J��   JB�   JC �   J��   J��   J��    J�� !  J�� "  J�� #  JD� $  JE � %  J�� &  J�� '  J�� (  J�� )  J�� *  J�� +�   � ! � � � � � � � � � ^� ^� '� �� �� �����Z�Z�#����������������������� "W �  	�  4  h,���**� ���ՙ 
,<��,���*��l+����:*����������Y��Y�SYS�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,��*��m+����:*ö��������Y��Y�SYS�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,	��**� ���ՙ 
,<��,��*��n+����:*ն��������Y��Y�SYS�������Y6� 6*,�-M,3���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,��*��o+����:*ض��������Y��Y�SYS�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,��*߶�**W�:<�ɶ�>���~��Y�՚ <W*@�D��Y�ՙ *W*F��YHSYJS��L���~����ՙ�,��**���ՙ 
,<��,��*��p+����:$*��$�����$��Y��Y�SYS����$�$��Y6%� 6*$%,�-M,N��$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+,��*��q+����:,*��,�����,��Y��Y�SYS����,�,��Y6-� 6*,-,�-M,��,�ɚ��� � :.� .�:/*-,��M�/,��� :0� #0�� � #:1,1�֨ � :2� 2�:3,�٩3,!��*� 0 u � �� � � �� j � �� � � �� j � �� � � �� � � �� � � ��9UX�X]X�.x��~���.x��~�����������58�8=8�Xd�^ad�Xs�^as�dps�sxs���������(�"%(��7�"%7�(47�7<7�0LO�OTO�%o{�ux{�%o��ux��{�����������3?�9<?��3N�9<N�?KN�NSN� �  
 4  h��    h��   h��   h��   hF�   hG �   h��   h��   h��   h�� 	  h�� 
  h��   hH�   hI �   h��   h��   h��   h��   h��   h��   hJ�   hK �   h��   h��   h��   h��   h��   h��   hL�   hM �   h��   h��   h��    h�� !  h�� "  h�� #  hN� $  hO � %  h�� &  h�� '  h�� (  h�� )  h�� *  h�� +  hP� ,  hQ � -  hR� .  hS� /  hT� 0  hU� 1  hV� 2  hW� 3�   � : � � � Z� Z� #��� ��������������������W�W�V�V�h�h�V�V�V�V�~�~�}�}�}�}�����������������}�}�}�}�V�V�����������������V� XY �   �     g*����L*��N*�����*-+��� �*-+��� �+���*�{ �-���}:*a�������� ��   �   4    g��     g��    g��    g��    gZ �     Oa Oa 6a   [Y �   "     ���   �       ��      �  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� �**+,� �**+,� �	**+,� �**+,� �**+,� �**+,� �**+,� �**+,� �!**#+,� �%**'+,� �)**++,� �-**/+,� �1**3+,� �5**7+,� �9**;+,� �=**?+,� �A**C+,� �E**G+,� �I**K+,� �M**O+,� �Q**S+,� �U**W+,� �Y**[+,� �]**_+,� �a**c+,� �e**g+,� �i**k+,� �m**o+,� �q**s+,� �u**w+,� �y**{+���**�+���**�+���**�+���**�+���**�+���**�+���**�+����   �       ���    �\]   �^_  `  �         �   �        ��   CW �  �  ,  ,&��**���ՙ 
,<��,(��*��r+����:*����������Y��Y�SY*S�������Y6� 6*,�-M,,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,��*��s+����:*����������Y��Y�SY.S�������Y6� 6*,�-M,0���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,2��*��t+����:*���������Y��Y�SY4S�������Y6� 6*,�-M,W���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,6��,**�Q�����,8��*��u+����:*���������Y��Y�SY:S�������Y6� 6*,�-M,<���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,>��*��v+����:$*��$�����$��Y��Y�SY@SY�SY@S����$�$��Y6%� 6*$%,�-M,B��$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( u � �� � � �� j � �� � � �� j � �� � � �� � � �� � � ��9UX�X]X�.x��~���.x��~�������������!��<H�BEH��<W�BEW�HTW�W\W����������"�"��1�1�".1�161��������������������������� �  � ,  ��    ��   ��   ��   a�   b �   ��   ��   ��   �� 	  �� 
  ��   c�   d �   ��   ��   ��   ��   ��   ��   e�   f �   ��   ��   ��   ��   ��   ��   g�   h �   ��   ��   ��    �� !  �� "  �� #  i� $  j � %  �� &  �� '  �� (  �� )  �� *  �� +�   f  � � � Z� Z� #��� �����ppppo�������I    �   #     *� 
�   �       ��   `W �  �  ,  B*,&��*��w+����:*���������Y��Y�SYGSY�SYGS�������Y6� 6*,�-M,I���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩*,&��*��x+����:*���������Y��Y�SYKSY�SYKS�������Y6� 6*,�-M,M���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,O��,**������,Q��,**� �����,S��*��y+����:*���������Y��Y�SYUSY�SYUS�������Y6� 6*,�-M,W���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*,&��*��z+����:*���������Y��Y�SYYSY�SYYS�������Y6� 6*,�-M,[���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#*,&��*��{+����:$* ��$�����$��Y��Y�SY]SY�SY]S����$�$��Y6%� 6*$%,�-M,_��$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( f � �� � � �� [ � �� � � �� [ � �� � � �� � � �� � � ��7SV�V[V�,v��|��,v��|����������3OR�RWR�(r~�x{~�(r��x{��~������� #�#(#��CO�ILO��C^�IL^�O[^�^c^���������� � ��/�/� ,/�/4/� �  � ,  B��    B��   B��   B��   Bk�   Bl �   B��   B��   B��   B�� 	  B�� 
  B��   Bm�   Bn �   B��   B��   B��   B��   B��   B��   Bo�   Bp �   B��   B��   B��   B��   B��   B��   Bq�   Br �   B��   B��   B��    B�� !  B�� "  B�� #  Bs� $  Bt � %  B�� &  B�� '  B�� (  B�� )  B�� *  B�� +�   � # ? ? K K  ������������������ � � � w  �W �  1    �**��7�� 7*i��**W��Y�S�����Y��S��W� -*k��**W��Y�S�����Y��S��W**�_a�� 7*p��**W��Y�S�����Y��S��W� -*r��**W��Y�S�����Y��S��W*u��**W�:<�ɶ�>���~��Y�՚ <W*@�D��Y�ՙ *W*F��YHSYJS��L���~����ՙ k**�R�� 7*y��**W��Y�S�����Y�<S��W� -*{��**W��Y�S�����Y��S��W*~��***� ������Y�SY**�M�S��W**� ѶK���� *� ��*���***� ������Y�SY**� ѶS��W*���**W��Y�S�����Y**� m�S��W*���*W��YXS����**�	����\�_��M�� /*���***� ������Y�SY**�	�S��W*�   �   *   ���    ���   ���   ��� �  F � g g g g g g g g  g  g 2i 2i i i i _k _k Dk Dk Dk  g hn hn hn hn ln ln on on gn gn �p �p p p p �r �r �r �r �r gn �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �uuu&u&uuuuu �u �u �u �u �u �u<w<w<w<w@w@wCwCw;w;wnynySySySy�{�{�{�{�{;w �u�~�~�~�~�~�~�~�~�~�������������	�	�������8�8����L�L�L�L�`�`�`�`�L�L�q�q�������������������L� �W �  K  ,  w,d��,**� -�����,f��,**�i�����,h��*��|+����:*+���������Y��Y�SYjS�������Y6� 6*,�-M,l���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,n��*��}+����:*1���������Y��Y�SYpSY�SYrS�������Y6� 6*,�-M,t���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,v��,**� )�����,x��,**� )�����,z��,**� ݶ����,|��*��~+����:*?���������Y��Y�SY~SY�SY~S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*,&��*��+����:*@���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#*,&��*�� �+����:$*A��$�����$��Y��Y�SY�SY�SY�S����$�$��Y6%� 6*$%,�-M,���$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( � � �� � � �� z � �� � � �� z � �� � � �� � � �� � � ��Uqt�tyt�J�������J���������������g�������\�������\���������������8TW�W\W�-w��}���-w��}�����������
&)�).)��IU�ORU��Id�ORd�Uad�did� �  � ,  w��    w��   w��   w��   wu�   wv �   w��   w��   w��   w�� 	  w�� 
  w��   ww�   wx �   w��   w��   w��   w��   w��   w��   wy�   wz �   w��   w��   w��   w��   w��   w��   w{�   w| �   w��   w��   w��    w�� !  w�� "  w�� #  w}� $  w~ � %  w�� &  w�� '  w�� (  w�� )  w�� *  w�� +�   � 0 " " " " " $ $ $ $ $ j+ j+ 3+.1.1:1:1 �1�2�2�2�2�2�2�2�2�2�2�7�7�7�7�7@?@?L?L?	?@@@@�@�A�A�A�A�A �W �  �    $**������*���**W��Y�S�����Y*��Y�S��S��W*���**W��Y�S�����Y*��Y;S��S��W*���**W��Y�S�����Y*��YgS��S��W*���**W��Y�S�����Y*��YkS��S��W*���**W��Y�S�����Y*��YS��S��W*���**W��Y�S�����Y*��Y�S��S��W*���**W��Y�S�����Y*��YCS��S��W*���**W��Y�S�����Y*��YS��S��W*���**W��Y�S�����Y*��Y�S��S��W*���**W��Y�S�����Y*��YcS��S��W*���**W��Y�S�����Y*��YSS��S��W*���**W��Y�S�����Y*��YS��S��W*���**W��Y�S�����Y*��YCS��S��W*�*���**W��Y�S����ɶ϶I**��*��Y�S����~� �**� ������Y�ՙ HW*��Y�S����M�~���Y�՚ "W*��Y�S����M�~����ՙ F*�q�<�I**�-��Y*���**�-��@�c�CS**� =��G� [*���**W��Y�S�����Y*���*�*����*��Y�S������C�gS��W*�   �   *   $��    $��   $��   $�� �  n � � � � � � � � �  �  � 2� 2� � � � i� i� N� N� N� �� �� �� �� �� �� �� �� �� ���� �� �� ��G�G�,�,�,�~�~�c�c�c���������������������  �$�$�	�	�	�\�\�A�A�A�����x�x�x���������������������
�
���
�
�,�,�,�,�,�,�,�,�D�D�T�T�D�D�D�D�j�j�z�z�j�j�j�j�D�D�D�D�,�,���������������������������������������������������������������������,�
� �W �  � 	 *   *,&��*�+ �+���-:*��/�024*���Y�S������79�<��=Y6��*,�-M*,�[� :�_���*,��� :�H���*,��� :�1�i�*,�`� :	��R	�*,��� :
��;
�*,��� :��$�*,�$� :�ը�*,�E� :�����*,�b� :�����*,��� :�����*,&��*�� �����:*B���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� )�ݨ�� � #:�֨ � :� �:�٩,���,**� ������,���,**� ������,���,**� y�����,���*�� �����:*S���������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� )� Ϩ�� � #:�֨ � :� �:�٩,���*�{ ����}: *X�� ��� � �� :!� h� �!�,���*�{ ����}:"*Z��"���"�"�� :#� '� _#�*,&�������� � :$� $�:%*,��M�%��� :&� #&�� � #:''��� � :(� (�:)���)*� B��������� �	�� �	�� �������������)�)�&)�).)� c ~�� � ��� � ��� � ��� � ��� � ��� �����%6��<M��S ����u��{����������� X ~�� � ��� � ��� � ��� � ��� � ��� �����%6��<M��S ����u��{����������� X ~� � �� � �� � �� � �� � �� ���%6�<M�S ��u�{���������
�� �  � *   ��     ��    ��    ��    �    � �    ��    ��    ��    �� 	   �� 
   ��    	�    
�    ��    ��    ��    � �    ��    ��    ��    ��    ��    ��    ��    � �    ��    ��    ��    ��    ��    ��    �     �� !   � "   �� #   � $   � %   �� &   �� '   �� (   �� )�   � & ! ! / / / / L L�B�B�B�B[B4H4H4H4H3HJIJIJIJIII`Q`Q`Q`Q_Q�S�SuS[X[XAX�Z�Z�Z  �W �  �  (  �,���*��**��*�����Y�S�ϸՙ w*��+����:*������*���Y�S�������
�*��*�Ŷ����� �*�##+���%:*����)Y6��*,�-M*,�Y� :�����*,��� :�����*,��� :	����	�*�� ����:
*O��
�����
��Y��Y�SY�SY�SY�S����
�
��Y6� 6*
,�-M,���
�ɚ��� � :� �:*,��M�
��� :� )���� � #:
�֨ � :� �:
�٩*��!����:*R���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� )��L�� � #:�֨ � :� �:�٩*��"����:*S���������Y��Y�SYSY�SYS�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� )� E� }�� � #:�֨ � : �  �:!�٩!���I� � :"� "�:#*,��M�#��� :$� #$�� � #:%%�� � :&� &�:'��'*�Q*W��YSY
S���I**�I�� o*� MK�I**��� *� M*��YS���I*c��**� ���*��Y**� M�SY*W��YS��S��W**�#�� {*+,�Q� �**�q����� *+,��� �*� ���I*�M*��YKS���I*� �*��Y�S���I*� m*��YkS���I**����� �**���K�7* ���*��Y�S�����6K���� <*�q�<�I**�-��Y* ���**�-��@�c�CS**� ���G**�q����� &*+,��� �*� �*��Y�S���I**�����Y�ՙ "W*��Y�S���M�~����ՙ K* ˶�**W��Y�S����ɶ�W* ̶�**� }���*��Y�S��W�v**������Y�ՙ "W*��Y�S���M�~����ՙ K* ն�**W��Y�S����ɶ�W* ֶ�**� }���*��Y�S��W��**�I�� F*+,��� �*+,�f� �*+,�o� �**�q����� *+,��� ���**�����Y�ՙ "W*��Y�S���M�~����ՙ �*���*��Y�S���˸_��M�� :*�q�**�-��Y*���**�-��@�c�CS**� ���G**�q����� r*���**W��Y�S�����Y*��Y�S��S��W*���**� }���*��Y�*��Y�S�����S��W� �**�����Y�ՙ "W*��Y�S���M�~����ՙ H*Ŷ�**W��YS����ɶ�W*ƶ�**� }���*��Y�S��W*� 2u�������j�������j���������������D`c�chc�9�������9���������������/2�272�Xd�^ad�Xs�^as�dps�sxs� � ��� � ��� ����������X��^������� � ��� � ��� ����������X��^������� � ��� � ��� ����������X��^��������������� �  � (  ���    ���   ���   ���   ���   ���   �� �   ���   ���   ��� 	  ��� 
  �� �   �	�   �
�   ���   ���   ���   ���   ���   �� �   ���   ���   ���   ���   ���   ���   ���   �� �   ���   ���   ���   ���   ���    ��� !  ��� "  ��� #  �� $  �� %  ��� &  ��� '�  �~        !  !      D  D  R  R  R  R  {  {  �  �  �  �  {  {  .   N ON OZ OZ O O R R) R) R� R� S� S� S� S� S � � [� [� [� [� [� \� \� \� \� \� \ ^ ^ ^ ^ ^ _ _ _ _ _ _ _ _ _ _& a& a& a& a" a _@ c@ cR cR c] c] c@ c@ c@ c� \� Xt gt gt gt gx gx gz gz gs gs g� }� }� }� }� }� }� }� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �s g� �� �� �� �  �  � � �� �� � � � � � � � � � � � � � �" �" �" �" �" �" �8 �8 �G �G �G �G �C �C �_ �_ �_ �_ �_ �_ �k �k �_ �_ �q �q �q �q �M �M �" �| �| �| �| �| �| �� �� �� �� �� �� �| �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �) �) � � � �� �5 �5 �5 �5 �9 �9 �< �< �4 �4 �4 �4 �M �M �^ �^ �M �M �M �M �4 �4 �x �x �x �� �� �� �� �� �� �� �x �� �� �� �� �� �� ��;�;�;�;�;�;�;������������ � �1�1� � � � ���K�K�K�K�b�b�l�l�����������������������������t�t�K���������������������������������������������&�&�&�&�*�*�-�-�%�%�%�%�>�>�O�O�>�>�>�>�%�%�i�i�i���������������i�%��� �4 �� � �W �  [ 	   q�SY*���V:*+,��� :�L�*+,��� :�9�*+,��� :�&�� �&:�:		�m:

�θw�   �           ?
�{*�q�<�I*��6+����:*������Y6�5*,���*��5����:*����������Y��Y�SY�SY�SY�S�������Y6� �*,�-M,Զ�,*���**� A�������,���,*���**� A��Y�S��������,ֶ��ɚ��� � :� �:*,��M���� :� )� q� ��� � #:�֨ � :� �:�٩*,ض��������� :� &� w�� � #:��� � :� �:���*,ڶ�**�-��Y*���**�-��@�c�CS**�u��G� 	�� � :� �:���*�  {~�~�~�
�������
��������������� ������������ ��
���
���
��
�

�   L   - L 3 @ L F I L   Q   - Q 3 @ Q F I Q  ^�   -^� 3 @^� F I^� L�^���^��[^�^c^� �     q��    q��   q��   q��   q�   q��   q��   q��   q�   q� 	  q�� 
  q�   q� �   q��   q� �   q��   q��   q��   q��   q��   q��   q��   q��   q��   q��   q��   q�� �   � 0 > �� �� �� �� }� }� �� �� �� ��.�.�.�.�.�.�.�.�&�N�N�N�N�N�N�N�N�F� �� ��5�5�5�5�5�5�A�A�5�5�G�G�G�G�#�#�  < �W �    	  [**�K+K�7**��-/�7**�1K�7**�k39�7**������Y�ՙ <W* ��* ��*��Y�S�����6�˸_��M�t|���ՙ�*�a* ��*��Y�S�����������*� �K�I**�a���:66�� 6*��:� ��� N-�I-� d*� !* ��**� !����6�I* ��**� !��˸_��M�� )*� �**� ����**� !�������I`6��*� �* ��**� ����* ��**� ���ˇg�ϸӶI*��Y�S**� ���t*� �* ��**W��Y�S�����Y*��Y�S��S�϶I* ���**� Ŷ�˸_��M�� <**�-��Y* ��**�-��@�c�CS**�y��G*�q�<�I*�   �   \ 	  [��    [��   [��   [��   [��   [� �   [� �   [� �   [�  �  F �  �  �  �  �  �  �  �  �  �  �   �   �   �  �  �  �  �  �  �  �  �  �  �  �  �  � " � " � " � " � & � & � ) � ) � , � , � ! � ! � ! � 3 � 3 � 3 � 3 � 7 � 7 � 9 � 9 � < � < � 2 � 2 � 2 � C � C � C � C � G � G � I � I � B � B � B � B � h � h � h � h � h � h � h � h � � � � � h � h � h � h � B � B � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �, �, �, �, �: �: �H �H �H �H �S �S �S �S �H �H �H �H �a �a �H �H �H �H �D �D �, �u � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �x �x �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � �2 �2 �2 �2 �2 �2 �> �> �2 �2 �D �D �D �D �D �D �  �  �S �S �S �S �O �O � � B � jW �  �    W�SY*���V:*%��*W��YXS����*��YS�����\�_��M�� o*&��***� ���a��Y*��YKS��SY*��Y�S��SY*&��*cK�gSY*��YkS��S��W� l*(��***� ���a��Y*��YKS��SY*��Y�S��SY*��YS��SY*��YkS��S��W�+�1:�:�m:�i�w�    �           ?�{*�q}�I*��4+����:*,�����Y6	�?*,���*��3����:
*-��
�����
��Y��Y�SY�SY�SY�S����
�
��Y6� �*
,�-M,���,*/��**� A��Y�S��������,���,*0��**� A��Y�S��������,���
�ɚ��� � :� �:*,��M�
��� :� )� q� ��� � #:
�֨ � :� �:
�٩*,����������� :� &� w�� � #:��� � :� �:���*,���**�-��Y*4��**�-��@�c�CS**� ���G� �� � :� �:���*� �ad�did������������������������������������������������������� $' $, $D�'�D���D��AD�DID� �   �   W��    W��   W��   W��   W�   W�   W�   W��   W�   W� � 	  W�� 
  W� �   W	�   W
�   W��   W��   W��   W��   W��   W��   W��   W��   W��   W�� �  ~ _ % % % % (% (% (% (% % % B% B% T& T& e& e& y& y& �& �& �& �& �& �& �& �& S& S& S& S& �( �( �( �( �( �( �( �((( �( �( �( �( �' %]+]+]+]+Y+Y+�-�-�-�-
/
/
/
/
/
/
/
//4040404040404040,0�-c,444444'4'444-4-4-4-4-4-4	4	4  $ �W �      �*+,�� �*��7+����:*����������Y��Y�SYSY�SY S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩*�{8+���}:*���"����� �,$��*�� �+����:*�����Y6� '*,��� :� E�*,&���������� :� #�� � #:��� � :� �:���*�  j � �� � � �� _ � �� � � �� _ � �� � � �� � � �� � � ��'@n�Fbn�hkn�'@}�Fb}�hk}�nz}�}�}� �   �   ���    ���   ���   ���   ���   �� �   ���   ���   ���   ��� 	  ��� 
  ���   ��   ��   �� �   ���   ���   ���   ���   ��� �   * 
  � C� C� O� O� � �� �� ��
 dW �  � 
   S* ��*��Y7S���J���Y�՚ 2W* ��*��Y7S����� �C��M�|��Y�՚ @W* ��*��Y7S�����C*��Y7S����~���ՙ :*�q�**�-��Y* ���**�-��@�c�CS**� u��G* ���*��YOS���J���Y�՚ 2W* ���*��YOS����� �C��M�|��Y�՚ @W* ���*��YOS�����C*��YOS����~���ՙ :*�q�**�-��Y* ���**�-��@�c�CS**� e��G*+,�)� �*+,�U� �*��*������**����Y�_SW�G**����Y�_S*��**W��YS��Y�ɶ϶G**����Y�_S*��YOS���G**� ���Y**� ��S**�����G**� � ��X*��*������**����Y�_S[�G**����Y�_S*��**W��Y�S��]�ɶ϶G**����Y�_S**�_a����G**� ���Y**� ��S**�����G**� � ��X*��**�5��c*��Y**� ��SY**� ͶS��W*�   �   *   S��    S��   S��   S�� �  * �  �  �  �  �  �  �  �  �  �  � / � / � / � / � / � / � I � I � / � / � / � / �  �  �  �  � e � e � e � e � e � e �  �  � e � e � e � e �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � � � �< �< �< �< �< �< �V �V �< �< �< �< � � � � �w �w �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � ��������������1111!�PPEddddddd �xxwwwws�����������������������s��� �''99DD'''� � �W �  �    �**�1���Y�ՙ W**�1�q���~�����ՙ �**�su�� B*B��**W��Y�S��w��Y**�1�SY}S��W� 8*D��**W��Y�S��w��Y**�1�SY9S��W**�Q�*I��*I��*��YOS����� �{�C��~� n*J��**W��YS��}��Y*J��*J��*��YOS����� �{�CS��W*�Q*��YOS���I*N��**W��Y�S����Y*N��*�*N���*��Y7S������C�gS��W**��� 7*R��**W��Y�S�����Y��S��W� -*T��**W��Y�S�����Y��S��W**�/1�� 7*Y��**W��Y�S�����Y��S��W� -*[��**W��Y�S�����Y��S��W**�$&�� 7*a��**W��Y�S�����Y��S��W� -*c��**W��Y�S�����Y��S��W*�   �   *   ���    ���   ���   ��� �  � � ? ? ? ?  ?  ?  ?  ? ? ? ? ? ? ? ? ? ? ? ? ?  ?  ? 3@ 3@ 3@ 3@ 7@ 7@ :@ :@ 2@ 2@ eB eB pB pB JB JB JB �D �D �D �D �D �D �D 2@  ? �I �I �I �I �I �I �I �I �I �I �I �I �I �I �I �IJJJJJJJJ5J5JJJ �J �J �JEKEKEKEKAK �I�N�N�N�N�N�N�N�N�N�N�N�N`N`N`N�P�P�P�P�P�P�P�P�P�P�R�R�R�R�RTT�T�T�T�PWWWWWW"W"WWWMYMY2Y2Y2Yz[z[_[_[_[W�_�_�_�_�_�_�_�_�_�_�a�a�a�a�a�c�c�c�c�c�_ 'W �   
   `**� I���Y�ՙ W**�1�����ՙ :*�q�**�-��Y*��**�-��@�c�CS**� e��G*� ��I*� �*��*������*� ��*��*������**����Y�_S�G**����Y�_S*��**W��Y�S���ɶ϶G**����Y�_S*��Y7S���G**� ���Y**� ��S**�����G**� � ��X*��*������**����Y�_S�G**����Y�_S*��**W��Y�S���ɶ϶G**����Y�_S**�����G**� ���Y**� ��S**�����G**� � ��X*��*������**����Y�_S �G**����Y�_S*��**W��Y�S��"�ɶ϶G**����Y�_S**�$&����G*�   �   *   `��    `��   `��   `�� �  v �  �  �  �  �   �   �   �   �  �  �  �  �  �  �  �  �  �  �  �  �   �   � &  @ @ @ @ @ @ L L @ @ R R R R .   � a a a a ] s s r r r r g } � � � � � � � � � � � � � � � � � � � � � � �####### �7766662QQQQAnnnnW�������������2���������� �������������KKKKOORRJJJJ:� mW �  " 	   �*��*��*��YKS�����6�˸_��M��~*��*��YKS�����6K���� F*�q�<�I*� ٲ<�I**�-��Y*��**�-��@�c�CS**���G*��*��Y�S���J�� I*�q�<�I*� ٲ<�I**�-��Y*��**�-��@�c�CS**���G� �*��Y�S����M�|��Y�՚ $W*��Y�S��N��M�t|���ՙ F*�q�<�I*� ٲ<�I**�-��Y*!��**�-��@�c�CS**� 1��G**�q����� *+,�l� �*�   �   *   ���    ���   ���   ��� �  . �         + + < < < < < < S S b b b b ^ ^ l l l l h h � � � � � � � � � � � � � � r r < � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �++;;++++UUUUQQ_ _ _ _ [ [ w!w!w!w!w!w!�!�!w!w!�!�!�!�!e!e! ��#�#�#�#�#�#�#  SW �  r 
   �**� ���Y**� ��S**�����G**� � ��X*��*������**����Y�_S+�G**����Y�_S*	��**W��Y�S��-�ɶ϶G**����Y�_S**�/1����G**� ���Y**� ��S**�����G**� � ��X*��*������**����Y�_S3�G**����Y�_S*
��**W��Y�S��5�ɶ϶G**����Y�_S**��7����G**� ���Y**� ��S**�����G**� � ��X*��**W�:<�ɶ�>���~��Y�՚ <W*@�D��Y�ՙ *W*F��YHSYJS��L���~����ՙ �*��*������**����Y�_SN�G**����Y�_S*��**W��Y�S��P�ɶ϶G**����Y�_S**�R����G**� ���Y**� ��S**�����G**� � ��X*�   �   *   ���    ���   ���   ��� �  � �            � 3	 3	 2	 2	 2	 2	 .	 M	 M	 M	 M	 =	 j	 j	 j	 j	 S	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 .	 �	 �	 �	 �	 �	 �	 �	 �	 �	 � � �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �




 
G
G
G
G
K
K
M
M
F
F
F
F
6
 �
d
d
Y
x
x
x
x
x
x
x ��������������������������������������////____ccff^^^^N�}}r������� W �  S    *�M*ڶ�***� ������Y�S�϶I*� �*۶�***� ������Y�S�϶I**� Ѷ��M�� *� �K�I*� �*޶�**W��Y�S����ɶ϶I*�=*߶�**W��Y�S����ɶ϶I*� i*��**W��Y�S����ɶ϶I*� *��**W��Y�S����ɶ϶I*�m*��**W��Y�S����ɶ϶I**�m�K���� *�m�ݶI*� �*��**W��Y�S�� �ɶ϶I*� E*��**W��Y�S���ɶ϶I*�!*��**W��Y�S���ɶ϶I*� �*��**W��Y�S���ɶ϶I**� ɶK���� *� ɲݶI*�e*���**W��Y�S���ɶ϶I*� U*��**W��Y�S��
�ɶ϶I*� �*��**W��Y�S���ɶ϶I*�E*��**W��Y�S���ɶ϶I**�E�K���� *�E�ݶI*� m*���**W��Y�S���ɶ϶I*�   �   *   ��    ��   ��   �� �   � � � � � � � � �  � 3� 3� D� D� 2� 2� 2� 2� '� N� N� V� V� d� d� d� d� `� N� u� u� u� u� j� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������<�<�D�D�S�S�S�S�O�<�d�d�d�d�Y���������������������������������	�	�������)�)�)�)��S�S�S�S�H�}�}�}�}�r����������������������������������������� W �  <    *�9*W��Y�SY7S���I*� 5*ж�**W��Y�S���ɶ϶I*�)*Ѷ�**W��Y�S��-�ɶ϶I*� �*Ҷ�**W��Y�S��"�ɶ϶I*� �*Ӷ�**W��Y�S��5�ɶ϶I*�*Զ�**W��Y�S��]�ɶ϶I*ն�**W�:<�ɶ�>���~��Y�՚ <W*@�D��Y�ՙ *W*F��YHSYJS��L���~����ՙ -*�*׶�**W��Y�S��P�ɶ϶I**�#����Y�ՙ W**��������ՙ a*+,�� �*�	*��I*���**�	��˸_��M�� *�	*W��YXS���I� *�	K�I*�   �   *   ��    ��   ��   �� �  � x � � � �  � )� )� )� )� � S� S� S� S� H� }� }� }� }� r� �� �� �� �� �� �� �� �� �� �� �� �� �� ��	�	� �� �� �� ��������0�0�G�G�0�0�0�0����� �� ��g�g�g�g�\� �������������������������������������������������������������������������������������������������������� �W �  �  ,  ,���*��I+����:*a���������Y��Y�SY�S�������Y6� 6*,�-M,¶��ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,Ķ�*��J+����:*g���������Y��Y�SY�S�������Y6� 6*,�-M,ȶ��ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,ʶ�*��K+����:*m���������Y��Y�SY�S�������Y6� 6*,�-M,ζ��ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,ж�,*p��**� �����Ӷ�,ն�*��L+����:*s���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,ٶ��ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,۶�,**� ն����,ݶ�*��M+����:$*{��$�����$��Y��Y�SY�S����$�$��Y6%� 6*$%,�-M,��$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��� �  �� ,�&),�� ;�&);�,8;�;@;�������������+�+�(+�+0+�������������������������
� �  � ,  ��    ��   ��   ��   ��   � �   ��   ��   ��   �� 	  �� 
  ��   ��   � �   ��   ��   ��   ��   ��   ��   ��   � �   ��   ��   ��   ��   ��   ��   ��   � �   ��   ��   ��    �� !  �� "  �� #  �� $  � � %  �� &  �� '  �� (  �� )  �� *  �� +�   ~  >a >a agg �g�m�m�m[p[p[p[p[p[p[p[pSp�s�s�s�sssDtDtDtDtCt�{�{Y{ W �    ,  R,��*��N+����:*����������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩,��,*���**�=����Ӷ�,��*��O+����:*����������Y��Y�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,���,*���**� i����Ӷ�,���*��P+����:*����������Y��Y�SY�S�������Y6� 6*,�-M,����ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩,���,*���**� ����Ӷ�,���*��Q+����:*����������Y��Y�SY S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#,��**�m��ՙ 
,��,��*��R+����:$*���$�����$��Y��Y�SY
S����$�$��Y6%� 6*$%,�-M,��$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��=Y\�\a\�2|������2|��������������!=@�@E@�`l�fil�`{�fi{�lx{�{�{�!$�$)$��DP�JMP��D_�JM_�P\_�_d_���	��$0�*-0��$?�*-?�0<?�?D?� �  � ,  R��    R��   R��   R��   R��   R� �   R��   R��   R��   R�� 	  R�� 
  R��   R��   R� �   R��   R��   R��   R��   R��   R��   R��   R� �   R��   R��   R��   R��   R��   R��   R��   R� �   R��   R��   R��    R�� !  R�� "  R�� #  R�� $  R� � %  R�� &  R�� '  R�� (  R�� )  R�� *  R�� +�   � - >� >� � �� �� �� �� �� �� �� �� ��"�"� ������������������������������������������������w�w�w������� VW �  *     �**�Y/13�7**� �9�<**�A9�<*� �*#��*>@�D�I**� �K�<**�=M�<**� iM�<**� O�<**�m9�<**�kQ9�7**��S9�7**�CU9�7**� �M�<**� EM�<**�!O�<**� �9�<**�eM�<**� UM�<**� �O�<*�   �   *    ���     ���    ���    ��� �  � �                                         !  !               ! " ! "       2 # 2 # 5 # 5 # 1 # 1 # 1 # 1 # ' # ' # ?  ?  ?  ?  C $ C $ >  >  >  J  J  J  J  N % N % I  I  I  U  U  U  U  Y & Y & T  T  T  `  `  `  `  d ' d ' _  _  _  k  k  k  k  o ( o ( j  j  j  v  v  v  v  z  z  }  }  � ) � ) u  u  u  �  �  �  �  �  �  �  �  � * � * �  �  �  �  �  �  �  �  �  �  �  � + � + �  �  �  �  �  �  �  � - � - �  �  �  �  �  �  �  � . � . �  �  �  �  �  �  �  � / � / �  �  �  �  �  �  �  � 0 � 0 �  �  �  �  �  �  �  � 2 � 2 �  �  �  �  �  �  �  � 3 � 3 �  �  �  �  �  �  �  � 4 � 4 �  �  �  �W �  � 
   �**�E9�<**�c[M�7**�S]M�7**�_O�7*W��YaS�cYe�g*W��Y/S�����km�k�p�t*W��Y�S*=��*>v�D�t*�{+���}:*@������� �**�q9�<*�-*D��*������*� �*E��**� ����*�ɸ�����~���I*��+����:*H���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,ƶ��ɚ��� � :� �:*,��M���� :	� #	�� � #:

�֨ � :� �:�٩*��+����:*I���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,ݶ��ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*� n�������c�������c���������������6RU�UZU�+u��{~��+u��{~���������� �   �   ���    ���   ���   ���   ��   ���   �� �   ���   ���   ��� 	  ��� 
  ���   �	�   ���   �� �   ���   ���   ���   ���   ���   ��� �  � q          5  5                           7  7               !  !  #  #  & 8 & 8       -  -  -  -  1  1  3  3  6 9 6 9 ,  ,  ,  N < N < T < T < T < T < k < k < J < J < J < J < < < � = � = � = � = � = � = � = � = w = < ; � @ � @ � @ �  �  �  �  � C � C �  �  �  � D � D � D � D � D � D � D � D � E � E � E � E E E � E � E � E � E � E � EG HG HS HS H H I I I I� I OW �    	   �**�!#9�7**�%')�7**�K+)�7**��-/�7**�1K�7**�k39�7*n��*��YKS�����6K���� E*�q�<�I*� ٲ<�I**�-��Y*q��**�-��@�c�CS**���G*s��*��Y�S���J�� H*�q�<�I*� ٲ<�I**�-��Y*v��**�-��@�c�CS**���G� �*��Y�S����M�|��Y�՚ $W*��Y�S��N��M�t|���ՙ E*�q�<�I*� ٲ<�I**�-��Y*z��**�-��@�c�CS**� 1��G*�   �   *   ���    ���   ���   ��� �   �  g  g  g  g  g  g  g  g  h  h   g   g   g  g  g  g  g  g  g  g  g  i  i  g  g  g # g # g # g # g ' g ' g * g * g - j - j " g " g " g 4 g 4 g 4 g 4 g 8 g 8 g : g : g = k = k 3 g 3 g 3 g D g D g D g D g H g H g K g K g N l N l C g C g C g U g U g U g U g Y g Y g [ g [ g ^ m ^ m T g T g T g j n j n j n j n j n j n � n � n � o � o � o � o � o � o � p � p � p � p � p � p � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q j n � s � s � s � s � s � s � s � s � t � t � t � t � t � t � u � u � u � u � u � u v v v v v v v v v v# v# v# v# v  v  v1 w1 wA wA w1 w1 w1 w1 wV wV wf wf wV wV wV wV w1 w1 w� x� x� x� x| x| x� y� y� y� y� y� y� z� z� z� z� z� z� z� z� z� z� z� z� z� z� z� z1 w � s �W �  		    �SY*���V:*�a* ���*��Y�S�����������*� �K�I**�a���:66�� 6*��:	� ��� N	-�I-� d*� !* ���**� !����6�I* ���**� !��˸_��M�� )*� �**� ����**� !�������I`6��*� �* ���**� ����* ���**� ���ˇg�ϸӶI*��Y�S**� ���t*� �* ���**W��Y�S�����Y*��Y�S��S�϶I* ���**� Ŷ�˸_��M�� I**�-��Y* ���**�-��@�c�CS**�y��G*�q�<�I*�A�ݶI� *�A�<�I�+�1:

�:�m:��w�    �           ?�{*�q}�I*��.+����:* ������Y6�?*,���*��-����:* ����������Y��Y�SY�SY�SY�S�������Y6� �*,�-M,��,* ���**� A��Y�S��������,���,* ���**� A��Y�S��������,����ɚ��� � :� �:*,��M���� :� )� q� ��� � #:�֨ � :� �:�٩*,����������� :� &� w�� � #:��� � :� �:���*,���**�-��Y* ���**�-��@�c�CS**�]��G� �� � :� �:���*� �%(�(-(��NZ�TWZ��Ni�TWi�Zfi�ini�CN��T�������CN��T��������������� �� �� ���N�T����� �  $   ��    ��   ��   ��   �   ��   � �   � �   � �   �  	  � 
  �   ��   �   � �   ��   � �   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   �� �  � �  �  �  �  � + � + �  �  �  �  �  �  � ; � ; � ; � ; � 7 � 7 � A � A � A � A � � � � � � � � � � � � � � � � � ~ � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � A � � � � � � � � �
 �
 �
 �
 �
 �
 � � �
 �
 �
 �
 � � � � � � � � � � � � �. �. �. �. �! �! �_ �_ �D �D �D �D �9 �9 �} �} �} �} �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �} �! �! �! �! � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �V �' �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �   � �W �  b  ,  �*��+����:*J���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:		�֨ � :
� 
�:�٩*��+����:*K���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*��+����:*L���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� :� #�� � #:�֨ � :� �:�٩*��+����:*M���������Y��Y�SY�SY�SY�S�������Y6� 6*,�-M,���ɚ��� � :� �:*,��M���� : � # �� � #:!!�֨ � :"� "�:#�٩#*��+����:$*N��$�����$��Y��Y�SY�SY�SY�S����$�$��Y6%� 6*$%,�-M,���$�ɚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�֨ � :*� *�:+$�٩+*� ( ] y |� | � |� R � �� � � �� R � �� � � �� � � �� � � ��%AD�DID�dp�jmp�d�jm�p|����	���,8�258��,G�25G�8DG�GLG����������� ��� ������� ��}�������r�������r��������������� �  � ,  ���    ���   ���   ���   ���   �� �   ���   ���   ���   ��� 	  ��� 
  ���   ���   �� �   ���   ���   ���   ���   ���   ���   ���   �� �   ���   ���   ���   ���   ���   ���   ���   �� �   ���   ���   ���    ��� !  ��� "  ��� #  ��� $  �� � %  ��� &  ��� '  ��� (  ��� )  ��� *  ��� +�   f  6 J 6 J B J B J   J � K � K
 K
 K � K� L� L� L� L� L� M� M� M� MX MV NV Nb Nb N  N �  �   �     �ٸ߳�!�߳#y�߳{��߳���YqS�s��߳���YqS����YqS�i��Y�S��)�߳+��YqS����Y��Y�SY��SY�SY��S�����   �       ���   �W �  �    _�SY*���V:*��*W��YXS����*��YS�����\�_��M�� o* ���***� ���a��Y*��YKS��SY*��Y�S��SY* ���*cK�gSY*��YkS��S��W� l* ���***� ���a��Y*��YKS��SY*��Y�S��SY*��YS��SY*��YkS��S��W*� �<�I�*�0:�:�m:�s�w�   �           ?�{*�q}�I*��++����:* ������Y6	�?*,���*��*����:
* ���
�����
��Y��Y�SY�SY�SY�S����
�
��Y6� �*
,�-M,���,* ���**� A��Y�S��������,���,* ���**� A��Y�S��������,���
�ɚ��� � :� �:*,��M�
��� :� )� q� ��� � #:
�֨ � :� �:
�٩*,����������� :� &� w�� � #:��� � :� �:���*,���**�-��Y* ���**�-��@�c�CS**� ���G� �� � :� �:���*� �il�lql��������������������������������������������������������� -0 -5 -L�0�L���L��IL�LQL� �   �   _��    _��   _��   _��   _�   _�   _�   _��   _�   _� � 	  _�� 
  _� �   _	�   _
�   _��   _��   _��   _��   _��   _��   _��   _��   _��   _�� �  � e         '  '  '  '      A  A  S � S � d � d � x � x � � � � � � � � � � � � � � � � � R � R � R � R � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  $ �$ �$ �$ �  �  �e �e �e �e �a �a �� �� �� �� � � � � � � � � �
 �< �< �< �< �< �< �< �< �4 �� �k �# �# �# �# �# �# �/ �/ �# �# �5 �5 �5 �5 �5 �5 � � �   ~      �   �