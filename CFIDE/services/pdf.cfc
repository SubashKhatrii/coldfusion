����  - 
SourceFile /CFIDE/services/pdf.cfc #cfpdf2ecfc913323842$funcDELETEPAGES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / SERVICEUSERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C SERVICEPASSWORD E SOURCE G PAGES I PASSWORD K 
		 M _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V O P
 " Q _setCurrentLineNo (I)V S T
 " U 	ISALLOWED W _get &(Ljava/lang/String;)Ljava/lang/Object; Y Z
 " [ 	isAllowed ] java/lang/Object _ _autoscalarize a Z
 " b pdf d 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; f g
 " h ISALLOWEDIP j isAllowedIP l READFILEFROMURL n readFileFromURL p set (Ljava/lang/Object;)V r s coldfusion/runtime/Variable u
 v t 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a x
 " y java/lang/String { ACTION } deletepages  _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 " � ALLOWEXTRAATTRIBUTES � true � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � pages � getMetadata ()Ljava/lang/Object; this %Lcfpdf2ecfc913323842$funcDELETEPAGES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf1 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ذ    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     4�    �        � �    �   �   <     � |Y2SYFSYHSYJSYLS�    �        � �     �  ^ 	   
+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:*H4� :� @� D:*J4� :� @� D:*L4� :� @� D:-N� R-C� V-X� \^-� `Y-2� cSY-F� cSYeS� iW-D� V-k� \m-� `Y-2� cSYeS� iW-E� V-o� \q-� `Y-H� cS� i� w
-� z� w-
� |Y~S�� �-
� |YHS-� z� �-
� |Y�S�� �-L� V-�� ��� �Y� �� W-L� c�� ��~�� �� �� -M� V--
� z� ��� �W-�� R-� �� �� �:-O� V�-
� z� �� �� ̙ �-ζ R-P� V-ж \�-� `Y-� zS� i�-Զ R�    �   �   
 � �    
   
 �   
   
	   

   
 �   
 - .   
    
  	  
  
  
    
 1   
 E   
 G   
 I   
 K   
   � a   < � C � C � C � C � C � C � C � C � C � C � C � D � D � D � D � D � D � D � D � D � E � E � E E E � E � E � E � E � E G G G G G G) H) H) H) H H: I: I: I: I. IO JO JO JO JC J[ L[ LZ LZ LZ LZ LZ LZ LZ LZ Lm Lm Ls Ls Lm Lm Lm Lm LZ LZ L� M� M� M� M� M� M� M� M� MZ L � B� O� O� O� O� O� P� P� P� P� P� P� P� P� P     �   #     *� 
�    �        � �      �       ��� �� �� �Y� `Y�SY�SY�SY�SY�SY4SY�SY� `Y� �Y� `Y�SY4SY�SY�S� �SY� �Y� `Y�SY4SY�SY�S� �SY� �Y� `Y�SY4SY�SY�S� �SY� �Y� `Y�SY4SY�SY�S� �SY� �Y� `Y�SY4SY�SY�S� �SS� �� ر    �       � � �        ����  -f 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842$funcGETINFO  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  PDFINFO ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K 
		 M _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V O P
 $ Q _setCurrentLineNo (I)V S T
 $ U 	ISALLOWED W _get &(Ljava/lang/String;)Ljava/lang/Object; Y Z
 $ [ 	isAllowed ] java/lang/Object _ _autoscalarize a Z
 $ b pdf d 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; f g
 $ h ISALLOWEDIP j isAllowedIP l READFILEFROMURL n readFileFromURL p set (Ljava/lang/Object;)V r s coldfusion/runtime/Variable u
 v t 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a x
 $ y java/lang/String { ACTION } getinfo  _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � NAME � info � ALLOWEXTRAATTRIBUTES � true � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ �  
        	 � 	component � CFIDE.services.pdfinfo � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 � � APPLICATION � INFO � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
 $ � AUTHOR � CENTERWINDOWONSCREEN � CHANGINGDOCUMENT � 
COMMENTING � CONTENTEXTRACTION � COPYCONTENT � CREATED � DOCUMENTASSEMBLY � 
ENCRYPTION � FILEPATH � FILLINGFORM � FITTOWINDOW � HIDEMENUBAR � HIDETOOLBAR � HIDEWINDOWUI � KEYWORDS LANGUAGE MODIFIED 
PAGELAYOUT PRINTING	 PRODUCER 
PROPERTIES SECURE SHOWDOCUMENTSOPTION SHOWWINDOWSOPTION SIGNING SUBJECT TITLE 
TOTALPAGES TRAPPED VERSION 	PAGESIZES! (CONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY# (convertArrayOfStructToPDFPageDetailArray% PAGEROTATIONS' 
        
               	) 			
	+ metaData Ljava/lang/Object;-.	 / &coldfusion/runtime/AttributeCollection1 name3 access5 remote7 
returntype9 
Parameters; TYPE= serviceusername? ([Ljava/lang/Object;)V A
2B servicepasswordD sourceF getMetadata ()Ljava/lang/Object; this !Lcfpdf2ecfc913323842$funcGETINFO; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf2 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �   -.    HI M   "     �0�   L       JK   NO M   !     ��   L       JK   PQ M         �   L       JK   RO M   !     ְ   L       JK   ST M   7     � |Y4SYHSYJSYLS�   L       JK   UV M  u    E+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:-N� R-X� V-X� \^-� `Y-4� cSY-H� cSYeS� iW-Y� V-k� \m-� `Y-4� cSYeS� iW-Z� V-o� \q-� `Y-J� cS� i� w
-� z� w-
� |Y~S�� �-
� |YJS-� z� �-
� |Y�S�� �-
� |Y�S�� �-b� V-�� ��� �Y� �� W-L� c�� ��~�� �� �� -c� V--
� z� ��� �W-�� R-� �� �� �:-e� V�-
� z� �� �� Й �-Ҷ R-g� V-�ֶ ڶ w-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y�S-�� |Y�S� � �-� |Y S-�� |Y S� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |Y
S-�� |Y
S� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |YS-�� |YS� � �-� |Y S-�� |Y S� � �-� |Y"S- �� V-$� \&-� `Y-�� |Y"S� �SY-�� |Y(S� �S� i� �-*� R-� z�-,� R�   L   �   EJK    EWX   EY.   EZ[   E\]   E^_   E`.   E / 0   E a   E a 	  E a 
  E a   E !a   E 3a   E Ga   E Ia   E Ka   Ebc d  b   R � X � X � X � X � X � X � X � X � X � X � X � Y � Y � Y � Y � Y � Y � Y � Y � Y � Z � Z � Z � Z � Z � Z � Z � Z � Z � Z \	 \	 \	 \	 \ \ ] ] ] ] ]/ ^/ ^/ ^/ ^# ^D _D _D _D _8 _U `U `U `U `I `a ba b` b` b` b` b` b` b` b` bs bs by by bs bs bs bs b` b` b� c� c� c� c� c� c� c� c� c` b � W� e� e� e� e� e� g� g� g� g� g� g� g� g� g� g h h h h� h# i# i# i# i iA jA jA jA j5 j_ k_ k_ k_ kS k} l} l} l} lq l� m� m� m� m� m� n� n� n� n� n� o� o� o� o� o� p� p� p� p� p q q q q q1 r1 r1 r1 r% rO sO sO sO sC sm tm tm tm ta t� u� u� u� u u� v� v� v� v� v� w� w� w� w� w� x� x� x� x� x y y y y� y( z( z( z( z zH {H {H {H {; {h |h |h |h |[ |� }� }� }� }{ }� ~� ~� ~� ~� ~� � � � � � �� �� �� �� � � � � �� �( �( �( �( � �H �H �H �H �; �h �h �h �h �[ �� �� �� �� �{ �� �� �� �� �� �� �� �� �� �� �� �� �  �  � � �� �� �� �� �� �� f3 �3 �3 �3 �3 �    M   #     *� 
�   L       JK   e  M   �     ��� �� ��2Y� `Y4SY�SY6SY8SY:SY�SY<SY� `Y�2Y� `Y>SY6SY�SY@S�CSY�2Y� `Y>SY6SY�SYES�CSY�2Y� `Y>SY6SY�SYGS�CSY�2Y� `Y>SY6SY�SY�S�CSS�C�0�   L       �JK        ����  - 
SourceFile /CFIDE/services/pdf.cfc $cfpdf2ecfc913323842$funcEXTRACTPAGES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K PAGES M KEEPBOOKMARK O         
		 Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V S T
 $ U _setCurrentLineNo (I)V W X
 $ Y 	ISALLOWED [ _get &(Ljava/lang/String;)Ljava/lang/Object; ] ^
 $ _ 	isAllowed a java/lang/Object c _autoscalarize e ^
 $ f pdf h 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; j k
 $ l ISALLOWEDIP n isAllowedIP p READFILEFROMURL r readFileFromURL t set (Ljava/lang/Object;)V v w coldfusion/runtime/Variable y
 z x GETTEMPFILEPATH | getTempFilePath ~ 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e �
 $ � java/lang/String � ACTION � merge � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � ALLOWEXTRAATTRIBUTES � true � keepbookmark � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � password � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � extractPages � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � pages � getMetadata ()Ljava/lang/Object; this &Lcfpdf2ecfc913323842$funcEXTRACTPAGES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf4 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �         "     � �                 !     �             	          �             
    !     6�                 B     $� �Y4SYHSYJSYLSYNSYPS�          $      � 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:-R� V- ɶ Z-\� `b-� dY-4� gSY-H� gSYiS� mW- ʶ Z-o� `q-� dY-4� gSYiS� mW- ˶ Z-s� `u-� dY-J� gS� m� {- ̶ Z-}� `-� dY-� �S� m� {
-� �� {-
� �Y�S�� �-
� �YJS-� �� �-
� �Y"S-� �� �-
� �Y�S�� �- Զ Z-�� ��� �Y� �� W-P� g�� ��~�� �� �� - ն Z--
� �� ��� �W- ֶ Z-�� ��� �Y� �� W-L� g�� ��~�� �� �� - ׶ Z--
� �� ��� �W-�� V-� �� �� �:- ٶ Z�-
� �� �� �� ֙ �-ض V- ڶ Z-ڶ `�-� dY-� �S� m�-޶ V�      �   �    �   � �   �   �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   � O   �   : �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �# �# � � � � � �0 �9 �9 �H �H �9 �9 �9 �9 �0 �U �W �W �W �W �U �l �l �l �l �` �} �} �} �} �q �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � �� �� �3 �3 �3 �3 �< �< �2 �2 �2 �� � � �d �d �d �d �J �� �� �� �� �� �� �� �� �� �       #     *� 
�                 /    �� �� �� �Y� dY�SY�SY�SY�SY�SY6SY�SY� dY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SS� �� �                 ����  -@ 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842$funcSIGN  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   KEYSTOREPATH  
SOURCEPATH ! DESTINATION # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I SOURCE K PASSWORD M SIGNATUREFIELDNAME O KEYSTORE Q KEYSTOREPASSWORD S KEYALIAS U KEYPASSWORD W PAGES Y POSITION [ HEIGHT ] WIDTH _ AUTHOR a 
		
		 c _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V e f
 & g _setCurrentLineNo (I)V i j
 & k 	ISALLOWED m _get &(Ljava/lang/String;)Ljava/lang/Object; o p
 & q 	isAllowed s java/lang/Object u _autoscalarize w p
 & x pdf z 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; | }
 & ~ ISALLOWEDIP � isAllowedIP � READFILEFROMURL � readFileFromURL � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � GETTEMPFILEPATH � getTempFilePath � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; w �
 & � java/lang/String � ACTION � sign � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � signaturefieldname � coordinates � COORDINATES � 	unsignall � pages � author � keyalias � keypassword � 		
		
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name access remote 
returntype 
Parameters	 TYPE NAME serviceusername ([Ljava/lang/Object;)V 
  servicepassword source keystore keystorepassword position height width  getMetadata ()Ljava/lang/Object; this Lcfpdf2ecfc913323842$funcSIGN; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf15 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �    "# '   "     � ��   &       $%   () '   !     ��   &       $%   *+ '         �   &       $%   ,) '   !     8�   &       $%   -. '   r     T� �Y6SYJSYLSYNSYPSYRSYTSYVSYXSY	ZSY
\SY^SY`SYbS�   &       T$%   /0 '  
� 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*L8� >� D� H:*N8� >� D� H:*P8� >� D� H:*R8� >� D� H:*T8� >� D� H:*V8� >� D� H:*X8� >� D� H:*Z8	� >� D� H:*\8
� >� D� H:*^8� >� D� H:*`8� >� D� H:*b8� >� D� H:-d� h-� l-n� rt-� vY-6� ySY-J� ySY{S� W-� l-�� r�-� vY-6� ySY{S� W-� l-�� r�-� vY-L� yS� � �-� l-�� r�-� vY-R� yS� � �-� l-�� r�-� vY-� �S� � �
-� �� �-
� �Y�S�� �-
� �YLS-� �� �-
� �YRS-� �� �-
� �Y$S-� �� �-&� l-�� ��� �Y� �� W-N� y�� ��~�� �� �� -'� l--
� �� ��� �W-(� l-�� ��� �Y� �� W-P� y�� ��~�� �� �� -)� l--
� �� ��� �W-*� l-¶ ��� �Y� �� W-Ķ y�� ��~�� �� �� -+� l--
� �� �ƶ �W-,� l-ȶ ��� �Y� �� W-Z� y�� ��~�� �� �� --� l--
� �� �ȶ �W-.� l-ʶ ��� �Y� �� W-b� y�� ��~�� �� �� -/� l--
� �� �ʶ �W-1� l-̶ ��� �Y� �� W-V� y�� ��~�� �� �� -2� l--
� �� �̶ �W-3� l-ζ ��� �Y� �� W-X� y�� ��~�� �� �� -4� l--
� �� �ζ �W-ж h-� �� �� �:-7� l�-
� �� �� �� � �-�� h-8� l-�� r�-� vY-� �S� �-�� h�   &  $   �$%    �12   �3 �   �45   �67   �89   �: �   � 1 2   � ;   � ; 	  � ; 
  � ;   � !;   � #;   � 5;   � I;   � K;   � M;   � O;   � Q;   � S;   � U;   � W;   � Y;   � [;   � ];   � _;   � a;   �<= >  �.  eett}}��eee�������������������������������" $ $ $ $ " 9!9!9!9!-!J"J"J"J">"_#_#_#_#S#t$t$t$t$h$�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�'�'�'�'�'�'�'�'�'�&�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�()))))))))�(**********-*-*3*3*-*-*-*-***O+O+O+O+X+X+N+N+N+*f,f,e,e,e,e,e,e,e,e,x,x,~,~,x,x,x,x,e,e,�-�-�-�-�-�-�-�-�-e,�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�/�/�/�/�/�/�/�/�/�.�1�1�1�1�1�1�1�1�1�111111111�1�1020202029292/2/2/2�1G3G3F3F3F3F3F3F3F3F3Y3Y3_3_3Y3Y3Y3Y3F3F3{4{4{4{4�4�4z4z4z4F3e�7�7�7�7�7�8�8�8�8�8�8�8�8�8    '   #     *� 
�   &       $%   ?  '  p    RԸ ڳ ܻ Y� vYSY�SYSYSYSY8SY
SY� vY� Y� vYSY8SYSYS�SY� Y� vYSY8SYSYS�SY� Y� vYSY8SYSYS�SY� Y� vYSY8SYSY�S�SY� Y� vYSY8SYSY�S�SY� Y� vYSY8SYSYS�SY� Y� vYSY8SYSYS�SY� Y� vYSY8SYSY�S�SY� Y� vYSY8SYSY�S�SY	� Y� vYSY8SYSY�S�SY
� Y� vYSY8SYSYS�SY� Y� vYSY8SYSYS�SY� Y� vYSY8SYSY!S�SY� Y� vYSY8SYSY�S�SS�� ��   &      R$%        ����  -W 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842$funcSETINFO  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
INFOSTRUCT  
SOURCEPATH ! DESTINATION # KVPAIR % coldfusion/runtime/CfJspPage ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	 ( + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	 ( 5 SERVICEUSERNAME 7 string 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = 3coldfusion/tagext/validation/CFTypeValidatorFactory A STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; C D	 B E _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I SERVICEPASSWORD K SOURCE M INFO O CFIDE.services.element[] Q TYPED_ARRAY_VALIDATOR S D	 B T PASSWORD V         
		 X _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Z [
 ( \ _setCurrentLineNo (I)V ^ _
 ( ` 	ISALLOWED b _get &(Ljava/lang/String;)Ljava/lang/Object; d e
 ( f 	isAllowed h java/lang/Object j _autoscalarize l e
 ( m pdf o 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; q r
 ( s ISALLOWEDIP u isAllowedIP w READFILEFROMURL y readFileFromURL { set (Ljava/lang/Object;)V } ~ coldfusion/runtime/Variable �
 �  GETTEMPFILEPATH � getTempFilePath � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; l �
 ( � 	StructNew ()Ljava/util/Map; � � coldfusion/runtime/CFPage �
 � � 
	 �   � 

         � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � java/util/List � size ()I � � � � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 ( � get (I)Ljava/lang/Object; � � � � 
            � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � java/lang/String � KEY � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 ( � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � VALUE � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 � � 
		 � 			
         � ACTION � setinfo � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 ( � ALLOWEXTRAATTRIBUTES � true � password � 	IsDefined (Ljava/lang/String;)Z � �
 � � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 ( � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 ( � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag
  	hasEndTag (Z)V
 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z	
 (
  
		 
GETHTTPURL 
getHttpUrl 			
	 metaData Ljava/lang/Object;	  &coldfusion/runtime/AttributeCollection name access remote 
returntype  
Parameters" TYPE$ NAME& serviceusername( ([Ljava/lang/Object;)V *
+ servicepassword- source/ info1 getMetadata ()Ljava/lang/Object; this !Lcfpdf2ecfc913323842$funcSETINFO; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t20 Ljava/util/List; t21 I t22 t23 t24 pdf17 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �       34 8   "     ��   7       56   9: 8   !     ɰ   7       56   ; � 8         �   7       56   <: 8   !     :�   7       56   => 8   <     � �Y8SYLSYNSYPSYWS�   7       56   ?@ 8  � 	   <+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :-� ,� 2:-� 6:*8:� @� F� J:*L:� @� F� J:*N:� @� F� J:*PR� @� U� J:*W:� @� F� J:-Y� ]-]� a-c� gi-� kY-8� nSY-L� nSYpS� tW-^� a-v� gx-� kY-8� nSYpS� tW-_� a-z� g|-� kY-N� nS� t� �-`� a-�� g�-� kY-� �S� t� �-a� a� �� �-�� ]�� �-�� ]-P� n� �:66� � 6-&+� �:� h� � :� �� I-�� ]-e� a--� �� �-� �Y�S� �� �-� �Y�S� �� �W-ö ]`6���-Ŷ ]
-� �� �-
� �Y�Sɶ �-
� �YNS-� �� �-
� �Y$S-� �� �-
� �YPS-� �� �-
� �Y�SѶ �-o� a-Ӷ ��� �Y� ߚ W-W� n�� ��~�� ۸ ߙ -p� a--
� �� �Ӷ �W-� ]-� �� �� �:-r� a�-
� ����� �-� ]-s� a-� g-� kY-� �S� t�-� ]�   7     <56    <AB   <C   <DE   <FG   <HI   <J   < 3 4   < K   < K 	  < K 
  < K   < !K   < #K   < %K   < 7K   < KK   < MK   < OK   < VK   <LM   <NO   <PO   <QO   <RK   <ST U  ^ �  V �] �] �] �] �] �] �] �] �] �] �] �^ �^ �^ �^^^ �^ �^ �^___ _ ______-`6`6`E`E`6`6`6`6`-`Ra[a[a[a[aRa �\ickckckckcicicxdxdxdxd�e�e�e�e�e�e�e�e�e�e�e�e�e�edxdhhhhhh)i)i)i)ii:j:j:j:j.jOkOkOkOkCkdldldldlXlymymymymmm�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�p�p�p�p�p�p�p�p�p�og�r�r�r�r�rss&s&ssssss    8   #     *� 
�   7       56   V  8      �� � ��Y� kYSY�SYSYSY!SY:SY#SY� kY�Y� kY%SY:SY'SY)S�,SY�Y� kY%SY:SY'SY.S�,SY�Y� kY%SY:SY'SY0S�,SY�Y� kY%SYRSY'SY2S�,SY�Y� kY%SY:SY'SY�S�,SS�,��   7      56        ����  - 
SourceFile /CFIDE/services/pdf.cfc )cfpdf2ecfc913323842$funcVALIDATESIGNATURE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / SERVICEUSERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C SERVICEPASSWORD E SOURCE G PASSWORD I         
		 K _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V M N
 " O _setCurrentLineNo (I)V Q R
 " S 	ISALLOWED U _get &(Ljava/lang/String;)Ljava/lang/Object; W X
 " Y 	isAllowed [ java/lang/Object ] _autoscalarize _ X
 " ` pdf b 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; d e
 " f ISALLOWEDIP h isAllowedIP j READFILEFROMURL l readFileFromURL n set (Ljava/lang/Object;)V p q coldfusion/runtime/Variable s
 t r 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ v
 " w java/lang/String y ACTION { validatesignature } _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V  �
 " � NAME � res � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 	
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " �  
		 � RES � 			
	 � metaData Ljava/lang/Object; � �	  � struct � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this +Lcfpdf2ecfc913323842$funcVALIDATESIGNATURE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf12 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ԰    �        � �    � �  �   !     ~�    �        � �    � �  �         �    �        � �    � �  �   !     ְ    �        � �    � �  �   7     � zY2SYFSYHSYJS�    �        � �    � �  �  & 	   �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:*H4� :� @� D:*J4� :� @� D:-L� P-Ƕ T-V� Z\-� ^Y-2� aSY-F� aSYcS� gW-ȶ T-i� Zk-� ^Y-2� aSYcS� gW-ɶ T-m� Zo-� ^Y-H� aS� g� u
-� x� u-
� zY|S~� �-
� zYHS-� x� �-
� zY�S�� �-ж T-�� ��� �Y� �� W-J� a�� ��~�� �� �� -Ѷ T--
� x� ��� �W-�� P-� �� �� �:-Ӷ T�-
� x� �� �� ʙ �-̶ P-ζ a�-ж P�    �   �   � � �    � � �   � � �   �    �   �   � �   � - .   �    �  	  �  
  �    � 1   � E   � G   � I   �	 
  ~ _  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������������*�*�*�*��?�?�?�?�3�L�L�K�K�K�K�K�K�K�K�^�^�d�d�^�^�^�^�K�K����������������K� ��������������������������     �   #     *� 
�    �        � �      �   �     ��� �� �� �Y� ^Y�SY~SY�SY�SY�SY�SY�SY� ^Y� �Y� ^Y�SY4SY�SY�S� �SY� �Y� ^Y�SY4SY�SY�S� �SY� �Y� ^Y�SY4SY�SY�S� �SY� �Y� ^Y�SY4SY�SY�S� �SS� � Ա    �       � � �        ����  -$ 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842$funcPROTECT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I NEWUSERPASSWORD K NEWOWNERPASSWORD M PERMISSIONS O ENCRYPT Q PASSWORD S         
		 U _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V W X
 $ Y _setCurrentLineNo (I)V [ \
 $ ] 	ISALLOWED _ _get &(Ljava/lang/String;)Ljava/lang/Object; a b
 $ c 	isAllowed e java/lang/Object g _autoscalarize i b
 $ j pdf l 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; n o
 $ p ISALLOWEDIP r isAllowedIP t READFILEFROMURL v readFileFromURL x set (Ljava/lang/Object;)V z { coldfusion/runtime/Variable }
 ~ | GETTEMPFILEPATH � getTempFilePath � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; i �
 $ � java/lang/String � ACTION � protect � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � ALLOWEXTRAATTRIBUTES � true � newUserPassword � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � newOwnerPassword � encrypt � password � 	
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword  source permissions getMetadata ()Ljava/lang/Object; this !Lcfpdf2ecfc913323842$funcPROTECT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf10 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �        "     � �   
       	       !     ��   
       	             �   
       	       !     6�   
       	       N     0� �Y4SYHSYJSYLSYNSYPSYRSYTS�   
       0	      � 	   o+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:*R6� <� B� F:*T6� <� B� F:-V� Z-�� ^-`� df-� hY-4� kSY-H� kSYmS� qW-�� ^-s� du-� hY-4� kSYmS� qW-�� ^-w� dy-� hY-J� kS� q� -�� ^-�� d�-� hY-� �S� q� 
-� �� -
� �Y�S�� �-
� �YJS-� �� �-
� �Y"S-� �� �-
� �Y�S�� �-�� ^-�� ��� �Y� �� W-L� k�� ��~�� �� �� -�� ^--
� �� ��� �W-�� ^-�� ��� �Y� �� W-N� k�� ��~�� �� �� -�� ^--
� �� ��� �W-�� ^-�� ��� �Y� �� W-R� k�� ��~�� �� �� -�� ^--
� �� ��� �W-�� ^-�� ��� �Y� �� W-T� k�� ��~�� �� �� -�� ^--
� �� ��� �W-�� Z-� �� �� �:-�� ^�-
� �� �� �� ޙ �-� Z-�� ^-� d�-� hY-� �S� q�-� Z�   
   �   o	    o   o �   o   o   o   o �   o / 0   o    o  	  o  
  o    o !   o 3   o G   o I   o K   o M   o O   o Q   o S   o ! "  * �  � �� �� �� �� �� ���� �� �� ����#�#�,�,����3�<�<�K�K�<�<�<�<�3�X�a�a�p�p�a�a�a�a�X�}�����}��������������������������������������������������������������������������������������������'�'�&�&�&�&�&�&�&�&�9�9�?�?�9�9�9�9�&�&�[�[�[�[�d�d�Z�Z�Z�&�r�r�q�q�q�q�q�q�q�q�����������������q�q�������������������q������������������������������������������������������������� ��"�"�"�"��K�K�Z�Z�K�K�K�K�K�       #     *� 
�   
       	   #    x    Z�� Ƴ Ȼ �Y� hY�SY�SY�SY�SY�SY6SY�SY� hY� �Y� hY�SY6SY�SY�S� �SY� �Y� hY�SY6SY�SYS� �SY� �Y� hY�SY6SY�SYS� �SY� �Y� hY�SY6SY�SY�S� �SY� �Y� hY�SY6SY�SY�S� �SY� �Y� hY�SY6SY�SYS� �SY� �Y� hY�SY6SY�SY�S� �SY� �Y� hY�SY6SY�SY�S� �SS� �� �   
      Z	        ����  -J 
SourceFile /CFIDE/services/pdf.cfc "cfpdf2ecfc913323842$funcMERGEFILES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SOURCEINDEX  DESTINATION ! SOURCEPATHS # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I SOURCE K KEEPBOOKMARK M #        
                     
		 O _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Q R
 & S _setCurrentLineNo (I)V U V
 & W 	ISALLOWED Y _get &(Ljava/lang/String;)Ljava/lang/Object; [ \
 & ] 	isAllowed _ java/lang/Object a _autoscalarize c \
 & d pdf f 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; h i
 & j ISALLOWEDIP l isAllowedIP n 
       		  p   r set (Ljava/lang/Object;)V t u coldfusion/runtime/Variable w
 x v 
		 z _String &(Ljava/lang/Object;)Ljava/lang/String; | } coldfusion/runtime/Cast 
 � ~ , � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 & � java/util/StringTokenizer � '(Ljava/lang/String;Ljava/lang/String;)V  �
 � � 	nextToken ()Ljava/lang/String; � �
 � � 
        		 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c �
 & � READFILEFROMURL � readFileFromURL � concat &(Ljava/lang/String;)Ljava/lang/String; � � java/lang/String �
 � � 
        	 � CFLOOP � checkRequestTimeout (Ljava/lang/String;)V � �
 & � hasMoreTokens ()Z � �
 � � GETTEMPFILEPATH � getTempFilePath � .pdf � ACTION � merge � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � ALLOWEXTRAATTRIBUTES � true � keepbookmark � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & �  
		 � 
GETHTTPURL  
getHttpUrl 			
	 
mergeFiles metaData Ljava/lang/Object;		 
 &coldfusion/runtime/AttributeCollection name access remote 
returntype 
Parameters TYPE NAME serviceusername ([Ljava/lang/Object;)V 
 servicepassword! source# getMetadata ()Ljava/lang/Object; this $Lcfpdf2ecfc913323842$funcMERGEFILES; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t18 Ljava/lang/String; t19 t20 I t21 t22 Ljava/util/StringTokenizer; pdf3 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �   	    %& *   "     ��   )       '(   + � *   "     �   )       '(   ,- *         �   )       '(   . � *   !     8�   )       '(   /0 *   7     � �Y6SYJSYLSYNS�   )       '(   12 *  = 
   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*L8� >� D� H:*N8� >� D� H:-P� T- �� X-Z� ^`-� bY-6� eSY-J� eSYgS� kW- �� X-m� ^o-� bY-6� eSYgS� kW-q� Ts� y-q� Ts� y-{� T-L� e� �:�:6- +� �:� �Y� �:� e� �:� y-�� T-� �� �- �� X-�� ^�-� bY-� �S� k� �� ��� �� y-�� T�� �`6� ����-{� T- �� X-�� ^�-� bY�S� k� y
-� �� y-
� �Y�S�� �-
� �YLS-� �� �-
� �Y"S-� �� �-
� �Y�S�� �- �� X-�� ��� �Y� ͚ W-N� es� ��~�� ɸ ͙ - �� X--
� �� ��� �W-۶ T-� �� �� �:- �� X�-
� �� �� �� �� �-�� T- �� X-� ^-� bY-� �S� k�-� T�   )   �   �'(    �34   �5	   �67   �89   �:;   �<	   � 1 2   � =   � = 	  � = 
  � =   � !=   � #=   � 5=   � I=   � K=   � M=   �>?   �@?   �AB   �C=   �DE   �FG H  N �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �V �V �V �V �f �f �u �u �f �f �f �f �V �V �V �V �� �� �V �V �V �V �T �T �� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � �# �# �# �# � �0 �0 �/ �/ �/ �/ �/ �/ �/ �/ �B �B �H �H �B �B �B �B �/ �/ �d �d �d �d �m �m �c �c �c �/ �� �� �� �� �� �{ �� �� �� �� �� �� �� �� �� �    *   #     *� 
�   )       '(   I  *   �     �߸ � �Y� bYSYSYSYSYSY8SYSY� bY�Y� bYSY8SYSYS� SY�Y� bYSY8SYSY"S� SY�Y� bYSY8SYSY$S� SY�Y� bYSY8SYSY�S� SS� ��   )       �'(        ����  -� 
SourceFile /CFIDE/services/pdf.cfc *cfpdf2ecfc913323842$funcMERGESPECIFICPAGES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ITEM  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PDFPARAMATTRCOLL  DESTINATION ! I # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I PDFPARAM K CFIDE.services.pdfparam[] M TYPED_ARRAY_VALIDATOR O B	 @ P KEEPBOOKMARK R   
         T _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V V W
 & X _setCurrentLineNo (I)V Z [
 & \ 	ISALLOWED ^ _get &(Ljava/lang/String;)Ljava/lang/Object; ` a
 & b 	isAllowed d java/lang/Object f _autoscalarize h a
 & i pdf k 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; m n
 & o ISALLOWEDIP q isAllowedIP s 

         u ArrayNew (I)Ljava/util/List; w x coldfusion/runtime/CFPage z
 { y set (Ljava/lang/Object;)V } ~ coldfusion/runtime/Variable �
 �  } [
 � �   � 	
        � pdfparam � 	IsDefined (Ljava/lang/String;)Z � �
 { �         
             � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � java/util/List � size ()I � � � � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 & � get (I)Ljava/lang/Object; � � � � 
                 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h �
 & � 	StructNew ()Ljava/util/Map; � �
 { � _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � 
item.pages � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � java/lang/String � PAGES � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 & � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � pages � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 { � item.password � PASSWORD � password � item.source � SOURCE � source � READFILEFROMURL � readFileFromURL � 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; h �
 & � _double (Ljava/lang/Object;)D � �
 � �             
             � 
		 � GETTEMPFILEPATH � getTempFilePath � .pdf � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;
 & coldfusion/tagext/lang/PDFTag merge	 	setAction (Ljava/lang/String;)V
 cfpdf destination _String &(Ljava/lang/Object;)Ljava/lang/String;
 � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 & setDestination
 	hasEndTag (Z)V coldfusion/tagext/GenericTag!
"  
doStartTag$ �
% 
            ' 
               	) StructIsEmpty (Ljava/util/Map;)Z+,
 {- 
	                / (class$coldfusion$tagext$lang$PDFParamTag "coldfusion.tagext.lang.PDFParamTag21 �	 4 "coldfusion/tagext/lang/PDFParamTag6 attributecollection8 _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V:;
"< _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z>?
 &@ doAfterBodyB �
"C doEndTagE �
F doCatch (Ljava/lang/Throwable;)VHI
"J 	doFinallyL 
"M 
GETHTTPURLO 
getHttpUrlQ 
	S mergespecificpagesU metaData Ljava/lang/Object;WX	 Y &coldfusion/runtime/AttributeCollection[ name] access_ remotea 
returntypec 
Parameterse TYPEg NAMEi serviceusernamek ([Ljava/lang/Object;)V m
\n servicepasswordp keepbookmarkr getMetadata ()Ljava/lang/Object; this ,Lcfpdf2ecfc913323842$funcMERGESPECIFICPAGES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t18 Ljava/util/List; t19 t20 t21 t22 pdf8 Lcoldfusion/tagext/lang/PDFTag; mode8 t25 t26 t27 t28 t29 	pdfparam7 $Lcoldfusion/tagext/lang/PDFParamTag; t31 t32 t33 Ljava/lang/Throwable; t34 t35 LineNumberTable java/lang/Throwable� <clinit> 1       � �   1 �   WX    tu y   "     �Z�   x       vw   z{ y   "     V�   x       vw   | � y         �   x       vw   }{ y   !     8�   x       vw   ~ y   7     � �Y6SYJSYLSYSS�   x       vw   �� y  	�  $  �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*LN� >� Q� H:*S8� >� D� H:-U� Y-A� ]-_� ce-� gY-6� jSY-J� jSYlS� pW-B� ]-r� ct-� gY-6� jSYlS� pW-v� Y-D� ]-� |� �-U� Y� �-v� Y
�� �-�� Y-G� ]-�� ���-�� Y-L� j� �:66� � 6-+� �:��� � :� ���-�� Y-� gY-� �S-I� ]� �� �-�� Y-K� ]-�� �� �Y� �� W-
� �Y�S� ��� ��~� �� �� /-L� ]---� �� ˸ ��-
� �Y�S� ö �W-M� ]-׶ �� �Y� �� W-
� �Y�S� ��� ��~� �� �� /-N� ]---� �� ˸ ��-
� �Y�S� ö �W-O� ]-ݶ �� �Y� �� W-
� �Y�S� ��� ��~� �� �� I-Q� ]---� �� ˸ ��-Q� ]-� c�-� gY-
� �Y�S� �S� p� �W- � � �X-� Y`6��R-v� Y-� Y-W� ]-� c�-� gY�S� p� �-v� Y-���:-X� ]
�-� �����#�&Y6� �-(� Y-� �� �:66� � 6-+� �:� �� � :� �� {-*� Y-Z� ]--
� �� ϶.�� P-0� Y-�5��7:-[� ]9-
� ��=�#�A� :� d�-�� Y-(� Y`6��e-v� Y�D��&�G� : � # �� � #:!!�K� � :"� "�:#�N�#-�� Y-_� ]-P� cR-� gY-� �S� p�-T� Y� �B��H��������B��H��������������� x  j $  �vw    ���   ��X   ���   ���   ���   ��X   � 1 2   � �   � � 	  � � 
  � �   � !�   � #�   � 5�   � I�   � K�   � R�   ���   �� #   �� #   �� #   ���   ���   �� #   ���   �� #   �� #   �� #   ���   ���   ��X   ��X    ��� !  ��� "  ��X #�  N �  ; �A �A �A �A �A �A �A �A �A �A �A �B �B �B �B �B �B �B �B �B �@ �D �D �D �D �D �D �D �D �DEEEFFFFFFF3G3G2G2GCHCHCHCH�I�I�I�I�I�I�I�I�K�K�K�K�K�K�K�K�K�K�K�K�K�K�K�K�L�L�L�L�L�L�L�L L L�L�L�L�KMMMMMM+M+M:M:M+M+M+M+MMMWNWNTNTNTNTNcNcNeNeNSNSNSNM�O�OOOOO�O�O�O�O�O�O�O�OOO�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�QO�S�S�S�S�S�S�S�JHCH2G*W3W3WBWBW3W3W3W3W*W*WkXkXyXyXyXyX�Y�Y�Y�Y�Z�Z�Z�Z�Z�Z�Z�Z�Z�Z'['['['[[�ZdY�YSX�_�_�_�_�_�_�_�_�_    y   #     *� 
