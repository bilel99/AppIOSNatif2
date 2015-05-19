//
//  ViewController.h
//  FRadvN8
//
//  Created by Bilel on 18/03/2015.
//  Copyright (c) 2015 Bilel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController




/***
 ** Composent de base pour lancer l'application
 **/
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom1;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom2;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom3;
@property (strong, nonatomic) IBOutlet UIImageView *ref;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom4;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom5;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom6;

/***
 ** Les page d'apres l'animation
 **/
@property (strong, nonatomic) IBOutlet UIImageView *page9C;
@property (strong, nonatomic) IBOutlet UIImageView *page15C;





/***
 ** Les tableau O-C
 **/
@property (strong, nonatomic) NSArray *imageArray;



/***
 ** var Button
 ***/
@property (strong, nonatomic) IBOutlet UIButton *varHome1;
@property (strong, nonatomic) IBOutlet UIButton *varInnovation1;
@property (strong, nonatomic) IBOutlet UIButton *varPerformance1;
@property (strong, nonatomic) IBOutlet UIButton *varPurete1;
@property (strong, nonatomic) IBOutlet UIButton *varTransportabilite1;
@property (strong, nonatomic) IBOutlet UIButton *varBonUsage1;
@property (strong, nonatomic) IBOutlet UIButton *varResume1;

/***
 ** Var button suppl et zoom et ImageView
 **/
@property (strong, nonatomic) IBOutlet UIImageView *imageRefFoot2;
@property (strong,nonatomic) IBOutlet UIImageView *imageRefFoot;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap1;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap2;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap3;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap4;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap5;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap6;

@property (strong, nonatomic) IBOutlet UIButton *exitZoom1;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom2;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom3;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom4;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom5;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom6;


/***
 ** Action ButtonREF et Var Ref
 **/
@property (strong, nonatomic) IBOutlet UIButton *varRefButton;
- (IBAction)showRefButton:(id)sender;




// UIView
@property (strong, nonatomic) IBOutlet UIView *containerView;

@property (strong, nonatomic) IBOutlet UIView *containerVieww;
@property (strong, nonatomic) IBOutlet UIView *containerViewwB;
@property (strong, nonatomic) IBOutlet UIView *containerViewwC;
@property (strong, nonatomic) IBOutlet UIView *containerViewwD;

@property (strong, nonatomic) IBOutlet UIView *compteur1;
@property (strong, nonatomic) IBOutlet UIView *compteur2;
@property (strong, nonatomic) IBOutlet UIView *compteur3;
@property (strong, nonatomic) IBOutlet UIView *compteur4;






/***
 ** LES ANIMATIONS
 **/
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView1;
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView2;
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView3;
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView4;

@property (strong, nonatomic) IBOutlet UIImageView *compteurA;
@property (strong, nonatomic) IBOutlet UIImageView *compteurB;
@property (strong, nonatomic) IBOutlet UIImageView *compteurC;
@property (strong, nonatomic) IBOutlet UIImageView *compteurD;





/***
 ** LES TIMER
 ***/
@property (strong, nonatomic) IBOutlet NSTimer *tmpDebut1;
@property (strong, nonatomic) IBOutlet NSTimer *tmpDebut2;
@property (strong, nonatomic) IBOutlet NSTimer *tmpImg1;
@property (strong, nonatomic) IBOutlet NSTimer *tmpImg2;





/* Page Control */
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;




/***
 ** TIMER VIDEO and ...
 **/
@property (strong, nonatomic) IBOutlet NSTimer *tzoomTime;
@property (strong, nonatomic) IBOutlet UIView *tzoom;
@property (strong, nonatomic) IBOutlet UIButton *btnPause;







/***
 ** Les animation de la page 21
 **/
@property (strong, nonatomic) IBOutlet NSTimer *t1;
@property (strong, nonatomic) IBOutlet NSTimer *t2;
@property (strong, nonatomic) IBOutlet NSTimer *t3;
@property (strong, nonatomic) IBOutlet NSTimer *t4;
@property (strong, nonatomic) IBOutlet NSTimer *t5;

@property (strong, nonatomic) IBOutlet UIImageView *icoo1;
@property (strong, nonatomic) IBOutlet UIImageView *icoo2;
@property (strong, nonatomic) IBOutlet UIImageView *icoo3;
@property (strong, nonatomic) IBOutlet UIImageView *icoo4;
@property (strong, nonatomic) IBOutlet UIImageView *icoo5;







/* Methode */
-(void) scrollToImageIndex:(int)index;


@end
