����  -c 
SourceFile /CFIDE/adminapi/office.cfc cfoffice2ecfc364563112  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FACTORY   	   com.macromedia.SourceModTime  d7۱ pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - Cp1252 / setPageEncoding (Ljava/lang/String;)V 1 2 !coldfusion/runtime/NeoPageContext 4
 5 3 LOCALE 7 REQUEST.LOCALE 9 _setCurrentLineNo (I)V ; <
  = java ? java.util.Locale A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E 
getDefault I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
  O getLanguage Q checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V S T
  U 	VARIABLES W java/lang/String Y  coldfusion.server.ServiceFactory [ _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V ] ^
  _ DOCUMENTSERVICE a _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c d
  e getDocumentService g 
LOCALEFILE i java/lang/StringBuilder k resources/adminapi_ m  2
 l o _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; q r
  s _String &(Ljava/lang/Object;)Ljava/lang/String; u v coldfusion/runtime/Cast x
 y w append -(Ljava/lang/String;)Ljava/lang/StringBuilder; { |
 l } .cfm  toString ()Ljava/lang/String; � �
 L � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � local_config_error_add � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � %Unable to configure local OpenOffice. � write � 2 java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � remote_config_error_add � &Unable to configure remote OpenOffice. � invalid_location_error � 7Specified directory is not a valid Office installation. � setLocalConfig Lcoldfusion/runtime/UDFMethod; )cfoffice2ecfc364563112$funcSETLOCALCONFIG �
 � 	 � �	  � SETLOCALCONFIG � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V � �
  � getRemoteConfigHost .cfoffice2ecfc364563112$funcGETREMOTECONFIGHOST �
 � 	 � �	  � GETREMOTECONFIGHOST � setRemoteConfig *cfoffice2ecfc364563112$funcSETREMOTECONFIG �
 � 	 � �	  � SETREMOTECONFIG � getLocalConfig )cfoffice2ecfc364563112$funcGETLOCALCONFIG
 	 �	  GETLOCALCONFIG getRemoteConfigPort .cfoffice2ecfc364563112$funcGETREMOTECONFIGPORT

 		 �	  GETREMOTECONFIGPORT metaData Ljava/lang/Object;	  _implicitMethods Ljava/util/Map;	  displayname office extends base hint! Manages open office settings.# Name% 	Functions'	 �	 �	 �		 
Properties. getMetadata ()Ljava/lang/Object; this Lcfoffice2ecfc364563112; LocalVariableTable Code _setImplicitMethods implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; 
getExtends registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 LineNumberTable java/lang/Throwable^ _getImplicitMethods ()Ljava/util/Map; <clinit> 1     
            � �    � �    � �    � �    �   	 �      
   	 01 5   "     ��   4       23   6 � 5   -     +��   4       23     7     5   Q     *+,� **+,� � **+,� � �   4        23     89    :;  < � 5   "      �   4       23   =  5   O     1*� � �*�� �� �* � �� �*�� �*�� �   4       123   >1 5  `    P*� $� *L*� .N*� $0� 6**� 8:*� >**� >**� >*@B� HJ� L� PR� L� P� V*X� ZYS*� >*@\� H� `*X� ZYbS*� >***� � fh� L� P� `*X� ZYjS� lYn� p*� ZY8S� t� z� ~�� ~� �� `*� �-� �� �:*� >���� �� �Y� LY�SY�SY�SY�SY�SY*X� ZYjS� tS� �� �� �� �Y6� 5*+� �L+ö �� ˚��� � :� �:*+� �L�� �� :� #�� � #:		� ب � :
