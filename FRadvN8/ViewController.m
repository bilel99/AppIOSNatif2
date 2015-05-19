//
//  ViewController.m
//  FRadvN8
//
//  Created by Bilel on 18/03/2015.
//  Copyright (c) 2015 Bilel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate> {
    MPMoviePlayerController *mpc;
}

@end

@implementation ViewController
@synthesize scrollView;
@synthesize imageArray;
@synthesize imageView;
@synthesize imageZoom1;
@synthesize imageZoom2;
@synthesize imageZoom3;
@synthesize imageZoom4;
@synthesize imageZoom5;
@synthesize imageZoom6;
@synthesize ref;

@synthesize varHome1;
@synthesize varInnovation1;
@synthesize varBonUsage1;
@synthesize varPurete1;
@synthesize varPerformance1;
@synthesize varRefButton;
@synthesize varResume1;
@synthesize varTransportabilite1;

@synthesize imageRefFoot;
@synthesize imageRefFoot2;
@synthesize zoomMap1;
@synthesize zoomMap2;
@synthesize zoomMap3;
@synthesize zoomMap4;
@synthesize zoomMap5;
@synthesize zoomMap6;
@synthesize exitZoom1;
@synthesize exitZoom2;
@synthesize exitZoom3;
@synthesize exitZoom4;
@synthesize exitZoom5;
@synthesize exitZoom6;

@synthesize tzoomTime;
@synthesize tzoom;
@synthesize btnPause;

@synthesize containerView;

@synthesize tmpDebut1;
@synthesize tmpDebut2;
@synthesize tmpImg1;
@synthesize tmpImg2;
@synthesize animatedImageView1;
@synthesize animatedImageView2;
@synthesize animatedImageView3;
@synthesize animatedImageView4;
@synthesize compteur1;
@synthesize compteur2;
@synthesize compteur3;
@synthesize compteur4;
@synthesize compteurA;
@synthesize compteurB;
@synthesize compteurC;
@synthesize compteurD;
@synthesize containerVieww;
@synthesize containerViewwB;
@synthesize containerViewwC;
@synthesize containerViewwD;
@synthesize page15C;
@synthesize page9C;



@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;

@synthesize icoo1;
@synthesize icoo2;
@synthesize icoo3;
@synthesize icoo4;
@synthesize icoo5;




@synthesize pageControl;






- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Création du ScrollView //
    //Put the names of our image files in our array.
    imageArray = [[NSArray alloc] initWithObjects:@"page1.jpg",@"page2.jpg",@"page3.jpg",@"page6.jpg",@"page5.jpg",@"page4.jpg",@"page7.jpg",@"page8.jpg",@"page9.jpg",@"page10.jpg",@"page11.png",@"page12.png",@"page13.png",@"page14.png",@"page15.png",@"page16.jpg",@"page17.png",@"page18.png",@"page19.png",@"page20.png",@"pagePurAll.png",@"page22.png",@"page23.png",@"page24.png",@"page25.jpg",@"page26.jpg",@"page27.jpg",@"page28.png", @"page29.png", @"page30.png", @"page31.png", nil];
    
    
    
    //Set the content size of our scrollview according to the total width of our imageView objects.
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
    
    
    
    self.scrollView.pagingEnabled = YES;
    
    
    for (int i = 0; i < [imageArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [self.scrollView addSubview:imageView];
        
    }
    
    
    /* PLACEMENT DES BUTTON SUR LES DIFFERENT PAGE */
    
    
    //////////////ZOOM1
    CGRect targetFrame = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth = 100.0;
    CGFloat buttonHeight = 100.0;
    
    CGRect buttonFrame = CGRectMake(targetFrame.origin.x + 960 - buttonWidth / 2, targetFrame.origin.y + 440 - buttonHeight / 2, buttonWidth, buttonHeight);
    
    zoomMap1 = [ [ UIButton alloc] initWithFrame : buttonFrame ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap1 setTitle:@"" forState:UIControlStateNormal];
    [zoomMap1 addTarget:self action:@selector(zoomMap1:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap1 ];
    
    
    
    
    
    //////////////ZOOM2
    CGRect targetFrame2 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth2 = 100.0;
    CGFloat buttonHeight2 = 100.0;
    
    CGRect buttonFrame2 = CGRectMake(targetFrame2.origin.x + 960 - buttonWidth2 / 2, targetFrame2.origin.y + 440 - buttonHeight2 / 2, buttonWidth2, buttonHeight2);
    
    zoomMap2 = [ [ UIButton alloc] initWithFrame : buttonFrame2 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap2 setTitle:@"" forState:UIControlStateNormal];
    [zoomMap2 addTarget:self action:@selector(zoomMap2:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap2 ];
    
    
    
    
    //////////////ZOOM3
    CGRect targetFrame3 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth3 = 100.0;
    CGFloat buttonHeight3 = 100.0;
    
    CGRect buttonFrame3 = CGRectMake(targetFrame3.origin.x + 960 - buttonWidth3 / 2, targetFrame3.origin.y + 440 - buttonHeight3 / 2, buttonWidth3, buttonHeight3);
    
    zoomMap3 = [ [ UIButton alloc] initWithFrame : buttonFrame3 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap3 setTitle:@"" forState:UIControlStateNormal];
    [zoomMap3 addTarget:self action:@selector(zoomMap3:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap3 ];
    
    
    
    //////////////ZOOM4
    CGRect targetFrame4 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth4 = 100.0;
    CGFloat buttonHeight4 = 100.0;
    
    CGRect buttonFrame4 = CGRectMake(targetFrame4.origin.x + 960 - buttonWidth4 / 2, targetFrame4.origin.y + 440 - buttonHeight4 / 2, buttonWidth4, buttonHeight4);
    
    zoomMap4 = [ [ UIButton alloc] initWithFrame : buttonFrame4 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap4 setTitle:@"" forState:UIControlStateNormal];
    [zoomMap4 addTarget:self action:@selector(zoomMap4:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap4 ];
    
    
    
    //////////////ZOOM5
    CGRect targetFrame5 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth5 = 100.0;
    CGFloat buttonHeight5 = 100.0;
    
    CGRect buttonFrame5 = CGRectMake(targetFrame5.origin.x + 315 - buttonWidth5 / 2, targetFrame5.origin.y + 610 - buttonHeight5 / 2, buttonWidth5, buttonHeight5);
    
    zoomMap5 = [ [ UIButton alloc] initWithFrame : buttonFrame5 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap5 setTitle:@"" forState:UIControlStateNormal];
    [zoomMap5 addTarget:self action:@selector(zoomMap5:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap5 ];
    
    
    
    //////////////ZOOM6
    CGRect targetFrame6 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth6 = 100.0;
    CGFloat buttonHeight6 = 100.0;
    
    CGRect buttonFrame6 = CGRectMake(targetFrame6.origin.x + 715 - buttonWidth6 / 2, targetFrame6.origin.y + 610 - buttonHeight6 / 2, buttonWidth6, buttonHeight6);
    
    zoomMap6 = [ [ UIButton alloc] initWithFrame : buttonFrame6 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap6 setTitle:@"" forState:UIControlStateNormal];
    [zoomMap6 addTarget:self action:@selector(zoomMap6:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap6 ];
    
    
    
    
    
    // MINI REF //
    CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth = 270.0;
    CGFloat imageRefHeight = 9.0;
    
    CGRect imgRef = CGRectMake(refTarget.origin.x + 509 - ImageRefWidth / 2, refTarget.origin.y + 726 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
    
    imageRefFoot = [[UIImageView alloc] initWithFrame:imgRef];
    imageRefFoot.image=[UIImage imageNamed:@"refff_03.png"];
    [self.view addSubview:imageRefFoot];
    
    
    // MINI REF2 //
    CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth2 = 600.0;
    CGFloat imageRefHeight2 = 10.0;
    
    CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
    
    imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
    imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
    [self.view addSubview:imageRefFoot2];
    
    
    
    
    
    /***
     ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
     **/
    
    // Button acceuil Gris
    varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varHome1.frame = CGRectMake(17, 6, 50, 45);
    [varHome1 setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateNormal];
    [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varHome1];
    
    
    
    // Button innovation Vert
    varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varInnovation1.frame = CGRectMake(75, 6, 149, 45);
    [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
    [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varInnovation1];
    
    
    // Bouton performance vert
    varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varPerformance1.frame = CGRectMake(232, 6, 149, 45);
    [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
    [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varPerformance1];
    
    
    // Bouton purete
    varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varPurete1.frame = CGRectMake(389, 6, 149, 45);
    [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
    [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varPurete1];
    
    
    // Bouton transportabilite
    varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
    [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
    [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varTransportabilite1];
    
    
    // Button bonUsage
    varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
    [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
    [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varBonUsage1];
    
    
    // Bouton resume
    varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varResume1.frame = CGRectMake(860, 6, 149, 45);
    [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
    [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varResume1];
    
    
    
    
    
    
}



-(void)scrollToImageIndex:(int)index
{
    CGRect desiredVisibleRect = CGRectMake(self.scrollView.frame.size.width * index,
                                           0.0,
                                           self.scrollView.frame.size.width,
                                           self.scrollView.frame.size.height);
    
    [self.scrollView scrollRectToVisible:desiredVisibleRect animated:YES];
}









- (void)moveImage:(UIImageView *)image duration:(NSTimeInterval)duration
            curve:(int)curve x:(CGFloat)x y:(CGFloat)y
{
    
    // Setup the animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationCurve:curve];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    // The transform matrix
    CGAffineTransform transform = CGAffineTransformMakeTranslation(x, y);
    image.transform = transform;
    
    // Commit the changes
    [UIView commitAnimations];
    
}











/***
 ** En géneral
 **/
-(void)removeObject{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
}







/***
 ** Les pages du scrollView
 **/
-(void)removeObject0{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    
}

-(void)removeObject1{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject2{
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject3{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject4{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject5{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject6{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject7{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject8{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject9{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    tmpDebut2 = nil;
    tmpImg2 = nil;
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    page15C.image = nil;
    [tmpDebut2 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject10{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    tmpDebut2 = nil;
    tmpImg2 = nil;
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    page15C.image = nil;
    [tmpDebut2 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject11{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    tmpDebut2 = nil;
    tmpImg2 = nil;
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    page15C.image = nil;
    [tmpDebut2 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject12{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    tmpDebut2 = nil;
    tmpImg2 = nil;
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    page15C.image = nil;
    [tmpDebut2 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject13{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    tmpDebut2 = nil;
    tmpImg2 = nil;
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    page15C.image = nil;
    [tmpDebut2 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject14{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    tmpDebut2 = nil;
    tmpImg2 = nil;
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    page15C.image = nil;
    [tmpDebut2 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject15{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
}


-(void)removeObject16{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    tmpDebut1 = nil;
    tmpImg1 = nil;
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    compteurA.image = nil;
    compteurB.image = nil;
    page9C.image = nil;
    [tmpDebut1 invalidate];
    [tmpImg1 invalidate];
}


-(void)removeObject17{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    tmpDebut1 = nil;
    tmpImg1 = nil;
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    compteurA.image = nil;
    compteurB.image = nil;
    page9C.image = nil;
    [tmpDebut1 invalidate];
    [tmpImg1 invalidate];
}


-(void)removeObject18{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    tmpDebut1 = nil;
    tmpImg1 = nil;
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    compteurA.image = nil;
    compteurB.image = nil;
    page9C.image = nil;
    [tmpDebut1 invalidate];
    [tmpImg1 invalidate];
    
    
}


-(void)removeObject19{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    tmpDebut1 = nil;
    tmpImg1 = nil;
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    compteurA.image = nil;
    compteurB.image = nil;
    page9C.image = nil;
    [tmpDebut1 invalidate];
    [tmpImg1 invalidate];
}


-(void)removeObject20{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    tmpDebut1 = nil;
    tmpImg1 = nil;
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    compteurA.image = nil;
    compteurB.image = nil;
    page9C.image = nil;
    [tmpDebut1 invalidate];
    [tmpImg1 invalidate];
}


-(void)removeObject21{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    tmpDebut1 = nil;
    tmpImg1 = nil;
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    compteurA.image = nil;
    compteurB.image = nil;
    page9C.image = nil;
    [tmpDebut1 invalidate];
    [tmpImg1 invalidate];
}


-(void)removeObject22{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject23{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject24{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject25{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject26{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject27{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject28{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject29{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObject30{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [varHome1 removeFromSuperview];
    [varInnovation1 removeFromSuperview];
    [varPerformance1 removeFromSuperview];
    [varPurete1 removeFromSuperview];
    [varTransportabilite1 removeFromSuperview];
    [varBonUsage1 removeFromSuperview];
    [varResume1 removeFromSuperview];
    [imageRefFoot removeFromSuperview];
    [imageRefFoot2 removeFromSuperview];
    [pageControl removeFromSuperview];
    
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    
    page9C.image = nil;
    page15C.image = nil;
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}







/***
 ** Les Button de navigation
 **/
-(void)removeObjectbtn1{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObjectbtn2{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObjectbtn3{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObjectbtn4{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObjectbtn5{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObjectbtn6{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}


-(void)removeObjectbtn7{
    [tzoomTime invalidate];
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
}





/***
 ** Disparition de l'objet instantanée
 **/
-(void)removeObjectEl{
    [tzoom removeFromSuperview];
    [containerView removeFromSuperview];
    imageZoom1.image = nil;
    imageZoom2.image = nil;
    imageZoom3.image = nil;
    imageZoom4.image = nil;
    imageZoom5.image = nil;
    imageZoom6.image = nil;
    
    
    
 
    
    
    
    
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    [compteurA removeFromSuperview];
    [compteurB removeFromSuperview];
    [compteurC removeFromSuperview];
    [compteurD removeFromSuperview];
    
    page9C.image = nil;
    [page9C removeFromSuperview];
    page15C.image = nil;
    [page15C removeFromSuperview];
    
    
    
}




















- (void) animationT1
{
    CGRect rT1 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW1 = 152;
    CGFloat IRH1 = 360;
    
    CGRect IR1 = CGRectMake(rT1.origin.x + 1080 - IRW1 / 2, rT1.origin.y + 470 - IRH1 / 2, IRW1, IRH1);
    
    icoo1 = [[UIImageView alloc] initWithFrame:IR1];
    icoo1.image=[UIImage imageNamed:@"pimgtV325_03.png"];
    [self.scrollView addSubview:icoo1];
    
    // Move the image
    [self moveImage:icoo1 duration:1.0
              curve:UIViewAnimationCurveLinear x:-955.0 y:0.0];
}





- (void) animationT2
{
    CGRect rT2 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW2 = 180;
    CGFloat IRH2 = 360;
    
    CGRect IR2 = CGRectMake(rT2.origin.x + 1080 - IRW2 / 2, rT2.origin.y + 470 - IRH2 / 2, IRW2, IRH2);
    
    icoo2 = [[UIImageView alloc] initWithFrame:IR2];
    icoo2.image=[UIImage imageNamed:@"pimgtV325_05.png"];
    [self.scrollView addSubview:icoo2];
    
    // Move the image
    [self moveImage:icoo2 duration:1.0
              curve:UIViewAnimationCurveLinear x:-761.0 y:0.0];
}





- (void) animationT3
{
    CGRect rT3 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW3 = 152;
    CGFloat IRH3 = 360;
    
    CGRect IR3 = CGRectMake(rT3.origin.x + 1080 - IRW3 / 2, rT3.origin.y + 470 - IRH3 / 2, IRW3, IRH3);
    
    icoo3 = [[UIImageView alloc] initWithFrame:IR3];
    icoo3.image=[UIImage imageNamed:@"pimgtV325_07.png"];
    [self.scrollView addSubview:icoo3];
    
    // Move the image
    [self moveImage:icoo3 duration:1.0
              curve:UIViewAnimationCurveLinear x:-567.0 y:0.0];
}





- (void) animationT4
{
    CGRect rT4 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW4 = 205;
    CGFloat IRH4 = 360;
    
    CGRect IR4 = CGRectMake(rT4.origin.x + 1080 - IRW4 / 2, rT4.origin.y + 470 - IRH4 / 2, IRW4, IRH4);
    
    icoo4 = [[UIImageView alloc] initWithFrame:IR4];
    icoo4.image=[UIImage imageNamed:@"pimgtV325_09.png"];
    [self.scrollView addSubview:icoo4];
    
    // Move the image
    [self moveImage:icoo4 duration:1.0
              curve:UIViewAnimationCurveLinear x:-361.0 y:0.0];
}





- (void) animationT5
{
    CGRect rT5 = CGRectMake ( self.scrollView.frame.size.width * 20, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW5 = 124;
    CGFloat IRH5 = 360;
    
    CGRect IR5 = CGRectMake(rT5.origin.x + 1080 - IRW5 / 2, rT5.origin.y + 470 - IRH5 / 2, IRW5, IRH5);
    
    icoo5 = [[UIImageView alloc] initWithFrame:IR5];
    icoo5.image=[UIImage imageNamed:@"pimgtV325_11.png"];
    [self.scrollView addSubview:icoo5];
    
    // Move the image
    [self moveImage:icoo5 duration:1.0
              curve:UIViewAnimationCurveLinear x:-167.0 y:0.0];
}

























/***
 ** Animation Cercle Anim + Timer
 **/
- (void) cerclePage9 {
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    compteurA.image = nil;
    compteurB.image = nil;
    [compteurA removeFromSuperview];
    [compteurB removeFromSuperview];
    
    page9C.image = nil;
    [page9C removeFromSuperview];
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerVieww = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerVieww.frame = CGRectMake(20, 100, 10, 10);
    [containerVieww setBackgroundColor:[UIColor clearColor]];
    [containerVieww setTag:1112];
    
    
    
    // REFF //
    
    animatedImageView1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView1.frame = CGRectMake(161, 230, 115, 115);
    animatedImageView1.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],nil];
    animatedImageView1.animationDuration = 1.0f;
    animatedImageView1.animationRepeatCount = 1;
    [animatedImageView1 startAnimating];
    [containerVieww addSubview:animatedImageView1];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerVieww];
    
    
    
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur1 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur1.frame = CGRectMake(20, 100, 10, 10);
    [compteur1 setBackgroundColor:[UIColor clearColor]];
    [compteur1 setTag:1211];
    
    
    
    // REFF //
    
    compteurA = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurA.frame = CGRectMake(161, 230, 115, 115);
    compteurA.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"808.png"],nil];
    compteurA.animationDuration = 1.0f;
    compteurA.animationRepeatCount = 1;
    [compteurA startAnimating];
    [compteur1 addSubview:compteurA];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur1];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerViewwB = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerViewwB.frame = CGRectMake(20, 100, 10, 10);
    [containerViewwB setBackgroundColor:[UIColor clearColor]];
    [containerViewwB setTag:1121];
    
    
    
    // REFF //
    
    animatedImageView2 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView2.frame = CGRectMake(465, 230, 115, 115);
    animatedImageView2.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],
                                          [UIImage imageNamed:@"cercle20.png"],nil];
    animatedImageView2.animationDuration = 1.0f;
    animatedImageView2.animationRepeatCount = 1;
    [animatedImageView2 startAnimating];
    [containerViewwB addSubview:animatedImageView2];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerViewwB];
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur2 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur2.frame = CGRectMake(20, 100, 10, 10);
    [compteur2 setBackgroundColor:[UIColor clearColor]];
    [compteur2 setTag:1212];
    
    
    
    // REFF //
    
    compteurB = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurB.frame = CGRectMake(465, 230, 115, 115);
    compteurB.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"893.png"],nil];
    compteurB.animationDuration = 1.0f;
    compteurB.animationRepeatCount = 1;
    [compteurB startAnimating];
    [compteur2 addSubview:compteurB];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur2];
    
    
    
    
    
    
    
    
}








- (void) cerclePage15 {
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    compteurC.image = nil;
    compteurD.image = nil;
    [compteurC removeFromSuperview];
    [compteurD removeFromSuperview];
    
    page15C.image = nil;
    [page15C removeFromSuperview];
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerViewwC = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerViewwC.frame = CGRectMake(20, 100, 10, 10);
    [containerViewwC setBackgroundColor:[UIColor clearColor]];
    [containerViewwC setTag:1122];
    
    
    
    // REFF //
    
    animatedImageView3 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView3.frame = CGRectMake(161, 230, 115, 115);
    animatedImageView3.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],
                                          [UIImage imageNamed:@"cercle20.png"],
                                          [UIImage imageNamed:@"cercle21.png"],nil];
    animatedImageView3.animationDuration = 1.0f;
    animatedImageView3.animationRepeatCount = 1;
    [animatedImageView3 startAnimating];
    [containerViewwC addSubview:animatedImageView3];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerViewwC];
    
    
    
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur3 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur3.frame = CGRectMake(20, 100, 10, 10);
    [compteur3 setBackgroundColor:[UIColor clearColor]];
    [compteur3 setTag:1213];
    
    
    
    // REFF //
    
    compteurC = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurC.frame = CGRectMake(161, 230, 115, 115);
    compteurC.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"90.png"],
                                 [UIImage imageNamed:@"921.png"],nil];
    compteurC.animationDuration = 1.0f;
    compteurC.animationRepeatCount = 1;
    [compteurC startAnimating];
    [compteur3 addSubview:compteurC];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur3];
    
    
    
    
    
    
    
    
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerViewwD = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerViewwD.frame = CGRectMake(20, 100, 10, 10);
    [containerViewwD setBackgroundColor:[UIColor clearColor]];
    [containerViewwD setTag:1123];
    
    
    
    // REFF //
    
    animatedImageView4 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView4.frame = CGRectMake(465, 230, 115, 115);
    animatedImageView4.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],
                                          [UIImage imageNamed:@"cercle20.png"],
                                          [UIImage imageNamed:@"cercle21.png"],
                                          [UIImage imageNamed:@"cercle22.png"],nil];
    animatedImageView4.animationDuration = 1.0f;
    animatedImageView4.animationRepeatCount = 1;
    [animatedImageView4 startAnimating];
    [containerViewwD addSubview:animatedImageView4];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerViewwD];
    
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur4 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur4.frame = CGRectMake(20, 100, 10, 10);
    [compteur4 setBackgroundColor:[UIColor clearColor]];
    [compteur4 setTag:1215];
    
    
    
    // REFF //
    
    compteurD = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurD.frame = CGRectMake(465, 230, 115, 115);
    compteurD.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"90.png"],
                                 [UIImage imageNamed:@"953.png"],nil];
    compteurD.animationDuration = 1.0f;
    compteurD.animationRepeatCount = 1;
    [compteurD startAnimating];
    [compteur4 addSubview:compteurD];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur4];
    
    
    
}

- (void) departPage9 {
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    compteurA.image = nil;
    compteurB.image = nil;
    [compteurA removeFromSuperview];
    [compteurB removeFromSuperview];
    
    page9C.image = nil;
    [page9C removeFromSuperview];
    
    // REFF //
    
    CGRect page9C1 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth11 = 579.5;
    CGFloat RefHeight11 = 180;
    
    CGRect refTarget11 = CGRectMake(page9C1.origin.x + 338 - RefWidth11 / 2, page9C1.origin.y + 390 - RefHeight11 / 2, RefWidth11, RefHeight11);
    
    page9C = [[UIImageView alloc] initWithFrame:refTarget11];
    page9C.image=[UIImage imageNamed:@"page9CC.png"];
    [scrollView addSubview:page9C];
    
}

- (void) departPage15 {
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    compteurC.image = nil;
    compteurD.image = nil;
    [compteurC removeFromSuperview];
    [compteurD removeFromSuperview];
    
    page15C.image = nil;
    [page15C removeFromSuperview];
    
    // REFF //
    
    CGRect page15C2 = CGRectMake ( self.scrollView.frame.size.width * 18, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth22 = 579.5;
    CGFloat RefHeight22 = 180;
    
    CGRect refTarget22 = CGRectMake(page15C2.origin.x + 338 - RefWidth22 / 2, page15C2.origin.y + 387 - RefHeight22 / 2, RefWidth22, RefHeight22);
    
    page15C = [[UIImageView alloc] initWithFrame:refTarget22];
    page15C.image=[UIImage imageNamed:@"page15CC.png"];
    [scrollView addSubview:page15C];
    
}















































-(IBAction)showHome1:(id)sender{
    [self removeObjectbtn1];
    [self scrollToImageIndex:0];
    
    [sender setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateSelected];
}


-(IBAction)showInnovation1:(id)sender{
    [self removeObjectbtn2];
    [self scrollToImageIndex:1];
    
    [sender setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateSelected];
}


-(IBAction)showPerformance1:(id)sender{
    [self removeObjectbtn3];
    [self scrollToImageIndex:8];
    
    [sender setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateSelected];
}


-(IBAction)showPurete1:(id)sender{
    [self removeObjectbtn4];
    [self scrollToImageIndex:20];
    
    [sender setImage:[UIImage imageNamed:@"purete_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"purete_grey.jpg"] forState:UIControlStateSelected];
}


-(IBAction)showTransportabilite1:(id)sender{
    [self removeObjectbtn5];
    [self scrollToImageIndex:21];
    
    [sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}

-(IBAction)showBonUsage1:(id)sender{
    [self removeObjectbtn6];
    [self scrollToImageIndex:24];
    
    [sender setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateSelected];
}

-(IBAction)showResume1:(id)sender{
    [self removeObjectbtn7];
    [self scrollToImageIndex:27];
    
    [sender setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateSelected];
}






-(IBAction)zoomMap1:(id)sender{
    
    imageZoom1.image = nil;
    
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom1.png"];
    [imageZoom1 setImage:zoomMapImage];
    
    exitZoom1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom1.frame = CGRectMake(850, 145, 150, 40);
    [exitZoom1 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom1 addTarget:self action:@selector(exitZoom1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom1];
}

-(IBAction)exitZoom1:(id)sender{
    imageZoom1.image = nil;
}


-(IBAction)zoomMap2:(id)sender{
    
    imageZoom2.image = nil;
    
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom2.png"];
    [imageZoom2 setImage:zoomMapImage];
    
    exitZoom2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom2.frame = CGRectMake(725, 145, 150, 40);
    [exitZoom2 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom2 addTarget:self action:@selector(exitZoom2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom2];
}

-(IBAction)exitZoom2:(id)sender{
    imageZoom2.image = nil;
}


-(IBAction)zoomMap3:(id)sender{
    
    imageZoom3.image = nil;
    
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom3.png"];
    [imageZoom3 setImage:zoomMapImage];
    
    exitZoom3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom3.frame = CGRectMake(725, 145, 150, 40);
    [exitZoom3 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom3 addTarget:self action:@selector(exitZoom3:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom3];
}

-(IBAction)exitZoom3:(id)sender{
    imageZoom3.image = nil;
}


-(IBAction)zoomMap4:(id)sender{
    
    imageZoom4.image = nil;
    
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom4.png"];
    [imageZoom4 setImage:zoomMapImage];
    
    exitZoom4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom4.frame = CGRectMake(725, 145, 150, 40);
    [exitZoom4 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom4 addTarget:self action:@selector(exitZoom4:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom4];
}

-(IBAction)exitZoom4:(id)sender{
    imageZoom4.image = nil;
}


-(IBAction)zoomMap5:(id)sender{
    
    imageZoom5.image = nil;
    imageZoom6.image = nil;
    
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom5.png"];
    [imageZoom5 setImage:zoomMapImage];
    
    exitZoom5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom5.frame = CGRectMake(795, 95, 150, 40);
    [exitZoom5 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom5 addTarget:self action:@selector(exitZoom5:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom5];
}

-(IBAction)exitZoom5:(id)sender{
    imageZoom5.image = nil;
}


-(IBAction)zoomMap6:(id)sender{
    
    imageZoom5.image = nil;
    imageZoom6.image = nil;
    
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom6.png"];
    [imageZoom6 setImage:zoomMapImage];
    
    exitZoom6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom6.frame = CGRectMake(755, 240, 150, 40);
    [exitZoom6 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom6 addTarget:self action:@selector(exitZoom6:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom6];
}

-(IBAction)exitZoom6:(id)sender{
    imageZoom6.image = nil;
}










- (IBAction)showRefButton:(id)sender {
    
    [containerView removeFromSuperview];
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor clearColor]];
    [containerView setTag:1111];
    
    
    
    // REFF //
    CGRect reff = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth = 1000;
    CGFloat RefHeight = 800;
    
    CGRect refTarget = CGRectMake(reff.origin.x + 500 - RefWidth / 2, reff.origin.y + 365 - RefHeight / 2, RefWidth, RefHeight);
    
    ref = [[UIImageView alloc] initWithFrame:refTarget];
    ref.image=[UIImage imageNamed:@"reff.png"];
    [containerView addSubview:ref];
    
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(765, 90, 150, 40);
    [myButton setTitle:@"" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(buttonClickedRef:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerView];
    
    
    // Animate the display of the container view.
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = self.view.frame;
    }];
    
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    
}




- (IBAction)buttonClickedRef:(id)sender
{
    // Animate the way the view gets dismissed.
    containerView = [self.view viewWithTag:1111];
    
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    }];
    
    [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
    
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
}






/***
 ** Gestion du scrollView
 **/
#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    static NSInteger previousPage = 0;
    CGFloat pageWidth = scrollView.frame.size.width;
    float fractionalPage = scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    
    
    if (previousPage != page)
    {
        previousPage = page;
        
        
        if(page == 0)
        {
            [self removeObject0];
            
            // MINI REF //
            CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth = 270.0;
            CGFloat imageRefHeight = 9.0;
            
            CGRect imgRef = CGRectMake(refTarget.origin.x + 509 - ImageRefWidth / 2, refTarget.origin.y + 726 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
            
            imageRefFoot = [[UIImageView alloc] initWithFrame:imgRef];
            imageRefFoot.image=[UIImage imageNamed:@"refff_03.png"];
            [self.view addSubview:imageRefFoot];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil Gris
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
        }
        else if (page == 1)
        {
            [self removeObject1];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];

            
            
            
        }
        else if (page == 2)
        {
            
            [self removeObject2];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            /***
             ** Lancement d'un timer qui démarre la video
             **/
            tzoomTime = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(tZoomFunction) userInfo:nil repeats:NO];
            
            
        }
        else if (page == 3)
        {
            
            [self removeObject3];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 4)
        {
            
            [self removeObject4];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 5)
        {
            
            [self removeObject5];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 4;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 6)
        {
            
            [self removeObject6];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 5;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 7)
        {
            
            [self removeObject7];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 6;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 8)
        {
            
            [self removeObject8];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 9)
        {
            
            [self removeObject9];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 10)
        {
            
            [self removeObject10];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 11)
        {
            
            [self removeObject11];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 12)
        {
            
            [self removeObject12];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 4;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            /***
             ** création d'une animation de cercle et de temps
             **/
            if(animatedImageView1.image == nil && compteurA.image == nil && page9C.image == nil && animatedImageView2.image == nil && compteurB.image == nil)
            {
                tmpDebut1 = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(cerclePage9) userInfo:nil repeats:NO];
                tmpImg1 = [NSTimer scheduledTimerWithTimeInterval:1.4 target:self selector:@selector(departPage9) userInfo:nil repeats:NO];
            }

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        else if (page == 13)
        {
            
            [self removeObject13];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 5;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 14)
        {
            
            [self removeObject14];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 6;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
        }
        else if (page == 15)
        {
            
            [self removeObject15];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 7;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 16)
        {
            
            [self removeObject16];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 8;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 17)
        {
            
            [self removeObject17];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 9;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 18)
        {
            
            [self removeObject18];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 10;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            
            /***
             ** création d'une animation de cercle et de temps
             **/
            if(animatedImageView3.image == nil && compteurC.image == nil && page15C.image == nil && animatedImageView4.image == nil && compteurD.image == nil)
            {
                tmpDebut2 = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(cerclePage15) userInfo:nil repeats:NO];
                tmpImg2 = [NSTimer scheduledTimerWithTimeInterval:1.4 target:self selector:@selector(departPage15) userInfo:nil repeats:NO];
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        else if (page == 19)
        {
            
            [self removeObject19];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 11;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
        }
        else if (page == 20)
        {
            
            [self removeObject20];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete_grey.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 1;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            /***
             ** Animation de la page 20
             ***/
            t1 = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(animationT1) userInfo:nil repeats:NO];
            
            t2 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationT2) userInfo:nil repeats:NO];
            
            t3 = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(animationT3) userInfo:nil repeats:NO];
            
            t4 = [NSTimer scheduledTimerWithTimeInterval:3.5 target:self selector:@selector(animationT4) userInfo:nil repeats:NO];
            
            t5 = [NSTimer scheduledTimerWithTimeInterval:4.5 target:self selector:@selector(animationT5) userInfo:nil repeats:NO];

            
            
            
            
            
            
            
            
            
        }
        else if (page == 21)
        {
            
            [self removeObject21];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 22)
        {
            
            [self removeObject22];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 23)
        {
            
            [self removeObject23];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 24)
        {
            
            [self removeObject24];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
        }
        else if (page == 25)
        {
            
            [self removeObject25];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
        }
        else if (page == 26)
        {
            
            [self removeObject26];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
        }
        else if (page == 27)
        {
            
            [self removeObject27];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
        }
        else if (page == 28)
        {
            
            [self removeObject28];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 29)
        {
            
            [self removeObject29];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
        }
        else if (page == 30)
        {
            
            [self removeObject30];
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 10.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refff_07.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            /***
             ** //////////////////////////////////////////////////////////////////////////LES BUTTONS DE NAVIGATION
             **/
            
            // Button acceuil
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            
            
            
            // Button innovation Vert
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            
            
            // Bouton performance vert
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            
            
            // Bouton purete
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            
            
            // Bouton transportabilite
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            
            
            // Button bonUsage
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            
            
            // Bouton resume
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            
            
            
            
            
            /***
             ** Controle Navigation (pageControl)
             ***/
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
        }
    }
    else
    {
        [self removeObjectEl];
    }
}





















- (void) tZoomFunction {
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    tzoom = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    tzoom.frame = CGRectMake(20, 100, 10, 10);
    [tzoom setBackgroundColor:[UIColor clearColor]];
    [tzoom setTag:9112];
    
    
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"media3" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    mpc = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [[self tzoom]addSubview:mpc.view];
    
    
    
    // TAILLE ET FULLSCREEN
    [mpc.view setFrame:CGRectMake(507, 190, 340, 310)];
    [mpc setFullscreen:NO animated:YES];
    
    
    // Suppression de tous les control
    [mpc setControlStyle:MPMovieControlStyleNone];
    
    
    // TRANSPARENCE
    mpc.backgroundView.backgroundColor = [UIColor clearColor];
    mpc.view.backgroundColor = [UIColor clearColor];
    for (UIView *aSubview in mpc.view.subviews) {
        aSubview.backgroundColor = [UIColor clearColor];
    }
    
    
    [mpc play];
    mpc.repeatMode = MPMovieRepeatModeOne;
    
    
    
    
    
    
    CGRect btnPause1 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth111 = 510;
    CGFloat buttonHeight111 = 720;
    
    CGRect buttonFrame111 = CGRectMake(btnPause1.origin.x + 710 - buttonWidth111 / 2, btnPause1.origin.y + 300 - buttonHeight111 / 2, buttonWidth111, buttonHeight111);
    
    btnPause = [ [ UIButton alloc] initWithFrame : buttonFrame111 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [btnPause setTitle:@"" forState:UIControlStateNormal];
    [btnPause addTarget:self action:@selector(btnPauseClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : btnPause ];
    
    
    
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:tzoom];
    
}


static int tapCount = 0;
-(IBAction)btnPauseClick:(id)sender {
    
    tapCount ++;
    if(tapCount == 1) {
        
        [mpc pause];
    }
    else if(tapCount == 2) {
        
        [mpc play];
    }
    else {
        
        tapCount = 1;
        [mpc pause];
    }
    
}






















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if([self.view window] == nil)
    {
        self.view = nil;
    }
    return;
}








@end
