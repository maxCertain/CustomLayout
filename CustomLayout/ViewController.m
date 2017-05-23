//
//  ViewController.m
//  CustomLayout
//
//  Created by liicon on 2017/5/23.
//  Copyright © 2017年 max. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "CustomLayOut.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.navigationController.navigationBar.barTintColor = [UIColor groupTableViewBackgroundColor];
    
    CustomLayOut *layOut = [[CustomLayOut alloc] init];
    [self.collectionView setCollectionViewLayout:layOut];
    
    UINib *cellNib = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"cell"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