�   x       vw   �  y       ��� �3� �5�\Y� gY^SYVSY`SYbSYdSY8SYfSY� gY�\Y� gYhSY8SYjSYlS�oSY�\Y� gYhSY8SYjSYqS�oSY�\Y� gYhSYNSYjSY�S�oSY�\Y� gYhSY8SYjSYsS�oSS�o�Z�   x       �vw        ����  - 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842$funcARCHIVE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K         
		 M _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V O P
 $ Q _setCurrentLineNo (I)V S T
 $ U 	ISALLOWED W _get &(Ljava/lang/String;)Ljava/lang/Object; Y Z
 $ [ 	isAllowed ] java/lang/Object _ _autoscalarize a Z
 $ b pdf d 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; f g
 $ h ISALLOWEDIP j isAllowedIP l READFILEFROMURL n readFileFromURL p set (Ljava/lang/Object;)V r s coldfusion/runtime/Variable u
 v t GETTEMPFILEPATH x getTempFilePath z 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a |
 $ } java/lang/String  ACTION � archive � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 	
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this !Lcfpdf2ecfc913323842$funcARCHIVE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf11 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ذ    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     6�    �        � �    � �  �   7     � �Y4SYHSYJSYLS�    �        � �    �   �  � 	   /+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:-N� R-�� V-X� \^-� `Y-4� cSY-H� cSYeS� iW-�� V-k� \m-� `Y-4� cSYeS� iW-�� V-o� \q-� `Y-J� cS� i� w-�� V-y� \{-� `Y-� ~S� i� w
-� ~� w-
� �Y�S�� �-
� �YJS-� ~� �-
� �Y"S-� ~� �-�� V-�� ��� �Y� �� W-L� c�� ��~�� �� �� -�� V--
� ~� ��� �W-�� R-� �� �� �:-�� V�-
� ~� �� �� ̙ �-ζ R-�� V-ж \�-� `Y-� ~S� i�-Զ R�    �   �   / � �    /   / �   /   /   /	   /
 �   / / 0   /    /  	  /  
  /    / !   / 3   / G   / I   / K   /   � k  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
���"�"�����
�/�1�1�1�1�/�F�F�F�F�:�W�W�W�W�K�l�l�l�l�`�}�}�|�|�|�|�|�|�|�|�����������������|�|�������������������|� ���������������������     �   #     *� 
�    �        � �      �   �     ��� �� �� �Y� `Y�SY�SY�SY�SY�SY6SY�SY� `Y� �Y� `Y�SY6SY�SY�S� �SY� �Y� `Y�SY6SY�SY�S� �SY� �Y� `Y�SY6SY�SY�S� �SY� �Y� `Y�SY6SY�SY�S� �SS� �� ر    �       � � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc 'cfpdf2ecfc913323842$funcREMOVEWATERMARK  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PAGES K PASSWORD M         
		 O _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Q R
 $ S _setCurrentLineNo (I)V U V
 $ W 	ISALLOWED Y _get &(Ljava/lang/String;)Ljava/lang/Object; [ \
 $ ] 	isAllowed _ java/lang/Object a _autoscalarize c \
 $ d pdf f 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; h i
 $ j ISALLOWEDIP l isAllowedIP n READFILEFROMURL p readFileFromURL r set (Ljava/lang/Object;)V t u coldfusion/runtime/Variable w
 x v GETTEMPFILEPATH z getTempFilePath | 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c ~
 $  java/lang/String � ACTION � removewatermark � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � ALLOWEXTRAATTRIBUTES � true � pages � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � password � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this )Lcfpdf2ecfc913323842$funcREMOVEWATERMARK; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf16 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � �    �        � �      �   !     ��    �        � �     �         �    �        � �     �   !     6�    �        � �     �   <     � �Y4SYHSYJSYLSYNS�    �        � �     �  � 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:-P� T-B� X-Z� ^`-� bY-4� eSY-H� eSYgS� kW-C� X-m� ^o-� bY-4� eSYgS� kW-D� X-q� ^s-� bY-J� eS� k� y-E� X-{� ^}-� bY-� �S� k� y
-� �� y-
� �Y�S�� �-
� �YJS-� �� �-
� �Y"S-� �� �-
� �Y�S�� �-M� X-�� ��� �Y� �� W-L� e�� ��~�� �� �� -N� X--
� �� ��� �W-O� X-�� ��� �Y� �� W-N� e�� ��~�� �� �� -P� X--
� �� ��� �W-�� T-� �� �� �:-R� X�-
� �� �� �� ԙ �-ֶ T-S� X-ض ^�-� bY-� �S� k�-ܶ T�    �   �   � � �    �	
   � �   �   �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   �   : �  ; �B �B �B �B �B �B �B �B �B �B �B �C �C �C �C �C �C �C �C �C �DDDDDDDDD �DE&E&E5E5E&E&E&E&EEBGDGDGDGDGBGYHYHYHYHMHjIjIjIjI^IJJJJsJ�K�K�K�K�K�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�N�N�N�N�N�N�N�N�N�M�O�O�O�O�O�O�O�O�O�O�O�OOO�O�O�O�O�O�O P P P P)P)PPPP�O �AQRQRQRQR7RzSzS�S�SzSzSzSzSzS     �   #     *� 
