//
//  ViewController.swift
//  codeBaseUI
//
//  Created by zeze kim on 2023/08/22.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    let LoginButton = UIButton()
    let kakaoTalkButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLoginButton()
        setkakaoTalk()
        setUpConstraints()
    }
    
    func setLoginButton() {
        view.addSubview(LoginButton)
        LoginButton.addTarget(self, action: #selector(LoginButtonClicked), for: .touchUpInside)
        LoginButton.translatesAutoresizingMaskIntoConstraints = false
        LoginButton.backgroundColor = .gray
        LoginButton.setTitle("글쓰러가기", for: .normal)
        LoginButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func LoginButtonClicked () {
        let vc = WriteViewController()
        present(vc, animated: true)
    }
    
    func setkakaoTalk() {
        view.addSubview(kakaoTalkButton)
        kakaoTalkButton.addTarget(self, action: #selector(kakaoTalkClicked), for: .touchUpInside)
        kakaoTalkButton.translatesAutoresizingMaskIntoConstraints = false
        kakaoTalkButton.backgroundColor = .yellow
        kakaoTalkButton.setTitle("카톡프로필보기", for: .normal)
        kakaoTalkButton.setTitleColor(.black, for: .normal)
        
    }
    
    @objc func kakaoTalkClicked () {
        print("ddd")
        let vc = KakaoViewController()
        vc.modalPresentationStyle = .fullScreen 
            present(vc, animated: true, completion: nil)
    }
    
    func setUpConstraints(){
        LoginButton.snp.makeConstraints{
            make in
            make.top.equalTo(view).offset(250)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
 
        kakaoTalkButton.snp.makeConstraints{
            make in
            make.top.equalTo(LoginButton.snp.bottom).offset(50)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        
    }
   
}
