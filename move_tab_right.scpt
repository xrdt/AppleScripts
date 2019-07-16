FasdUAS 1.101.10   ��   ��    k             l     ��  ��    7 1 Script for moving Safari windows to the right...     � 	 	 b   S c r i p t   f o r   m o v i n g   S a f a r i   w i n d o w s   t o   t h e   r i g h t . . .   
  
 l     ��  ��    \ V I tied it to a keyboard shortcut (alt - shift - right arrow key) by using Automator.      �   �   I   t i e d   i t   t o   a   k e y b o a r d   s h o r t c u t   ( a l t   -   s h i f t   -   r i g h t   a r r o w   k e y )   b y   u s i n g   A u t o m a t o r .        l     ��  ��    1 + Steps for attaching to keyboard shortcut:      �   V   S t e p s   f o r   a t t a c h i n g   t o   k e y b o a r d   s h o r t c u t :        l     ��  ��      1. Open Automator      �   &   1 .   O p e n   A u t o m a t o r        l     ��  ��       2. Select "Quick Action"      �   4   2 .   S e l e c t   " Q u i c k   A c t i o n "        l     ��   !��     N H 3. Select "no input" on first dropdown menu in the quick action editor     ! � " " �   3 .   S e l e c t   " n o   i n p u t "   o n   f i r s t   d r o p d o w n   m e n u   i n   t h e   q u i c k   a c t i o n   e d i t o r     # $ # l     �� % &��   % Z T 4. Type "run applescript" in the left panel with actions (e.g. Activate Fonts, etc)    & � ' ' �   4 .   T y p e   " r u n   a p p l e s c r i p t "   i n   t h e   l e f t   p a n e l   w i t h   a c t i o n s   ( e . g .   A c t i v a t e   F o n t s ,   e t c ) $  ( ) ( l     �� * +��   * 0 * 5. Save quick action with some nice name     + � , , T   5 .   S a v e   q u i c k   a c t i o n   w i t h   s o m e   n i c e   n a m e   )  - . - l     �� / 0��   / %  6. Open up system Preferences     0 � 1 1 >   6 .   O p e n   u p   s y s t e m   P r e f e r e n c e s   .  2 3 2 l     �� 4 5��   4 + % 7. Go to "keyboard" --> "shortcuts"     5 � 6 6 J   7 .   G o   t o   " k e y b o a r d "   - - >   " s h o r t c u t s "   3  7 8 7 l     �� 9 :��   9 s m 8. Click "Services". Scroll down to the "general" section, where you will find the name of the quick action     : � ; ; �   8 .   C l i c k   " S e r v i c e s " .   S c r o l l   d o w n   t o   t h e   " g e n e r a l "   s e c t i o n ,   w h e r e   y o u   w i l l   f i n d   t h e   n a m e   o f   t h e   q u i c k   a c t i o n   8  < = < l     �� > ?��   >      you just saved.     ? � @ @ (         y o u   j u s t   s a v e d .   =  A B A l     �� C D��   C j d 9. Double click on the "none" text in the same row as your service  to assign a keyboard shortcut.     D � E E �   9 .   D o u b l e   c l i c k   o n   t h e   " n o n e "   t e x t   i n   t h e   s a m e   r o w   a s   y o u r   s e r v i c e     t o   a s s i g n   a   k e y b o a r d   s h o r t c u t .   B  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J @ : Be warned that the tabs reload each time you move them...    K � L L t   B e   w a r n e d   t h a t   t h e   t a b s   r e l o a d   e a c h   t i m e   y o u   m o v e   t h e m . . . I  M N M l     ��������  ��  ��   N  O�� O l    X P���� P O    X Q R Q O    W S T S k    V U U  V W V r     X Y X n     Z [ Z 1    ��
�� 
pidx [ 1    ��
�� 
cTab Y o      ���� 0 currentindex   W  \ ] \ r     ^ _ ^ n     ` a ` m    ��
�� 
nmbr a 2   ��
�� 
bTab _ o      ���� 0 	totaltabs 	totalTabs ]  b�� b Z    V c d�� e c =    f g f o    ���� 0 currentindex   g o    ���� 0 	totaltabs 	totalTabs d k   ! 7 h h  i j i I  ! .�� k l
�� .coremovenull���     obj  k 4   ! %�� m
�� 
bTab m o   # $���� 0 currentindex   l �� n��
�� 
insh n 4   & *�� o
�� 
bTab o m   ( )���� ��   j  p�� p r   / 7 q r q 4   / 3�� s
�� 
bTab s m   1 2����  r 1   3 6��
�� 
cTab��  ��   e k   : V t t  u v u I  : K�� w x
�� .coremovenull���     obj  w 4   : >�� y
�� 
bTab y o   < =���� 0 currentindex   x �� z��
�� 
insh z n   ? G { | { 9   E G��
�� 
insl | 4   ? E�� }
�� 
bTab } l  A D ~���� ~ [   A D  �  o   A B���� 0 currentindex   � m   B C���� ��  ��  ��   v  ��� � r   L V � � � 4   L R�� �
�� 
bTab � l  N Q ����� � [   N Q � � � o   N O���� 0 currentindex   � m   O P���� ��  ��   � 1   R U��
�� 
cTab��  ��   T 4   �� �
�� 
cwin � m    ����  R m      � ��                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     X � �  O����  ��  ��   �   �  ���������������������
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
�� .coremovenull���     obj 
�� 
insl�� Y� U*�k/ M*�,�,E�O*�-�,E�O��  *��/�*�k/l 	O*�k/*�,FY *��/�*��k/�4l 	O*��k/*�,FUUascr  ��ޭ