� 
�:� ۩*� �-� �� �:* � >���� �� �Y� LY�SY�SY�SY�SY�SY*X� ZYjS� tS� �� �� �� �Y6� 5*+� �L+߶ �� ˚��� � :� �:*+� �L�� �� :� #�� � #:� ب � :� �:� ۩*� �-� �� �:*!� >���� �� �Y� LY�SY�SY�SY�SY�SY*X� ZYjS� tS� �� �� �� �Y6� 5*+� �L+� �� ˚��� � :� �:*+� �L�� �� :� #�� � #:� ب � :� �:� ۩� 6QT_TYT_+t�_z}�_+t�_z}�_���_���_(+_+0+_KW_QTW_Kf_QTf_Wcf_fkf_��__�"._(+._�"=_(+=_.:=_=B=_ 4     P23    P?@   PA   P + ,   PBC   PDE   PFG   PH   PI   PJG 	  PKG 
  PL   PMC   PNE   POG   PP   PQ   PRG   PSG   PT   PUC   PVE   PWG   PX   PY   PZG   P[G   P\ ]   G   4  4  6  6  3  3  ,  ,  %  %  %  %  c  c  e  e  b  b  b  b  P  �  �          m  �  �  �  �  �  �  �  �  �  �  �  �  �  P  �  �        � �  �  �  �  �  �  �  �  �  � !� !� !� !� !� !� !� !w !      5   #     *� 
