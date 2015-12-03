//
//  ImageManager.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/3.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "ImageManager.h"

@interface ImageManager()

@property (nonatomic, strong) NSMutableArray *photosAry;
@property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic) NSMutableArray *capturedImage;
@property (nonatomic) UIImagePickerController *imagePickerController;

@end

@implementation ImageManager

+ (instancetype)shareManager {
    static ImageManager *_imgManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imgManager = [[self alloc] init];
    });
    return _imgManager;
}

- (instancetype)initWithVC:(UIViewController *)aViewController
{
    self = [super init];
    if (self) {
        self.viewController = aViewController;
        [self commonInit];
    }
    return self;
}

/**
 *  需要初始化的项，都写在这里
 */
- (void)commonInit {
    
}

- (void)takePhotos:(UIViewController *)aViewController {
    UIImagePickerController *imgPicker = [[UIImagePickerController alloc] init];
    imgPicker.delegate = self;
    imgPicker.allowsEditing = YES;
    [aViewController presentViewController:imgPicker animated:YES completion:^{
        
    }];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo {
    NSLog(@"editingInfo = %@",editingInfo);
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
     [self.viewController dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)showImagePickerForCamera:(id)sender
{
    [self showImagePickerForSourceType:UIImagePickerControllerSourceTypeCamera];
}


- (IBAction)showImagePickerForPhotoPicker:(id)sender
{
    [self showImagePickerForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
}


- (void)showImagePickerForSourceType:(UIImagePickerControllerSourceType)sourceType
{
    
    if (self.capturedImage.count > 0)
    {
        [self.capturedImage removeAllObjects];
    }
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
    imagePickerController.sourceType = sourceType;
    imagePickerController.delegate = self;
    
    if (sourceType == UIImagePickerControllerSourceTypeCamera)
    {
        /*
         The user wants to use the camera interface. Set up our custom overlay view for the camera.
         */
        imagePickerController.showsCameraControls = NO;
        
        /*
         Load the overlay view from the OverlayView nib file. Self is the File's Owner for the nib file, so the overlayView outlet is set to the main view in the nib. Pass that view to the image picker controller to use as its overlay view, and set self's reference to the view to nil.
         */
//        [[NSBundle mainBundle] loadNibNamed:@"OverlayView" owner:self options:nil];
//        self.overlayView.frame = imagePickerController.cameraOverlayView.frame;
//        imagePickerController.cameraOverlayView = self.overlayView;
//        self.overlayView = nil;
    }
    
    self.imagePickerController = imagePickerController;
    [self.viewController presentViewController:self.imagePickerController animated:YES completion:nil];
}

//+ (NSArray *)getGalleryAryFromSandbox {
//    //[NSString stringWithFormat:@"%@,%@",[self returnSandBoxPath],@""];
//}
//
//
//+ (NSString *)returnSandBoxPath {
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *docDir = [paths objectAtIndex:0];
//    return docDir;
//}
@end