�    �        � �      �       ��� �� �� �Y� bY�SY�SY�SY�SY�SY6SY�SY� bY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SS� �� �    �       � � �        ����  -� 
SourceFile /CFIDE/services/pdf.cfc $cfpdf2ecfc913323842$funcEXTRACTIMAGE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   HTTPURLFORDIRECTORY  ARRAY ! 
SOURCEPATH # DESTINATION % I ' 	FILESLIST ) FILENAME + MAP - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = SERVICEUSERNAME ? string A getVariable  (I)Lcoldfusion/runtime/Variable; C D %coldfusion/runtime/ArgumentCollection F
 G E 3coldfusion/tagext/validation/CFTypeValidatorFactory I STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; K L	 J M _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; O P
  Q SERVICEPASSWORD S SOURCE U FORMAT W IMAGEPREFIX Y PASSWORD [ PAGES ]         
	
		 _ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V a b
 0 c   e set (Ljava/lang/Object;)V g h coldfusion/runtime/Variable j
 k i _setCurrentLineNo (I)V m n
 0 o 	ISALLOWED q _get &(Ljava/lang/String;)Ljava/lang/Object; s t
 0 u 	isAllowed w java/lang/Object y _autoscalarize { t
 0 | pdf ~ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � ISALLOWEDIP � isAllowedIP � READFILEFROMURL � readFileFromURL � GETTEMPFILEPATH � getTempFilePath � imageextract � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; { �
 0 � java/lang/String � ACTION � extractimage � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 0 � ALLOWEXTRAATTRIBUTES � true � format � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � imageprefix � pages � password �          

		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � doAfterBody � �
 � � doEndTag � �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � �  
		 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � name � DirectoryList 9(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object; 
 � 

		 ArrayNew (I)Ljava/util/List;
 � 
		
 g n
 k 
GETHTTPURL 
getHttpUrl _List $(Ljava/lang/Object;)Ljava/util/List;
 � java/util/List size � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;
 0 get (I)Ljava/lang/Object; ! 
			# 	component% CFIDE.services.element' CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;)*
 �+ KEY- VALUE/ /1 concat &(Ljava/lang/String;)Ljava/lang/String;34
 �5 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; {7
 08 _double (Ljava/lang/Object;)D:;
 �< (D)Ljava/lang/Object; �>
 �? _arraySetAtA �
 0B 
	
		D           
	F extractImageH metaData Ljava/lang/Object;JK	 L CFIDE.services.element[]N &coldfusion/runtime/AttributeCollectionP accessR remoteT 
returntypeV 
ParametersX TYPEZ NAME\ serviceusername^ ([Ljava/lang/Object;)V `
Qa servicepasswordc sourcee getMetadata ()Ljava/lang/Object; this &Lcfpdf2ecfc913323842$funcEXTRACTIMAGE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf6 Lcoldfusion/tagext/lang/PDFTag; mode6 t28 t29 Ljava/lang/Throwable; t30 t31 t32 Ljava/util/List; t33 t34 t35 t36 LineNumberTable java/lang/Throwable� <clinit> 1       � �   JK    gh l   "     �M�   k       ij   mn l   "     I�   k       ij   o � l         �   k       ij   pn l   "     O�   k       ij   qr l   H     *� �Y@SYTSYVSYXSYZSY\SY^S�   k       *ij   st l  � 	 %  ?+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@B� H� N� R:*TB� H� N� R:*VB� H� N� R:*XB� H� N� R:*ZB� H� N� R:*\B� H� N� R:*^B� H� N� R:-`� df� l-� p-r� vx-� zY-@� }SY-T� }SYS� �W-� p-�� v�-� zY-@� }SYS� �W-� p-�� v�-� zY-V� }S� �� l-� p-�� v�-� zY�S� �� l
-� �� l-
� �Y�S�� �-
� �YVS-� �� �-
� �Y&S-� �� �-
� �Y�S�� �-� p-�� ��� �Y� �� W-X� }f� ��~�� �� �� - � p--
� �� ��� �W-!� p-¶ ��� �Y� �� W-Z� }f� ��~�� �� �� -"� p--
� �� �¶ �W-#� p-Ķ ��� �Y� �� W-^� }f� ��~�� �� �� -$� p--
� �� �Ķ �W-%� p-ƶ ��� �Y� �� W-\� }f� ��~�� �� �� -&� p--
� �� �ƶ �W-ȶ d-� �� �� �:-*� p�-
� �� �� �� �Y6� � ���� �� :� #�� � #:� �� � :� �:� ��-�� d-+� p--� �� ���� l-� d--� p-�	� l-� d�-� df� l-� d-0� p-� v-� zY-� �S� �� l-� d-� ��: 6!6" � 6#-,+�:$� � "�" :$� l� �-$� d-2� p-&(�,� l-$� d-� �Y.S-� �� �-$� d-� �Y0S-� �� �2�6-� �� ��6� �-$� d-� zY- �9�=�@S-� ��C-� d"!`6""#��7-E� d-� ��-G� d� Qp|�vy|�Qp��vy��|������� k  t %  ?ij    ?uv   ?wK   ?xy   ?z{   ?|}   ?~K   ? ; <   ?    ?  	  ?  
  ?    ? !   ? #   ? %   ? '   ? )   ? +   ? -   ? ?   ? S   ? U   ? W   ? Y   ? [   ? ]   ?��   ?� '   ?�K   ?��   ?��   ?�K   ?��    ?� ' !  ?� ' "  ?� ' #  ?� $�  �0   � � � � � �  ))77FFOO777V__nn____V{��������{��������������������������������������/ / / / 8 8 . . . �F!F!E!E!E!E!E!E!E!E!X!X!^!^!X!X!X!X!E!E!z"z"z"z"�"�"y"y"y"E!�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�$�$�$�$�$�$�$�$�$�#�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%&&&&&&&&&�% �A*A*A*A*'*�+�+�+�+�+�+�+�+�+�+�+�+�+�+�+�-�-�-�-�-�-�-�-�-�.�.�.�/�/�/�/�/�/�/0000000000021212121y2�2�2�2�2�2�2�2�2y2y2�3�3�3�3�3�3�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�5�5�5�5�5�55555�5�5!121-8-8-8-8-8    l   #     *� 
