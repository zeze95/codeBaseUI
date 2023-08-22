//
//  WriteViewController.swift
//  codeBaseUI
//
//  Created by zeze kim on 2023/08/22.
//

import UIKit
import SnapKit

class WriteViewController: UIViewController {
    let photoImg = setImageView()
    let titleTextField = titleTextField()
    let dateTextField = dateTextField()
    let cotentsTextView = {
        let view = UITextView()
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    static func setImageView() -> UIImageView {
        let view = UIImageView()
        view.backgroundColor = .gray
        view.contentMode = .scaleAspectFill
        return view
    }
    static func titleTextField() -> UITextField  {
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력하세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }
    static func dateTextField() -> UITextField  {
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "날짜를 입력하세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let items = [photoImg,titleTextField,dateTextField,cotentsTextView]
        for item in items {
            view.addSubview(item)
        }
        setUpConstraints()
    }

    func setUpConstraints(){
        photoImg.snp.makeConstraints{
            make in
            make.top.equalTo(view)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(view).multipliedBy(0.3)
            
        }
        titleTextField.snp.makeConstraints{
            make in
            make.top.equalTo(photoImg.snp.bottom).offset(16)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        dateTextField.snp.makeConstraints{
            make in
            make.top.equalTo(titleTextField.snp.bottom).offset(16)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        cotentsTextView.snp.makeConstraints{
            make in
            make.top.equalTo(dateTextField.snp.bottom).offset(16)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(300)
        }
        
    }
}
