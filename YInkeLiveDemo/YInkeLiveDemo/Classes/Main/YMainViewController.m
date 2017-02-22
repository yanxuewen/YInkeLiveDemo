//
//  YMainViewController.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/21.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "YMainViewController.h"
#import "YLiveViewController.h"
#import "YLiveTableViewCell.h"
#import "YLiveModel.h"

@interface YMainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *livesArr;

@end

@implementation YMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Live";
    
    [self loadData];
    
    self.tableView.rowHeight = 430;
    [self.tableView registerNib:[YLiveTableViewCell getRegisterNib] forCellReuseIdentifier:[YLiveTableViewCell getClassName]];
    
    
}

- (void)loadData
{
    // 映客数据url
    NSString *urlStr = @"http://116.211.167.106/api/live/aggregation?uid=133825214&interest=1";
    
    // 请求数据
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    mgr.responseSerializer = [AFJSONResponseSerializer serializer];
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", nil];
    [mgr GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * _Nullable responseObject) {
        NSLog(@"responseObject %@",responseObject);
        NSArray *lives = responseObject[@"lives"];
        _livesArr = @[].mutableCopy;
        if (lives.count > 0) {
            for (NSDictionary *dic in lives) {
                YLiveModel *liveM = [YLiveModel yy_modelWithDictionary:dic];
                [_livesArr addObject:liveM];
            }
        }
        
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"error %@",error);
        
    }];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _livesArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YLiveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[YLiveTableViewCell getClassName] forIndexPath:indexPath];
    cell.liveModel = _livesArr[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    YLiveViewController *liveVC = [[YLiveViewController alloc] init];
    liveVC.liveModel = _livesArr[indexPath.row];
    [self presentViewController:liveVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
