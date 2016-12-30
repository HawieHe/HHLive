//
//  HomeViewController.swift
//  HHTV
//
//  Created by HeHui on 2016/12/30.
//  Copyright © 2016年 Hawie. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: 懒加载
    lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: statusBarH + navBarH, width: self.view.frame.width, height: 40)
        let titles = ["推荐","手游","娱乐","游戏"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        return titleView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

   
}

extension HomeViewController {
    func setupUI(){
        // 1.设置导航栏
        setupNavBar()
        // 2.设置titleView
        view.addSubview(self.pageTitleView)
    }
    private func setupNavBar(){
        //1.左边导航按钮
        navigationItem.leftBarButtonItem = UIBarButtonItem(imgName:"logo")
        
        //2.右边导航按钮
        let size = CGSize(width: 40, height: 40)
        /*
        let historyBtnItem = UIBarButtonItem(imgName:"viewHistoryIcon", hlImgName: "viewHistoryIconHL", size: size)
        let scanBtnItem = UIBarButtonItem(imgName:"scanIcon", hlImgName: "scanIconHL", size: size)
        let searchBtnItem = UIBarButtonItem(imgName:"searchBtnIcon", hlImgName: "searchBtnIconHL", size: size)
        navigationItem.rightBarButtonItems = [historyBtnItem,scanBtnItem,searchBtnItem]
        */

        let hisItem = UIBarButtonItem(imgName: "viewHistoryIcon",size:size,suffix:"HL")
        let scanItem = UIBarButtonItem(imgName: "scanIcon",size:size,suffix:"HL")
        let searchItem = UIBarButtonItem(imgName: "searchBtnIcon",size:size,suffix:"HL")

        navigationItem.rightBarButtonItems = [hisItem,scanItem,searchItem]

    }
}