�   4       23   `a 5   "     ��   4       23   b  5   	    ��� �� �� �Y� � � �Y� �� �� �Y� �� ��Y���Y��� �Y� LYSYSYSY SY"SY$SY&SYSY(SY	� LY�)SY�*SY�+SY�,SY�-SSY
/SY� LS� ���   4       �23  ]   * 
 � m � m � / � / � ] � ] � ' � ' � u � u           ����  -h 
SourceFile /CFIDE/adminapi/office.cfc )cfoffice2ecfc364563112$funcSETLOCALCONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - OFFICEDIRPATH / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 
	     ; _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V = >
   ? _setCurrentLineNo (I)V A B
   C 	component E CFIDE.adminapi.accessmanager G CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; I J coldfusion/runtime/CFPage L
 M K set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q 
		 U _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
   Y checkAdminRoles [ java/lang/Object ] coldfusion.serversettings _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
   c *coldfusion/runtime/TransientVariableHolder e &(Lcoldfusion/runtime/NeoPageContext;)V  g
 f h OS j SERVER l java/lang/String n NAME p _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; r s
   t _set '(Ljava/lang/String;Ljava/lang/Object;)V v w
   x &(Ljava/lang/String;)Ljava/lang/Object; W z
   { equalsIgnoreCase }    _boolean (Ljava/lang/Object;)Z � � coldfusion/runtime/Cast �
 � � toLowerCase � 
startsWith � mac � contains � Contents � 	substring � _Object (I)Ljava/lang/Object; � �
 � � lastIndexOf � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � OOPATH � _autoscalarize � z
   � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � /Contents/MacOS � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 o � program � /program � /soffice.bin � 
FileExists (Ljava/lang/String;)Z � �
 M � 	VARIABLES � DOCUMENTSERVICE � _resolve � s
   � setOfficeLocation � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
   � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � INVALID_LOCATION_ERROR � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
   � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
   � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � e bind w
 f LOCAL_CONFIG_ERROR_ADD unbind 
 f	 
  setLocalConfig metaData Ljava/lang/Object;	  void false &coldfusion/runtime/AttributeCollection name access public output 
returntype! hint# "Sets the local configuration path.% 
Parameters' REQUIRED) true+ HINT- <Specifies a fully qualified path to the office installation./ officeDirPath1 ([Ljava/lang/Object;)V 3
4 getMetadata ()Ljava/lang/Object; this +Lcfoffice2ecfc364563112$funcSETLOCALCONFIG; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; throw4 !Lcoldfusion/tagext/lang/ThrowTag; t14 t15 #Lcoldfusion/runtime/AbortException; t16 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; throw5 t19 t20 t21 LineNumberTable !coldfusion/runtime/AbortException` java/lang/Exceptionb java/lang/Throwabled <clinit> 	getOutput 1       � �    � �      	 67 ;   "     ��   :       89   <= ;   "     �   :       89   >? ;         �   :       89   @= ;   "     �   :       89   AB ;   (     
� oY0S�   :       
89   CD ;      e+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::-<� @
-1� D-FH� N� T-V� @-2� D--
� Z\� ^Y`S� dW-V� @� fY-� $� i:-k-m� oYkSYqS� u� y-7� D--0� |~� ^Y�S� d� ����-9� D--9� D--k� |�� ^� d�� ^Y�S� d� �� �-;� D--0� |�� ^Y�S� d� �� K-=� D--0� |�� ^Y� �SY-=� D--0� |�� ^Y�S� d� �g� �S� d� T-�-0� �� ��� �� y� �-B� D--0� |�� ^Y�S� d� �� K-D� D--0� |�� ^Y� �SY-D� D--0� |�� ^Y�S� d� �g� �S� d� T-�-0� �� ��� �� y-I� D--�� �� ��� �� �� /-K� D--�� oY�S� ��� ^Y-�� �S� dW� M-� �� �� �:-N� Dն ���-� �� �ո � �� �� � :� ��� ,-T� D--�� oY�S� ��� ^Y-0� �S� dW� �� �:�:� �:� �� �      l           �-� �� �� �:-X� Dն ���-� �� �ո � �� �� � :� �� �� � :� �:�
�-� @� 	 ���a���a ���c���c ��Ie��Ie�7Ie=FIeINIe :   �   e89    eEF   eG   eHI   eJK   eLM   eN   e + ,   e O   e O 	  e O 
  e /O   ePQ   eRS   eT   eUV   eWX   eYZ   e[S   e\   e]Z   e^ _  j �   / D 1 M 1 M 1 O 1 O 1 L 1 L 1 L 1 L 1 D 1 D 1 f 2 f 2 t 2 t 2 e 2 e 2 e 2 e 2 � 6 � 6 � 6 � 6 � 6 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 9 � 9 � 9 � 9 � 9 � 9 � 9 � 9 ; ; ; ; ; ;( =( =6 =6 =D =D =R =R =C =C =C =C =[ =[ =C =C =' =' =' =' = = ;j ?j ?j ?j ?s ?s ?j ?j ?j ?j ?g ?� B� B� B� B� B� B� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� B� F� F� F� F� F� F� F� F� F� F� F � 9 I I I I I I I I I I I I4 K4 K K K Kd Nd NB N I� T� T� T� T� T � 7 X X� X � 4 � 3    ;   #     *� 
�   :       89   f  ;   �     �Ÿ ˳ �� oY�S� ��Y� ^YSYSYSYSY SYSY"SYSY$SY	&SY
(SY� ^Y�Y� ^Y*SY,SY.SY0SYqSY2S�5SS�5��   :       �89   g= ;   "     �   :       89        ����  - � 
SourceFile /CFIDE/adminapi/office.cfc .cfoffice2ecfc364563112$funcGETREMOTECONFIGPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
	  / _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 1 2
   3 _setCurrentLineNo (I)V 5 6
   7 	component 9 CFIDE.adminapi.accessmanager ; CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; = > coldfusion/runtime/CFPage @
 A ? set (Ljava/lang/Object;)V C D coldfusion/runtime/Variable F
 G E _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; I J
   K checkAdminRoles M java/lang/Object O :coldfusion.serversettings,coldfusion.serversettingssummary Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
   U 	VARIABLES W java/lang/String Y DOCUMENTSERVICE [ _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; ] ^
   _ getOpenOfficeRemotePort a 
  c getRemoteConfigPort e metaData Ljava/lang/Object; g h	  i any k false m &coldfusion/runtime/AttributeCollection o name q access s public u output w 
returntype y hint { "Retunrs remote configuration port. } 
Parameters  ([Ljava/lang/Object;)V  �
 p � getMetadata ()Ljava/lang/Object; this 0Lcfoffice2ecfc364563112$funcGETREMOTECONFIGPORT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       g h   	  � �  �   "     � j�    �        � �    � �  �   !     f�    �        � �    � �  �         �    �        � �    � �  �   !     l�    �        � �    � �  �   #     � Z�    �        � �    � �  �  �     �+� � :+� ,� :	+� :
-� $� *:-� .:-0� 4
-v� 8-:<� B� H-0� 4-w� 8--
� LN� PYRS� VW-0� 4-y� 8--X� ZY\S� `b� P� V�-d� 4�    �   p    � � �     � � �    � � h    � � �    � � �    � � �    � � h    � + ,    �  �    �  � 	   �  � 
 �   j    u 4 v = v = v ? v ? v < v < v < v < v 4 v 4 v V w V w d w d w U w U w U w U w y y y y y y y y y y y x     �   #     *� 
