FasdUAS 1.101.10   ��   ��    k             l     ��  ��    7 1 Script for moving Safari windows to the right...     � 	 	 b   S c r i p t   f o r   m o v i n g   S a f a r i   w i n d o w s   t o   t h e   r i g h t . . .   
  
 l     ��  ��    \ V I tied it to a keyboard shortcut (alt - shift - right arrow key) by using Automator.      �   �   I   t i e d   i t   t o   a   k e y b o a r d   s h o r t c u t   ( a l t   -   s h i f t   -   r i g h t   a r r o w   k e y )   b y   u s i n g   A u t o m a t o r .        l     ��  ��    1 + Steps for attaching to keyboard shortcut:      �   V   S t e p s   f o r   a t t a c h i n g   t o   k e y b o a r d   s h o r t c u t :        l     ��  ��      1. Open Automator      �   &   1 .   O p e n   A u t o m a t o r        l     ��  ��       2. Select "Quick Action"      �   4   2 .   S e l e c t   " Q u i c k   A c t i o n "        l     ��   !��     N H 3. Select "no input" on first dropdown menu in the quick action editor     ! � " " �   3 .   S e l e c t   " n o   i n p u t "   o n   f i r s t   d r o p d o w n   m e n u   i n   t h e   q u i c k   a c t i o n   e d i t o r     # $ # l     �� % &��   % Z T 4. Type "run applescript" in the left panel with actions (e.g. Activate Fonts, etc)    & � ' ' �   4 .   T y p e   " r u n   a p p l e s c r i p t "   i n   t h e   l e f t   p a n e l   w i t h   a c t i o n s   ( e . g .   A c t i v a t e   F o n t s ,   e t c ) $  ( ) ( l     �� * +��   * 0 * 5. Save quick action with some nice name     + � , , T   5 .   S a v e   q u i c k   a c t i o n   w i t h   s o m e   n i c e   n a m e   )  - . - l     �� / 0��   / %  6. Open up system Preferences     0 � 1 1 >   6 .   O p e n   u p   s y s t e m   P r e f e r e n c e s   .  2 3 2 l     �� 4 5��   4 + % 7. Go to "keyboard" --> "shortcuts"     5 � 6 6 J   7 .   G o   t o   " k e y b o a r d "   - - >   " s h o r t c u t s "   3  7 8 7 l     �� 9 :��   9 s m 8. Click "Services". Scroll down to the "general" section, where you will find the name of the quick action     : � ; ; �   8 .   C l i c k   " S e r v i c e s " .   S c r o l l   d o w n   t o   t h e   " g e n e r a l "   s e c t i o n ,   w h e r e   y o u   w i l l   f i n d   t h e   n a m e   o f   t h e   q u i c k   a c t i o n   8  < = < l     �� > ?��   >      you just saved.     ? � @ @ (         y o u   j u s t   s a v e d .   =  A B A l     �� C D��   C j d 9. Double click on the "none" text in the same row as your service  to assign a keyboard shortcut.     D � E E �   9 .   D o u b l e   c l i c k   o n   t h e   " n o n e "   t e x t   i n   t h e   s a m e   r o w   a s   y o u r   s e r v i c e     t o   a s s i g n   a   k e y b o a r d   s h o r t c u t .   B  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J @ : Be warned that the tabs reload each time you move them...    K � L L t   B e   w a r n e d   t h a t   t h e   t a b s   r e l o a d   e a c h   t i m e   y o u   m o v e   t h e m . . . I  M N M l     ��������  ��  ��   N  O�� O l     P���� P O      Q R Q k    ~ S S  T U T r     V W V 6    X Y X n    
 Z [ Z 1    
��
�� 
pnam [ 4   �� \
�� 
pcap \ m    ����  Y =    ] ^ ] 1    ��
�� 
pisf ^ m    ��
�� boovtrue W o      ���� 0 	activeapp 	activeApp U  _�� _ Z    ~ ` a���� ` E    b c b o    ���� 0 	activeapp 	activeApp c m     d d � e e  S a f a r i a O   z f g f O     y h i h k   ' x j j  k l k r   ' . m n m n   ' , o p o 1   * ,��
�� 
pidx p 1   ' *��
�� 
cTab n o      ���� 0 currentindex   l  q r q r   / 6 s t s n   / 4 u v u m   2 4��
�� 
nmbr v 2  / 2��
�� 
bTab t o      ���� 0 	totaltabs 	totalTabs r  w�� w Z   7 x x y�� z x =  7 : { | { o   7 8���� 0 currentindex   | o   8 9���� 0 	totaltabs 	totalTabs y k   = W } }  ~  ~ I  = N�� � �
�� .coremovenull���     obj  � 4   = A�� �
�� 
bTab � o   ? @���� 0 currentindex   � �� ���
�� 
insh � n   B J � � � 8   F J��
�� 
insl � 4   B F�� �
�� 
bTab � m   D E���� ��     ��� � r   O W � � � 4   O S�� �
�� 
bTab � m   Q R����  � 1   S V��
�� 
cTab��  ��   z k   Z x � �  � � � I  Z m�� � �
�� .coremovenull���     obj  � 4   Z ^�� �
�� 
bTab � o   \ ]���� 0 currentindex   � �� ���
�� 
insh � n   _ i � � � 9   e i��
�� 
insl � 4   _ e�� �
�� 
bTab � l  a d ����� � [   a d � � � o   a b���� 0 currentindex   � m   b c���� ��  ��  ��   �  ��� � r   n x � � � 4   n t�� �
�� 
bTab � l  p s ����� � [   p s � � � o   p q���� 0 currentindex   � m   q r���� ��  ��   � 1   t w��
�� 
cTab��  ��   i 4    $�� �
�� 
cwin � m   " #����  g m     � ��                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��  ��   R m      � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k      � �  O����  ��  ��   �   �  ����� ����� d ���������������������
�� 
pcap
�� 
pnam �  
�� 
pisf�� 0 	activeapp 	activeApp
�� 
cwin
�� 
cTab
�� 
pidx�� 0 currentindex  
�� 
bTab
�� 
nmbr�� 0 	totaltabs 	totalTabs
�� 
insh
�� 
insl
�� .coremovenull���     obj �� �� |*�k/�,�[�,\Ze81E�O�� c� [*�k/ S*�,�,E�O*�-�,E�O��  *��/�*�k/a 3l O*�k/*�,FY  *��/�*��k/a 4l O*��k/*�,FUUY hUascr  ��ޭ