�   k       ij   �  l  i    K̸ ҳ ԻQY� zY�SYISYSSYUSYWSYOSYYSY� zY�QY� zY[SYBSY]SY_S�bSY�QY� zY[SYBSY]SYdS�bSY�QY� zY[SYBSY]SYfS�bSY�QY� zY[SYBSY]SY�S�bSY�QY� zY[SYBSY]SY�S�bSY�QY� zY[SYBSY]SY�S�bSY�QY� zY[SYBSY]SY�S�bSS�b�M�   k      Kij        ����  - � 
SourceFile /CFIDE/services/pdf.cfc @cfpdf2ecfc913323842$funcCONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ARRAY  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   I  MAP ! KEY # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 VALUE 5 array 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? ARRAY_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G ROTATION I 
   			
       K _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V M N
 & O _setCurrentLineNo (I)V Q R
 & S ArrayNew (I)Ljava/util/List; U V coldfusion/runtime/CFPage X
 Y W set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] 
       a [ R
 _ c   e _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; g h
 & i _List $(Ljava/lang/Object;)Ljava/util/List; k l coldfusion/runtime/Cast n
 o m java/util/List q size ()I s t r u bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; w x
 & y get (I)Ljava/lang/Object; { | r } 

          	component � CFIDE.services.pdfpagedetail � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 Y � java/lang/String � HEIGHT � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 & � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � WIDTH � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; g �
 & � _arrayGetAt 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � java/lang/Object � 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; g �
 & � _double (Ljava/lang/Object;)D � �
 o � _Object (D)Ljava/lang/Object; � �
 o � _arraySetAt � �
 & � 
    � (convertArrayOfStructToPDFPageDetailArray � metaData Ljava/lang/Object; � �	  � CFIDE.services.pdfpagedetail[] � &coldfusion/runtime/AttributeCollection � name � access � private � 
returntype � 
Parameters � TYPE � NAME � value � ([Ljava/lang/Object;)V  �
 � � rotation � getMetadata ()Ljava/lang/Object; this BLcfpdf2ecfc913323842$funcCONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; Lcoldfusion/runtime/Variable; t16 Ljava/util/List; t17 t18 t19 t20 LineNumberTable <clinit> 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � t  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   -     � �Y6SYJS�    �        � �    � �  �  � 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:-L� P
- �� T-� Z� `-b� P� d-b� Pf� `-b� P-6� j� p:66� v 6-$+� z:� �� ~ :� `� �-�� P- �� T-��� �� `-�� P-� �Y�S-� �Y�S� �� �-�� P-� �Y�S-� �Y�S� �� �-�� P-� �YJS-J-� �� �� �-�� P-
� �Y- � �� �� �S-� �� �-b� P`6�� -b� P-
� ��-�� P�    �   �   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � 1 2   �  �   �  � 	  �  � 
  �  �   � ! �   � # �   � 5 �   � I �   � � �   � �    � �    � �    � � �  �  * J   � r � | � | � { � { � { � { � r � r � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 �< �< �< �< �0 �0 �e �e �b �b �b �b �V �V �� �� �� �� �� �� �� �� �� �� �y �y �� � � �� �� �� �� �� �     �   #     *� 
�    �        � �    �   �   �     �� �Y� �Y�SY�SY�SY�SY�SY�SY�SY� �Y� �Y� �Y�SY8SY�SY�S� �SY� �Y� �Y�SY8SY�SY�S� �SS� ̳ ��    �       � � �        ����  -� 
SourceFile /CFIDE/services/pdf.cfc !cfpdf2ecfc913323842$funcTHUMBNAIL  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   HTTPURLFORDIRECTORY  ARRAY ! UTIL # 
SOURCEPATH % DESTINATION ' I ) 	FILESLIST + FILENAME - MAP / coldfusion/runtime/CfJspPage 1 pageContext #Lcoldfusion/runtime/NeoPageContext; 3 4	 2 5 getOut ()Ljavax/servlet/jsp/JspWriter; 7 8 javax/servlet/jsp/JspContext :
 ; 9 parent Ljavax/servlet/jsp/tagext/Tag; = >	 2 ? SERVICEUSERNAME A string C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G 3coldfusion/tagext/validation/CFTypeValidatorFactory K STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; M N	 L O _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; Q R
  S SERVICEPASSWORD U SOURCE W FORMAT Y IMAGEPREFIX [ PASSWORD ] PAGES _ 
RESOLUTION a SCALE c TRANSPARENT e ,                                        
		 g _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V i j
 2 k _setCurrentLineNo (I)V m n
 2 o 	ISALLOWED q _get &(Ljava/lang/String;)Ljava/lang/Object; s t
 2 u 	isAllowed w java/lang/Object y _autoscalarize { t
 2 | pdf ~ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 2 � ISALLOWEDIP � isAllowedIP � READFILEFROMURL � readFileFromURL � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � GETTEMPFILEPATH � getTempFilePath � 	thumbnail � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; { �
 2 � java/lang/String � ACTION � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 2 � ALLOWEXTRAATTRIBUTES � true � format � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 2 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � imageprefix � pages � password � 
resolution � scale � transparent � 			
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 2 � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � doAfterBody � �
 � � doEndTag � �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally 
 � 
 
	       java coldfusion.servicelayer.Utils CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

 � s �
 2 sortThumnailFiles _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
 2 

	       ArrayNew (I)Ljava/util/List;
 � 	
	       � n
 � 
GETHTTPURL  
getHttpUrl" _List $(Ljava/lang/Object;)Ljava/util/List;$%
 �& java/util/List( size* �)+ bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;-.
 2/ get (I)Ljava/lang/Object;12)3 
		5 	component7 CFIDE.services.element9 KEY; VALUE= _String &(Ljava/lang/Object;)Ljava/lang/String;?@
 �A /C concat &(Ljava/lang/String;)Ljava/lang/String;EF
 �G 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; {I
 2J _double (Ljava/lang/Object;)DLM
 �N (D)Ljava/lang/Object; �P
 �Q _arraySetAtS �
 2T 			
	V metaData Ljava/lang/Object;XY	 Z CFIDE.services.element[]\ &coldfusion/runtime/AttributeCollection^ name` accessb remoted 
returntypef 
Parametersh TYPEj NAMEl serviceusernamen ([Ljava/lang/Object;)V p
_q servicepasswords sourceu getMetadata ()Ljava/lang/Object; this #Lcfpdf2ecfc913323842$funcTHUMBNAIL; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf18 Lcoldfusion/tagext/lang/PDFTag; mode18 t32 t33 Ljava/lang/Throwable; t34 t35 t36 Ljava/util/List; t37 t38 t39 t40 LineNumberTable java/lang/Throwable� <clinit> 1       � �   XY    wx |   "     �[�   {       yz   }~ |   !     ��   {       yz    � |         �   {       yz   �~ |   "     ]�   {       yz   �� |   Z     <
� �YBSYVSYXSYZSY\SY^SY`SYbSYdSY	fS�   {       <yz   �� |  � 	 )  ~+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :+0� :-� 6� <:-� @:*BD� J� P� T:*VD� J� P� T:*XD� J� P� T:*ZD� J� P� T:*\D� J� P� T:*^D� J� P� T:*`D� J� P� T:*bD� J� P� T:*dD� J� P� T:*fD	� J� P� T:-h� l-�� p-r� vx-� zY-B� }SY-V� }SYS� �W-�� p-�� v�-� zY-B� }SYS� �W-�� p-�� v�-� zY-X� }S� �� �-�� p-�� v�-� zY�S� �� �
-� �� �-
� �Y�S�� �-
� �YXS-� �� �-
� �Y(S-� �� �-
� �Y�S�� �-�� p-�� ��� �Y� �� W-Z� }�� ��~�� �� �� -�� p--
� �� ��� �W-�� p-ȶ ��� �Y� �� W-\� }�� ��~�� �� �� -�� p--
� �� �ȶ �W-�� p-ʶ ��� �Y� �� W-`� }�� ��~�� �� �� -�� p--
� �� �ʶ �W-�� p-̶ ��� �Y� �� W-^� }�� ��~�� �� �� -�� p--
� �� �̶ �W-�� p-ζ ��� �Y� �� W-b� }�� ��~�� �� �� -�� p--
� �� �ζ �W-�� p-ж ��� �Y� �� W-d� }�� ��~�� �� �� -�� p--
� �� �ж �W-�� p-Ҷ ��� �Y� �� W-f� }�� ��~�� �� �� -�� p--
� �� �Ҷ �W-Զ l-� �� �� �:-�� p�-
� �� �� �� �Y6� � ����� �� : � # �� � #:!!� � � :"� "�:#��#-� l-�� p-	�� �-�� p--�� zY-� �S�� �-� l-�� p-�� �-� l�-� l�� �-� l-�� p-!� v#-� zY-� �S� �� �-� l-� ��':$6%6&$�, 6'-.+�0:(� �$&�4 :(� �� �-6� l-�� p-8:�� �-6� l-� �Y<S-� �� �-6� l-� �Y>S-� ��BD�H-� ��B�H� �-6� l-� zY- �K�O�RS-� ��U-� l&%`6&&'��7-� l-� ��-W� l� o�������o��������������� {  � )  ~yz    ~��   ~�Y   ~��   ~��   ~��   ~�Y   ~ = >   ~ �   ~ � 	  ~ � 
  ~ �   ~ !�   ~ #�   ~ %�   ~ '�   ~ )�   ~ +�   ~ -�   ~ /�   ~ A�   ~ U�   ~ W�   ~ Y�   ~ [�   ~ ]�   ~ _�   ~ a�   ~ c�   ~ e�   ~��   ~� )   ~�Y    ~�� !  ~�� "  ~�Y #  ~�� $  ~� ) %  ~� ) &  ~� ) '  ~�� (�  *�  vE�E�T�T�]�]�f�f�E�E�E�t�t���������t�t�t�������������������������������������������������������������������������
