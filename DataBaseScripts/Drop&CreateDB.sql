U S E   [ D B 1 - P r o j e c t ]  
 - - E s t a s   s o n   c o m o   o p c i o n e s   d e f a u l t   q u e   t r a e   e l   s e r v e r   p e r o   p a r a   q u e   e s t e n   i g u a l   m e j o r   l a s   p o n g o  
 B E G I N   T R A N S A C T I O N  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 S E T   A R I T H A B O R T   O N  
 S E T   N U M E R I C _ R O U N D A B O R T   O F F  
 S E T   C O N C A T _ N U L L _ Y I E L D S _ N U L L   O N  
 S E T   A N S I _ N U L L S   O N  
 S E T   A N S I _ P A D D I N G   O N  
 S E T   A N S I _ W A R N I N G S   O N  
 C O M M I T  
  
 - - C r e a t e   t a b l e s  
 B E G I N   T R A N S A C T I O N  
 G O  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ P e r c e n t a g e _ C C ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ P e r c e n t a g e _ C C  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 P e r c e n t a g e V a l u e   R E A L   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ M o r a t o r y I n t e r e s t _ C C ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ M o r a t o r y I n t e r e s t _ C C  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 A m o u n t   m o n e y   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ C o n s u m p t i o n _ C C ;  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ C o m s u m p t i o n _ C C ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ C o n s u m p t i o n _ C C  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 C o n s u m p t i o n M 3   M O N E Y   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ F i x e d _ C C ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ F i x e d _ C C  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 A m o u n t   m o n e y   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ C C _ o n P r o p e r t i e s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ C C _ o n P r o p e r t i e s  
 	 (  
 	 I d   i n t   N O T   N U L L   I D E N T I T Y   ( 1 ,   1 ) ,  
 	 I d _ P r o p e r t y   i n t   N O T   N U L L ,  
 	 I d _ C h a r g e C o n c e p t   i n t   N O T   N U L L ,  
 	 B e g i n D a t e   d a t e   N O T   N U L L ,  
 	 E n d D a t e   d a t e     N U L L ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ P r o p e r t i e s U s e r s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ P r o p e r t i e s U s e r s  
 	 (  
 	 I d   i n t   N O T   N U L L   I D E N T I T Y   ( 1 ,   1 ) ,  
 	 I d _ P r o p e r t y   i n t   N O T   N U L L ,  
 	 I d _ U s e r   i n t   N O T   N U L L ,  
 	 C O N S T R A I N T   A K _ P r o p e r t y U s e r s I D s   U N I Q U E ( I d _ P r o p e r t y , I d _ U s e r ) ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ P r o p e r t y O w n e r s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ P r o p e r t y O w n e r s  
 	 (  
 	 I d   i n t   N O T   N U L L   I D E N T I T Y   ( 1 ,   1 ) ,  
 	 I d _ P r o p e r t y   i n t   N O T   N U L L ,  
 	 I d _ O w n e r   i n t   N O T   N U L L ,  
 	 C O N S T R A I N T   A K _ P r o p e r t y O w n e r s I D s   U N I Q U E ( I d _ P r o p e r t y , I d _ O w n e r ) ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ L e g a l O w n e r s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ L e g a l O w n e r s  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 R e s p o n s i b l e N a m e   v a r c h a r ( 5 0 )   N O T   N U L L ,  
 	 I d _ R e s p _ D o c T y p e   i n t   N O T   N U L L ,  
 	 R e s p _ D o c V a l u e   V A R C H A R ( 3 0 )   N O T   N U L L ,  
 	 C O N S T R A I N T   A K _ R e s p _ D o c V a l u e   U N I Q U E ( R e s p _ D o c V a l u e , I d _ R e s p _ D o c T y p e ) ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ O w n e r s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ O w n e r s  
 	 (  
 	 I d   i n t   N O T   N U L L   I D E N T I T Y   ( 1 ,   1 ) ,  
 	 N a m e   v a r c h a r ( 5 0 )   N O T   N U L L ,  
 	 I d _ D o c T y p e   i n t   N O T   N U L L ,  
 	 D o c V a l u e   V A R C H A R ( 3 0 )   N O T   N U L L ,  
 	 C O N S T R A I N T   A K _ D o c V a l u e   U N I Q U E ( D o c V a l u e , I d _ D o c T y p e ) ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ C h a r g e C o n c e p t s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ C h a r g e C o n c e p t s  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 N a m e   v a r c h a r ( 5 0 )   N O T   N U L L ,  
 	 M o r a t o r y I n t e r e s t R a t e   r e a l   N O T   N U L L ,  
 	 R e c i p t E m i s i o n D a y   t i n y i n t   N O T   N U L L ,  
 	 E x p i r a t i o n D a y s   t i n y i n t   N O T   N U L L ,  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ U s e r s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ U s e r s  
 	 (  
 	 I d   i n t   N O T   N U L L   I D E N T I T Y   ( 1 ,   1 ) ,  
 	 U s e r n a m e   v a r c h a r ( 5 0 )   N O T   N U L L ,  
 	 C O N S T R A I N T   A K _ U s e r n a m e   U N I Q U E ( U s e r n a m e ) ,  
 	 P a s s w o r d   v a r c h a r ( 5 0 )   N O T   N U L L ,  
 	 U s e r T y p e   b i t   N O T   N U L L ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ P r o p e r t i e s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ P r o p e r t i e s  
 	 (  
 	 I d   i n t   N O T   N U L L   I D E N T I T Y   ( 1 ,   1 ) ,  
 	 V a l u e   m o n e y   N O T   N U L L ,  
 	 A d d r e s s   v a r c h a r ( 1 0 0 )   N O T   N U L L ,  
 	 P r o p e r t y N u m b e r   i n t   N O T   N U L L ,  
 	 C O N S T R A I N T   A K _ P r o p e r t y N u m b e r   U N I Q U E ( P r o p e r t y N u m b e r ) ,  
 	 A c t i v e   b i t   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
  
 D R O P   T A B L E   I F   E X I S T S   d b o . D B 1 P _ D o c _ I d _ T y p e s ;  
 C R E A T E   T A B L E   d b o . D B 1 P _ D o c _ I d _ T y p e s  
 	 (  
 	 I d   i n t   N O T   N U L L ,  
 	 N a m e   v a r c h a r ( 5 0 )   N O T   N U L L  
 	 )     O N   [ P R I M A R Y ]  
 G O  
 C O M M I T  
 - - A d d s   f o r e i n g   k e y s  
 B E G I N   T R A N S A C T I O N  
 G O  
  
 A L T E R   T A B L E   d b o . D B 1 P _ U s e r s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ U s e r s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ U s e r s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )   - - C u a n d o   h a c e   u n   q u e r r y   h a c e   l o c k   a   t o d a   l a   t a b l a   e n   v e z   d e   s o l o   u n a   p a r t e   p a r a   s e r   m a s   e f i c i e n t e ( s a l i a   d e f a u l t )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ D o c _ I d _ T y p e s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ D o c _ I d _ T y p e s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ D o c _ I d _ T y p e s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ O w n e r s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ O w n e r s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ O w n e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ O w n e r s _ D B 1 P _ D o c _ I d _ T y p e s   F O R E I G N   K E Y  
 	 (  
 	 I d _ D o c T y p e  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ D o c _ I d _ T y p e s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
  
 A L T E R   T A B L E   d b o . D B 1 P _ O w n e r s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ L e g a l O w n e r s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ L e g a l O w n e r s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ L e g a l O w n e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ L e g a l O w n e r s _ D B 1 P _ O w n e r s   F O R E I G N   K E Y  
 	 (  
 	 I d  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ O w n e r s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 	  
 A L T E R   T A B L E   d b o . D B 1 P _ L e g a l O w n e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ L e g a l O w n e r s _ D B 1 P _ D o c _ I d _ T y p e s   F O R E I G N   K E Y  
 	 (  
 	 I d _ R e s p _ D o c T y p e  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ D o c _ I d _ T y p e s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
  
 A L T E R   T A B L E   d b o . D B 1 P _ L e g a l O w n e r s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t i e s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ P r o p e r t i e s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t i e s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t i e s U s e r s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ P r o p e r t i e s U s e r s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t i e s U s e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ P r o p e r t i e s U s e r s _ D B 1 P _ U s e r s   F O R E I G N   K E Y  
 	 (  
 	 I d _ U s e r  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ U s e r s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t i e s U s e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ P r o p e r t i e s U s e r s _ D B 1 P _ P r o p e r t i e s   F O R E I G N   K E Y  
 	 (  
 	 I d _ P r o p e r t y  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ P r o p e r t i e s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t i e s U s e r s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t y O w n e r s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ P r o p e r t y O w n e r s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t y O w n e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ P r o p e r t y O w n e r s _ D B 1 P _ P r o p e r t i e s   F O R E I G N   K E Y  
 	 (  
 	 I d _ P r o p e r t y  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ P r o p e r t i e s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t y O w n e r s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ P r o p e r t y O w n e r s _ D B 1 P _ O w n e r s   F O R E I G N   K E Y  
 	 (  
 	 I d _ O w n e r  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ O w n e r s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
  
 A L T E R   T A B L E   d b o . D B 1 P _ P r o p e r t y O w n e r s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ C h a r g e C o n c e p t s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ C h a r g e C o n c e p t s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ C h a r g e C o n c e p t s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ C C _ o n P r o p e r t i e s   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ C C _ o n P r o p e r t i e s   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ C C _ o n P r o p e r t i e s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ C C _ o n P r o p e r t i e s _ D B 1 P _ C h a r g e C o n c e p t s   F O R E I G N   K E Y  
 	 (  
 	 I d _ C h a r g e C o n c e p t  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ C h a r g e C o n c e p t s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 A L T E R   T A B L E   d b o . D B 1 P _ C C _ o n P r o p e r t i e s   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ C C _ o n P r o p e r t i e s _ D B 1 P _ P r o p e r t i e s   F O R E I G N   K E Y  
 	 (  
 	 I d _ P r o p e r t y  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ P r o p e r t i e s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 	  
 A L T E R   T A B L E   d b o . D B 1 P _ C C _ o n P r o p e r t i e s   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P e r c e n t a g e _ C C   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ P e r c e n t a g e _ C C   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ P e r c e n t a g e _ C C   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ P e r c e n t a g e _ C C _ D B 1 P _ C h a r g e C o n c e p t s   F O R E I G N   K E Y  
 	 (  
 	 I d  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ C h a r g e C o n c e p t s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 	  
 A L T E R   T A B L E   d b o . D B 1 P _ P e r c e n t a g e _ C C   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ M o r a t o r y I n t e r e s t _ C C   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ M o r a t o r y I n t e r e s t _ C C   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ M o r a t o r y I n t e r e s t _ C C   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ M o r a t o r y I n t e r e s t _ C C _ D B 1 P _ C h a r g e C o n c e p t s   F O R E I G N   K E Y  
 	 (  
 	 I d  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ C h a r g e C o n c e p t s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 	  
 A L T E R   T A B L E   d b o . D B 1 P _ M o r a t o r y I n t e r e s t _ C C   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ C o n s u m p t i o n _ C C   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ C o n s u m p t i o n _ C C   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ C o n s u m p t i o n _ C C   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ C o n s u m p t i o n _ C C _ D B 1 P _ C h a r g e C o n c e p t s   F O R E I G N   K E Y  
 	 (  
 	 I d  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ C h a r g e C o n c e p t s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 	  
 A L T E R   T A B L E   d b o . D B 1 P _ C o n s u m p t i o n _ C C   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
  
 A L T E R   T A B L E   d b o . D B 1 P _ F i x e d _ C C   A D D   C O N S T R A I N T  
 	 P K _ D B 1 P _ F i x e d _ C C   P R I M A R Y   K E Y   C L U S T E R E D    
 	 (  
 	 I d  
 	 )   W I T H (   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
  
 A L T E R   T A B L E   d b o . D B 1 P _ F i x e d _ C C   A D D   C O N S T R A I N T  
 	 F K _ D B 1 P _ F i x e d _ C C _ D B 1 P _ C h a r g e C o n c e p t s   F O R E I G N   K E Y  
 	 (  
 	 I d  
 	 )   R E F E R E N C E S   d b o . D B 1 P _ C h a r g e C o n c e p t s  
 	 (  
 	 I d  
 	 )   O N   U P D A T E     N O   A C T I O N    
 	   O N   D E L E T E     N O   A C T I O N    
 	  
 A L T E R   T A B L E   d b o . D B 1 P _ F i x e d _ C C   S E T   ( L O C K _ E S C A L A T I O N   =   T A B L E )  
 G O  
 C O M M I T 