�    �        � �    �   �   r     T� pY� PYrSYfSYtSYvSYxSYnSYzSYlSY|SY	~SY
�SY� PS� �� j�    �       T � �    � �  �   !     n�    �        � �        ����  -/ 
SourceFile /CFIDE/adminapi/office.cfc *cfoffice2ecfc364563112$funcSETREMOTECONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
REMOTEHOST / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 
REMOTEPORT ; 
   = _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V ? @
   A _setCurrentLineNo (I)V C D
   E 	component G CFIDE.adminapi.accessmanager I CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; K L coldfusion/runtime/CFPage N
 O M set (Ljava/lang/Object;)V Q R coldfusion/runtime/Variable T
 U S _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
   Y checkAdminRoles [ java/lang/Object ] coldfusion.serversettings _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
   c 
  		 e *coldfusion/runtime/TransientVariableHolder g &(Lcoldfusion/runtime/NeoPageContext;)V  i
 h j 	VARIABLES l java/lang/String n DOCUMENTSERVICE p _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; r s
   t setOpenOfficeRemoteConfig v _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; x y
   z unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; | } coldfusion/runtime/NeoException 
 � ~ t0 [Ljava/lang/String; any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � e � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 h � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
   � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � REMOTE_CONFIG_ERROR_ADD � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
   � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
   � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
   � unbind � 
 h � 		
  � setRemoteConfig � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � ,Sets the remote configuration host and port. � 
Parameters � REQUIRED � true � HINT � .Specifies remote host for office installation. � NAME � 
remoteHost � ([Ljava/lang/Object;)V  �
 � � .Specifies remote port for office installation. � 
remotePort � getMetadata ()Ljava/lang/Object; this ,Lcfoffice2ecfc364563112$funcSETREMOTECONFIG; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t13 ,Lcoldfusion/runtime/TransientVariableHolder; t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; throw6 !Lcoldfusion/tagext/lang/ThrowTag; t18 t19 t20 LineNumberTable !coldfusion/runtime/AbortException' java/lang/Exception) java/lang/Throwable+ <clinit> 	getOutput 1       � �    � �    � �   	  �     "     � հ                 !     Ѱ                       �             	    !     װ             
    -     � oY0SY<S�                ,    �+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::*<� 6� ::->� B
-`� F-HJ� P� V->� B-a� F--
� Z\� ^Y`S� dW-f� B� hY-� $� k:-e� F--m� oYqS� uw� ^Y-� oY0S� {SY-� oY<S� {S� dW� �� �:�:� �:� �� ��      j           �� �-� �� �� �:-h� F�� ���-�� �� ��� �� �� �� ʙ :� �� �� � :� �:� ͩ-϶ B�  � � �( � � �* � �s, �as,gps,sxs,    �   �    �   � �   �   �   �   � �   � + ,   �    �  	  �  
  � /   � ;   �   �   �   �    �!"   �# �   �$    �% � &   �     ] T ` ] ` ] ` _ ` _ ` \ ` \ ` \ ` \ ` T ` T ` v a v a � a � a u a u a u a u a � e � e � e � e � e � e � e? h? h h � c � b       #     *� 
�             -     �     �� oY�S� ��� �� �� �Y� ^Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� ^Y� �Y� ^Y�SY�SY�SY�SY�SY�S� �SY� �Y� ^Y�SY�SY�SY�SY�SY�S� �SS� �� ձ          �   .    !     ٰ                  ����  - � 
SourceFile /CFIDE/adminapi/office.cfc )cfoffice2ecfc364563112$funcGETLOCALCONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
 	 / _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 1 2
   3 _setCurrentLineNo (I)V 5 6
   7 	component 9 CFIDE.adminapi.accessmanager ; CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; = > coldfusion/runtime/CFPage @
 A ? set (Ljava/lang/Object;)V C D coldfusion/runtime/Variable F
 G E 
	 I _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; K L
   M checkAdminRoles O java/lang/Object Q :coldfusion.serversettings,coldfusion.serversettingssummary S _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; U V
   W 	VARIABLES Y java/lang/String [ DOCUMENTSERVICE ] _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; _ `
   a getOfficeLocation c 
  e getLocalConfig g metaData Ljava/lang/Object; i j	  k any m false o &coldfusion/runtime/AttributeCollection q name s access u public w output y 
returntype { hint } (Retunrs local open office configuration.  
Parameters � ([Ljava/lang/Object;)V  �
 r � getMetadata ()Ljava/lang/Object; this +Lcfoffice2ecfc364563112$funcGETLOCALCONFIG; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       i j   	  � �  �   "     � l�    �        � �    � �  �   !     h�    �        � �    � �  �         �    �        � �    � �  �   !     n�    �        � �    � �  �   #     � \�    �        � �    � �  �  �     �+� � :+� ,� :	+� :
-� $� *:-� .:-0� 4
-(� 8-:<� B� H-J� 4-)� 8--
� NP� RYTS� XW-J� 4-+� 8--Z� \Y^S� bd� R� X�-f� 4�    �   p    � � �     � � �    � � j    � � �    � � �    � � �    � � j    � + ,    �  �    �  � 	   �  � 
 �   j    ' 4 ( = ( = ( ? ( ? ( < ( < ( < ( < ( 4 ( 4 ( V ) V ) d ) d ) U ) U ) U ) U ) y + y + y + y + y + y *     �   #     *� 
�    �        � �    �   �   r     T� rY� RYtSYhSYvSYxSYzSYpSY|SYnSY~SY	�SY
�SY� RS� �� l�    �       T � �    � �  �   !     p�    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/office.cfc .cfoffice2ecfc364563112$funcGETREMOTECONFIGHOST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
	 / _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 1 2
   3 _setCurrentLineNo (I)V 5 6
   7 	component 9 CFIDE.adminapi.accessmanager ; CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; = > coldfusion/runtime/CFPage @
 A ? set (Ljava/lang/Object;)V C D coldfusion/runtime/Variable F
 G E _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; I J
   K checkAdminRoles M java/lang/Object O :coldfusion.serversettings,coldfusion.serversettingssummary Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
   U  
	  W 	VARIABLES Y java/lang/String [ DOCUMENTSERVICE ] _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; _ `
   a getOpenOfficeRemoteHost c 
  e getRemoteConfigHost g metaData Ljava/lang/Object; i j	  k any m false o &coldfusion/runtime/AttributeCollection q name s access u public w output y 
returntype { hint } "Retunrs remote configuration host.  
Parameters � ([Ljava/lang/Object;)V  �
 r � getMetadata ()Ljava/lang/Object; this 0Lcfoffice2ecfc364563112$funcGETREMOTECONFIGHOST; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       i j   	  � �  �   "     � l�    �        � �    � �  �   !     h�    �        � �    � �  �         �    �        � �    � �  �   !     n�    �        � �    � �  �   #     � \�    �        � �    � �  �  �     �+� � :+� ,� :	+� :
-� $� *:-� .:-0� 4
-n� 8-:<� B� H-0� 4-o� 8--
� LN� PYRS� VW-X� 4-q� 8--Z� \Y^S� bd� P� V�-f� 4�    �   p    � � �     � � �    � � j    � � �    � � �    � � �    � � j    � + ,    �  �    �  � 	   �  � 
 �   j    m 4 n = n = n ? n ? n < n < n < n < n 4 n 4 n V o V o d o d o U o U o U o U o y q y q y q y q y q y p     �   #     *� 
�    �        � �    �   �   r     T� rY� PYtSYhSYvSYxSYzSYpSY|SYnSY~SY	�SY
�SY� PS� �� l�    �       T � �    � �  �   !     p�    �        � �        