�+�+�+�+��8�8�7�7�7�7�7�7�7�7�J�J�P�P�J�J�J�J�7�7�l�l�l�l�u�u�k�k�k�7��������������������������������������������������������������������������������������������������������������������������+�+�1�1�+�+�+�+���M�M�M�M�V�V�L�L�L��d�d�c�c�c�c�c�c�c�c�v�v�|�|�v�v�v�v�c�c�������������������c���������������������������������������������������������������������������������������������.�.�.�.�7�7�-�-�-���E�_�_�_�_�E����������������������������������������������������"�"�"�1�3�3�3�3�1�1�A�J�J�[�[�J�J�J�J�A�A�q�q�q�q���������������������������������������������������������3�3�3�3�3�3�C�C�C�C�*�*�`�q�l�l�l�l�l�    |   #     *� 
�   {       yz   �  |  �    �ظ ޳ �_Y� zYaSY�SYcSYeSYgSY]SYiSY
� zY�_Y� zYkSYDSYmSYoS�rSY�_Y� zYkSYDSYmSYtS�rSY�_Y� zYkSYDSYmSYvS�rSY�_Y� zYkSYDSYmSY�S�rSY�_Y� zYkSYDSYmSY�S�rSY�_Y� zYkSYDSYmSY�S�rSY�_Y� zYkSYDSYmSY�S�rSY�_Y� zYkSYDSYmSY�S�rSY�_Y� zYkSYDSYmSY�S�rSY	�_Y� zYkSYDSYmSY�S�rSS�r�[�   {      �yz        ����  - 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842  coldfusion/runtime/CFComponent  <init> ()V  
  	 com.macromedia.SourceModTime  d7�� coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   javax/servlet/jsp/JspContext 
   parent Ljavax/servlet/jsp/tagext/Tag;  	   Cp1252  setPageEncoding (Ljava/lang/String;)V   ! !coldfusion/runtime/NeoPageContext #
 $ " _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object; & '
  ( _factor1 * '
  + archive Lcoldfusion/runtime/UDFMethod; cfpdf2ecfc913323842$funcARCHIVE /
 0 	 - .	  2 ARCHIVE 4 registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V 6 7
  8 
processDDX "cfpdf2ecfc913323842$funcPROCESSDDX ;
 < 	 : .	  > 
PROCESSDDX @ readsignaturefields +cfpdf2ecfc913323842$funcREADSIGNATUREFIELDS C
 D 	 B .	  F READSIGNATUREFIELDS H getinfo cfpdf2ecfc913323842$funcGETINFO K
 L 	 J .	  N GETINFO P removewatermark 'cfpdf2ecfc913323842$funcREMOVEWATERMARK S
 T 	 R .	  V REMOVEWATERMARK X sign cfpdf2ecfc913323842$funcSIGN [
 \ 	 Z .	  ^ SIGN ` extractPages $cfpdf2ecfc913323842$funcEXTRACTPAGES c
 d 	 b .	  f EXTRACTPAGES h extractImage $cfpdf2ecfc913323842$funcEXTRACTIMAGE k
 l 	 j .	  n EXTRACTIMAGE p validatesignature )cfpdf2ecfc913323842$funcVALIDATESIGNATURE s
 t 	 r .	  v VALIDATESIGNATURE x deletepages #cfpdf2ecfc913323842$funcDELETEPAGES {
 | 	 z .	  ~ DELETEPAGES � (convertArrayOfStructToPDFPageDetailArray @cfpdf2ecfc913323842$funcCONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY �
 � 	 � .	  � (CONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY � addwatermark $cfpdf2ecfc913323842$funcADDWATERMARK �
 � 	 � .	  � ADDWATERMARK � unsign cfpdf2ecfc913323842$funcUNSIGN �
 � 	 � .	  � UNSIGN � 
mergeFiles "cfpdf2ecfc913323842$funcMERGEFILES �
 � 	 � .	  � 
MERGEFILES � protect cfpdf2ecfc913323842$funcPROTECT �
 � 	 � .	  � PROTECT � 	thumbnail !cfpdf2ecfc913323842$funcTHUMBNAIL �
 � 	 � .	  � 	THUMBNAIL � mergespecificpages *cfpdf2ecfc913323842$funcMERGESPECIFICPAGES �
 � 	 � .	  � MERGESPECIFICPAGES � setinfo cfpdf2ecfc913323842$funcSETINFO �
 � 	 � .	  � SETINFO � extractText #cfpdf2ecfc913323842$funcEXTRACTTEXT �
 � 	 � .	  � EXTRACTTEXT � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � _implicitMethods Ljava/util/Map; � �	  � java/lang/Object � style � document � extends � base � 	wsversion � 1 � Name � pdf � 	Functions �	 0 �	 < �	 D �	 L �	 T �	 \ �	 d �	 l �	 t �	 | �	 � �	 � �	 � �	 � �	 � �	 � �	 � �	 � �	 � � 
Properties � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this Lcfpdf2ecfc913323842; LocalVariableTable Code _setImplicitMethods (Ljava/util/Map;)V implicitMethods __factorParent out Ljavax/servlet/jsp/JspWriter; value 
getExtends ()Ljava/lang/String; registerUDFs runPage LineNumberTable _getImplicitMethods ()Ljava/util/Map; <clinit> 1       - .    : .    B .    J .    R .    Z .    b .    j .    r .    z .    � .    � .    � .    � .    � .    � .    � .    � .    � .    � �   
 � �   
      "     � Ͱ                 -     +� ӱ                �   & '    >     *�      *         	     
     �   * '    >     *�      *         	     
     �      !     ݰ                  �     �*5� 3� 9*A� ?� 9*I� G� 9*Q� O� 9*Y� W� 9*a� _� 9*i� g� 9*q� o� 9*y� w� 9*�� � 9*�� �� 9*�� �� 9*�� �� 9*�� �� 9*�� �� 9*�� �� 9*�� �� 9*�� �� 9*ɲ Ƕ 9�          �       x     0*� � L*� N*� � %*-+� )� �*-+� ,� ��      *    0     0
    0 �    0                #     *� 
�                 "     � Ӱ                 R 	   �� 0Y� 1� 3� <Y� =� ?� DY� E� G� LY� M� O� TY� U� W� \Y� ]� _� dY� e� g� lY� m� o� tY� u� w� |Y� }� � �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� ų ǻ �Y� �Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� �Y� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SY	� �SY
� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SSY
�SY� �S� �� ͱ         �     � &��bb�� R R;;& �& �--4�4�; <; <B �B �I I P�P�W �W �^�^�evevl;l;sVsVz �z �           ����  -� 
SourceFile /CFIDE/services/pdf.cfc "cfpdf2ecfc913323842$funcPROCESSDDX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   INPUTFILESSTRUCT  OUTPUTFILESSTRUCT ! KVPAIR # MODIFIEDRESULT % VALUE ' KEY ) coldfusion/runtime/CfJspPage + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	 , / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	 , 9 SERVICEUSERNAME ; string = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A 3coldfusion/tagext/validation/CFTypeValidatorFactory E STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; G H	 F I _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; K L
  M SERVICEPASSWORD O 	DDXSTRING Q 
INPUTFILES S CFIDE.services.element[] U TYPED_ARRAY_VALIDATOR W H	 F X OUTPUTFILES Z         
		 \ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V ^ _
 , ` _setCurrentLineNo (I)V b c
 , d 	ISALLOWED f _get &(Ljava/lang/String;)Ljava/lang/Object; h i
 , j 	isAllowed l java/lang/Object n _autoscalarize p i
 , q pdf s 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; u v
 , w ISALLOWEDIP y isAllowedIP { 	StructNew ()Ljava/util/Map; } ~ coldfusion/runtime/CFPage �
 �  set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � 
		 �   � 

         � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � java/util/List � size ()I � � � � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 , � get (I)Ljava/lang/Object; � � � � 
            � java/lang/String � READFILEFROMURL � readFileFromURL � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 , � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 , � 
             � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; p �
 , � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 � � GETTEMPFILEPATH � getTempFilePath � .pdf �         
         � ___IMPLICITARRYSTRUCTVAR0 � ACTION � 
processddx � DDXFILE � NAME � result � h �
 , � 	
         � 		
	 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 , � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 , � 
	  
     	 RESULT _validatingMap �
 , java/util/Map	 entrySet ()Ljava/util/Set;
 java/util/Set iterator ()Ljava/util/Iterator; java/util/Iterator next ()Ljava/lang/Object; class$java$util$Map$Entry java.util.Map$Entry �	  _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object; !
 �" java/util/Map$Entry$ getKey&%' key) SetVariable 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;+,
 �- 
StructFind 5(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;/0
 �1 
successful3 _compare '(Ljava/lang/Object;Ljava/lang/String;)D56
 ,7 
            	9 
GETHTTPURL; 
getHttpUrl= 
             ? 
             	A CFLOOPC checkRequestTimeout (Ljava/lang/String;)VEF
 ,G hasNext ()ZIJK          
		M CONVERTSTRUCTTOMAPO convertStructToMapQ 			
	S 
processDDXU metaData Ljava/lang/Object;WX	 Y &coldfusion/runtime/AttributeCollection[ name] access_ remotea 
returntypec 
Parameterse TYPEg serviceusernamei ([Ljava/lang/Object;)V k
\l servicepasswordn 	ddxStringp 
inputfilesr outputfilest getMetadata this $Lcfpdf2ecfc913323842$funcPROCESSDDX; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t22 Ljava/util/List; t23 I t24 t25 t26 t27 t28 t29 t30 t31 pdf9 Lcoldfusion/tagext/lang/PDFTag; t34 Ljava/util/Iterator; LineNumberTable <clinit> 1       � �    �   WX    v z   "     �Z�   y       wx   {| z   "     V�   y       wx   } � z         �   y       wx   ~| z   !     V�   y       wx   � z   <     � �Y<SYPSYRSYTSY[S�   y       wx   �� z  
�  #  Z+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :-� 0� 6:-� ::*<>� D� J� N:*P>� D� J� N:*R>� D� J� N:*TV� D� Y� N:*[V� D� Y� N:-]� a-i� e-g� km-� oY-<� rSY-P� rSYtS� xW-j� e-z� k|-� oY-<� rSYtS� xW-k� e� �� �-l� e� �� �-�� a�� �-�� a-T� r� �:66� � 6-$+� �:� �� � :� �� �-�� a-� �Y(S-p� e-�� k�-� oY-� �Y(S� �S� x� �-�� a-q� e--� �� �-� �Y*S� �� �-� �Y(S� �� �W-�� a`6��W-�� a-[� r� �:66� � 6-$+� �:� �� � :� �� |-�� a-� �Y(S-t� e-Ŷ k�-� oY�S� x� �-�� a-u� e--� �� �-� �Y*S� �� �-� �Y(S� �� �W-�� a`6��d-˶ a+Ͷ :  � �� �- � �Y�SѶ �- � �Y�S-R� r� �- � �YTS-� �� �- � �Y[S-� �� �- � �Y�S׶ �
- � ٶ �-۶ a-z� e� �� �-ݶ a-� �� �� �:!-{� e!�-
� �� �!� �!� �� �-� a�� �-� a-� r�� � :"�'"� ��#�%�( :-*�.W-�� a-~� e--� r� �-� ��2� �-�� a-� �4�8�� l-:� a-�� e--� �� �-� �� �-�� e-<� k>-� oY-�� e--� �� �-� ��2S� x� �W-@� a� M-B� a-�� e--� �� �-� �� �-�� e--� r� �-� ��2� �W-�� a-� aD�H"�L ���-N� a-�� e-P� kR-� oY-� �S� x�-T� a�   y  ` #  Zwx    Z��   Z�X   Z��   Z��   Z��   Z�X   Z 7 8   Z �   Z � 	  Z � 
  Z �   Z !�   Z #�   Z %�   Z '�   Z )�   Z ;�   Z O�   Z Q�   Z S�   Z Z�   Z��   Z��   Z��   Z��   Z��   Z��   Z��   Z��   Z��   Z��   Z ��    Z�� !  Z�� "�  � �  b �i �i �i �i �i �i �i �i �i �i �i �j �jjjjj �j �j �jk!k!k!k!kk'l0l0l0l0l'l �h>n@n@n@n@n>n>nMoMoMoMo�p�p�p�p�p�p�p�p�p�p�q�q�q�q�q�q�q�q�q�q�q�q�q�qoMo's's's's�t�t�t�t�t�t�t�tmtmt�u�u�u�u�u�u�u�u�u�u�u�u�u�u�s's�x�x�x�x�x�xxxxxx!x!x!x!x!x!xx6x6x6x6x6x6x*xKxKxKxKxKxKx?x`x`x`x`xTx�xex�wxz�z�z�z�zxzxz�{�{�{�{�{�|�|�|�|�|�|�|�}�}�}�}}}~(~(~(~(~2~2~'~'~'~'~~~FFLLh�h�h�h�q�q�q�q�������������������������g�g�g�g�������������������������������������������F }�}3�3�D�D�3�3�3�3�3�    z   #     *� 
�   y       wx   �  z  %    � � �� ��\Y� oY^SYVSY`SYbSYdSYVSYfSY� oY�\Y� oYhSY>SY�SYjS�mSY�\Y� oYhSY>SY�SYoS�mSY�\Y� oYhSY>SY�SYqS�mSY�\Y� oYhSYVSY�SYsS�mSY�\Y� oYhSYVSY�SYuS�mSS�m�Z�   y      wx        ����  - 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc913323842$funcUNSIGN  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K SIGNATUREFIELDNAME M 	UNSIGNALL O    
		 Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V S T
 $ U _setCurrentLineNo (I)V W X
 $ Y 	ISALLOWED [ _get &(Ljava/lang/String;)Ljava/lang/Object; ] ^
 $ _ 	isAllowed a java/lang/Object c _autoscalarize e ^
 $ f pdf h 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; j k
 $ l ISALLOWEDIP n isAllowedIP p READFILEFROMURL r readFileFromURL t set (Ljava/lang/Object;)V v w coldfusion/runtime/Variable y
 z x GETTEMPFILEPATH | getTempFilePath ~ 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e �
 $ � java/lang/String � ACTION � unsign � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � signaturefieldname � 	unsignall � 		
		
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ �  
		 � 
GETHTTPURL � 
getHttpUrl � 			
	 � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this  Lcfpdf2ecfc913323842$funcUNSIGN; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf14 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � �    �        � �      �   !     ��    �        � �     �         �    �        � �     �   !     6�    �        � �     �   B     $� �Y4SYHSYJSYLSYNSYPS�    �       $ � �     �  k 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:-R� V-� Z-\� `b-� dY-4� gSY-H� gSYiS� mW-�� Z-o� `q-� dY-4� gSYiS� mW-�� Z-s� `u-� dY-J� gS� m� {-�� Z-}� `-� dY-� �S� m� {
-� �� {-
� �Y�S�� �-
� �YJS-� �� �-
� �Y"S-� �� �-�� Z-�� ��� �Y� �� W-L� g�� ��~�� �� �� -�� Z--
� �� ��� �W-�� Z-�� ��� �Y� �� W-N� g�� ��~�� �� �� - � Z--
� �� ��� �W-� Z-�� ��� �Y� �� W-P� g�� ��~�� �� �� -� Z--
� �� ��� �W-�� V-� �� �� �:-� Z�-
� �� �� �� ԙ �-ֶ V-� Z-ض `�-� dY-� �S� m�-ܶ V�    �   �   � � �    �	
   � �   �   �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   � O   �   � �  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���� �� �� �����#�#������0�9�9�H�H�9�9�9�9�0�U�W�W�W�W�U�l�l�l�l�`�}�}�}�}�q������������������������������������������������������������������������������������������� � ��� � � � �����" " " " + + ! ! ! ��9988888888KKQQKKKK88mmmmvvlll8 ����������������     �   #     *� 
�    �        � �      �  /    �� �� �� �Y� dY�SY�SY�SY�SY�SY6SY�SY� dY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SY� �Y� dY�SY6SY�SY�S� �SS� �� �    �       � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc +cfpdf2ecfc913323842$funcREADSIGNATUREFIELDS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / SERVICEUSERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C SERVICEPASSWORD E SOURCE G PASSWORD I         
		 K _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V M N
 " O _setCurrentLineNo (I)V Q R
 " S 	ISALLOWED U _get &(Ljava/lang/String;)Ljava/lang/Object; W X
 " Y 	isAllowed [ java/lang/Object ] _autoscalarize _ X
 " ` pdf b 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; d e
 " f ISALLOWEDIP h isAllowedIP j READFILEFROMURL l readFileFromURL n set (Ljava/lang/Object;)V p q coldfusion/runtime/Variable s
 t r 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ v
 " w java/lang/String y ACTION { readsignaturefields } _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V  �
 " � NAME � res � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � 	
		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " �  
		 � RES � 			
	 � metaData Ljava/lang/Object; � �	  � query � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this -Lcfpdf2ecfc913323842$funcREADSIGNATUREFIELDS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf13 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ԰    �        � �    � �  �   !     ~�    �        � �    � �  �         �    �        � �    � �  �   !     ְ    �        � �    � �  �   7     � zY2SYFSYHSYJS�    �        � �    � �  �  & 	   �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:*H4� :� @� D:*J4� :� @� D:-L� P-ܶ T-V� Z\-� ^Y-2� aSY-F� aSYcS� gW-ݶ T-i� Zk-� ^Y-2� aSYcS� gW-޶ T-m� Zo-� ^Y-H� aS� g� u
-� x� u-
� zY|S~� �-
� zYHS-� x� �-
� zY�S�� �-� T-�� ��� �Y� �� W-J� a�� ��~�� �� �� -� T--
� x� ��� �W-�� P-� �� �� �:-� T�-
� x� �� �� ʙ �-̶ P-ζ a�-ж P�    �   �   � � �    � � �   � � �   �    �   �   � �   � - .   �    �  	  �  
  �    � 1   � E   � G   � I   �	 
  ~ _  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������������*�*�*�*��?�?�?�?�3�L�L�K�K�K�K�K�K�K�K�^�^�d�d�^�^�^�^�K�K����������������K� ��������������������������     �   #     *� 
�    �        � �      �   �     ��� �� �� �Y� ^Y�SY~SY�SY�SY�SY�SY�SY� ^Y� �Y� ^Y�SY4SY�SY�S� �SY� �Y� ^Y�SY4SY�SY�S� �SY� �Y� ^Y�SY4SY�SY�S� �SY� �Y� ^Y�SY4SY�SY�S� �SS� � Ա    �       � � �        ����  -@ 
SourceFile /CFIDE/services/pdf.cfc $cfpdf2ecfc913323842$funcADDWATERMARK  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   COPYFROMPATH  
SOURCEPATH ! 	IMAGEPATH # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I SOURCE K COPYFROMURL M IMAGEURL O 
FOREGROUND Q ISBASE64 S OPACITY U PAGES W PASSWORD Y POSITION [ ROTATION ] SHOWONPRINT _ 
		 a _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V c d
 & e _setCurrentLineNo (I)V g h
 & i 	ISALLOWED k _get &(Ljava/lang/String;)Ljava/lang/Object; m n
 & o 	isAllowed q java/lang/Object s _autoscalarize u n
 & v pdf x 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; z {
 & | ISALLOWEDIP ~ isAllowedIP � READFILEFROMURL � readFileFromURL � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; u �
 & � java/lang/String � ACTION � addwatermark � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � ALLOWEXTRAATTRIBUTES � true � copyfromurl � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � copyfrom � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 � � imageurl � image � 
foreground � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � isbase64 � opacity � pages � password � position � rotation � showonprint � destination � DESTINATION � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & �  
		 � 
GETHTTPURL � 
getHttpUrl 
	 metaData Ljava/lang/Object;	  &coldfusion/runtime/AttributeCollection	 name access remote 
returntype 
Parameters TYPE NAME serviceusername ([Ljava/lang/Object;)V 

 servicepassword source  getMetadata ()Ljava/lang/Object; this &Lcfpdf2ecfc913323842$funcADDWATERMARK; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf0 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �       "# '   "     ��   &       $%   () '   !     ��   &       $%   *+ '         �   &       $%   ,) '   !     8�   &       $%   -. '   l     N� �Y6SYJSYLSYNSYPSYRSYTSYVSYXSY	ZSY
\SY^SY`S�   &       N$%   /0 '  � 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*L8� >� D� H:*N8� >� D� H:*P8� >� D� H:*R8� >� D� H:*T8� >� D� H:*V8� >� D� H:*X8� >� D� H:*Z8	� >� D� H:*\8
� >� D� H:*^8� >� D� H:*`8� >� D� H:-b� f-� j-l� pr-� tY-6� wSY-J� wSYyS� }W-� j-� p�-� tY-6� wSYyS� }W-� j-�� p�-� tY-L� wS� }� �
-� �� �-
� �Y�S�� �-
� �YLS-� �� �-
� �Y�S�� �-� j-�� �� �Y� �� W-N� w�� ��~� �� �� C-� j-�� p�-� tY-N� wS� }� �-� j--
� �� ��-� �� �W- � j-�� �� �Y� �� W-P� w�� ��~� �� �� C-"� j-�� p�-� tY-P� wS� }� �-#� j--
� �� ��-� �� �W-%� j-Ķ ��� �Y� �� W-R� w�� ��~�� �� �� -&� j--
� �� �Ķ �W-'� j-ʶ ��� �Y� �� W-T� w�� ��~�� �� �� -(� j--
� �� �ʶ �W-)� j-̶ ��� �Y� �� W-V� w�� ��~�� �� �� -*� j--
� �� �̶ �W-+� j-ζ ��� �Y� �� W-X� w�� ��~�� �� �� -,� j--
� �� �ζ �W--� j-ж ��� �Y� �� W-Z� w�� ��~�� �� �� -.� j--
� �� �ж �W-/� j-Ҷ ��� �Y� �� W-\� w�� ��~�� �� �� -0� j--
� �� �Ҷ �W-1� j-Զ ��� �Y� �� W-^� w�� ��~�� �� �� -2� j--
� �� �Զ �W-3� j-ֶ ��� �Y� �� W-`� w�� ��~�� �� �� -4� j--
� �� �ֶ �W-5� j-ض ��� �Y� �� W-ڶ w�� ��~�� �� �� -6� j--
� �� �ض �W-b� f-� �� �� �:-8� j�-
� �� �� �� �� �-�� f-9� j- � p-� tY-� �S� }�-� f�   &     �$%    �12   �3   �45   �67   �89   �:   � 1 2   � ;   � ; 	  � ; 
  � ;   � !;   � #;   � 5;   � I;   � K;   � M;   � O;   � Q;   � S;   � U;   � W;   � Y;   � [;   � ];   � _;   �<= >  v�   P P _ _ h h q q P P P ~ ~ � � � � ~ ~ ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
 
 	 	 	 	           	 	 2 : : I I : : : : 2 ] ] ] ] f f h h \ \ \ 	 y  y  x  x  x  x  �  �  �  �  �  �  �  �  x  x  � "� "� "� "� "� "� "� "� "� "� #� #� #� #� #� #� #� #� #� #� #x  � %� %� %� %� %� %� %� %� %� %� %� %  %  %� %� %� %� %� %� % & & & &$ &$ & & & &� %1 '1 '0 '0 '0 '0 '0 '0 '0 '0 'C 'C 'I 'I 'C 'C 'C 'C '0 '0 'd (d (d (d (m (m (c (c (c (0 'z )z )y )y )y )y )y )y )y )y )� )� )� )� )� )� )� )� )y )y )� *� *� *� *� *� *� *� *� *y )� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� ,� ,� ,� ,� ,� ,� ,� ,� ,� + - - - - - - - - - - - -$ -$ - - - - - - -? .? .? .? .H .H .> .> .> . -U /U /T /T /T /T /T /T /T /T /g /g /m /m /g /g /g /g /T /T /� 0� 0� 0� 0� 0� 0� 0� 0� 0T /� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 2� 2� 2� 2� 2� 2� 2� 2� 2� 1� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3 4 4 4 4# 4# 4 4 4 4� 30 50 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5B 5B 5H 5H 5B 5B 5B 5B 5/ 5/ 5c 6c 6c 6c 6l 6l 6b 6b 6b 6/ 5P � 8� 8� 8� 8z 8� 9� 9� 9� 9� 9� 9� 9� 9� 9    '   #     *� 
�   &       $%   ?  '  F    (޸ � �
Y� tYSY�SYSYSYSY8SYSY� tY�
Y� tYSY8SYSYS�SY�
Y� tYSY8SYSYS�SY�
Y� tYSY8SYSY!S�SY�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SY	�
Y� tYSY8SYSY�S�SY
�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SY�
Y� tYSY8SYSY�S�SS���   &      ($%        ����  -" 
SourceFile /CFIDE/services/pdf.cfc #cfpdf2ecfc913323842$funcEXTRACTTEXT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  INFO ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K PAGES M ADDQUADS O HONOURSPACES Q USESTRUCTURE S TYPE U         

		 W _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Y Z
 $ [   ] set (Ljava/lang/Object;)V _ ` coldfusion/runtime/Variable b
 c a _setCurrentLineNo (I)V e f
 $ g 	ISALLOWED i _get &(Ljava/lang/String;)Ljava/lang/Object; k l
 $ m 	isAllowed o java/lang/Object q _autoscalarize s l
 $ t pdf v 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; x y
 $ z ISALLOWEDIP | isAllowedIP ~ READFILEFROMURL � readFileFromURL � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; s �
 $ � java/lang/String � ACTION � extracttext � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � NAME � info � ALLOWEXTRAATTRIBUTES � true � addquads � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � password � honourspaces � usestructure � type � pages � 				

		 � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 
		 � 			
	 � extractText � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword  source getMetadata ()Ljava/lang/Object; this %Lcfpdf2ecfc913323842$funcEXTRACTTEXT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf5 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     	   "     � �             
 	   !     �              	         �              	   !     6�              	   T     6	� �Y4SYHSYJSYLSYNSYPSYRSYTSYVS�          6    	  � 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:*R6� <� B� F:*T6� <� B� F:*V6� <� B� F:-X� \^� d- � h-j� np-� rY-4� uSY-H� uSYwS� {W- � h-}� n-� rY-4� uSYwS� {W- �� h-�� n�-� rY-J� uS� {� d
-� �� d-
� �Y�S�� �-
� �Y�S�� �-
� �YJS-� �� �-
� �Y�S�� �- �� h-�� ��� �Y� �� W-P� u^� ��~�� �� �� - �� h--
� �� ��� �W- �� h-�� ��� �Y� �� W-L� u^� ��~�� �� �� - �� h--
� �� ��� �W- �� h-�� ��� �Y� �� W-R� u^� ��~�� �� �� - �� h--
� �� ��� �W- �� h-�� ��� �Y� �� W-T� u^� ��~�� �� �� - �� h--
� �� ��� �W- �� h-�� ��� �Y� �� W-V� u^� ��~�� �� �� - �� h--
� �� ��� �W- �� h-�� ��� �Y� �� W-N� u^� ��~�� �� �� - � h--
� �� ��� �W-¶ \-� �� �� �:-� h�-
� �� �� �� � �-� \-� ��-� \�      �   �    �   � �   �   �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   � O   � Q   � S   � U   �    � �   � � � � � � � � � � � � �  �  � � � � �! �! �  �  �  �/ �/ �> �> �G �G �/ �/ �/ �N �W �W �f �f �W �W �W �W �N �s �u �u �u �u �s �� �� �� �� �~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � � �� � � � � � � � � � � �+ �+ �1 �1 �+ �+ �+ �+ � � �M �M �M �M �V �V �L �L �L � �d �d �c �c �c �c �c �c �c �c �v �v �| �| �v �v �v �v �c �c �� �� �� �� �� �� �� �� �� �c �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � �� �� �. �. �. �. �7 �7 �- �- �- �� �E �E �D �D �D �D �D �D �D �D �W �W �] �] �W �W �W �W �D �D �y y y y � � x x x D � � �����������    	   #     *� 
�             !  	  �    |Ƹ ̳ λ �Y� rY�SY�SY�SY�SY�SY6SY�SY	� rY� �Y� rYVSY6SY�SY�S� �SY� �Y� rYVSY6SY�SYS� �SY� �Y� rYVSY6SY�SYS� �SY� �Y� rYVSY6SY�SY�S� �SY� �Y� rYVSY6SY�SY�S� �SY� �Y� rYVSY6SY�SY�S� �SY� �Y� rYVSY6SY�SY�S� �SY� �Y� rYVSY6SY�SY�S� �SY� �Y� rYVSY6SY�SY�S� �SS� �� �         |        