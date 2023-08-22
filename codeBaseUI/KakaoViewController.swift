//
//  KakaoViewController.swift
//  codeBaseUI
//
//  Created by zeze kim on 2023/08/22.
//

import UIKit
import SnapKit


class KakaoViewController: UIViewController {
//    let navBar = setNavView()
//    static func setNavView() -> UINavigationBar {
//        let view = UINavigationBar()
//        view.backgroundColor = .clear
//        return view
//    }
    
    let profileView = UIView()
    let ProfileButtonView = UIView()
    
    let titleTextField = {
        let view = UIView()
//        view.widthAnchor.constraint(equalTo: <#T##NSLayoutDimension#>, multiplier: <#T##CGFloat#>)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        NavBarStyle()
        view.addSubview(profileView)
        view.addSubview(ProfileButtonView)
        setUpConstraints()
    }
    
//    func NavBarStyle() {
//        let navigationItem = UINavigationItem()
//        let backButton = UIBarButtonItem()
//        backButton.image = UIImage(systemName: "arrowshape.backward")
//        backButton.tintColor = .blue
//        navigationItem.leftBarButtonItem = backButton
//
//        let icon1 = UIBarButtonItem()
//        let icon2 = UIBarButtonItem()
//        let icon3 = UIBarButtonItem()
//        navBar.items = [navigationItem]
//    }
    
    func setUpConstraints(){

//        navBar.snp.makeConstraints{
//            make in
//            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
//            make.height.equalTo(50)
//        }
//
        profileView.snp.makeConstraints{
            make in
            make.bottom.equalTo(ProfileButtonView.snp.top).offset(10)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
        }
        ProfileButtonView.snp.makeConstraints{
            make in

            make.width.equalTo(300)
            make.height.equalTo(80)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }

}
