//
//  LoginViewController.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/08/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    private lazy var logoLabel: UILabel = {
       let logoLabel = UILabel()
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        logoLabel.text = "PICTEREST"
        logoLabel.textColor = .white
        logoLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
        logoLabel.layer.shadowOpacity = 0.8
        logoLabel.layer.shadowRadius = 2
        logoLabel.layer.shadowColor = CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        logoLabel.font = .systemFont(ofSize: 50)
        return logoLabel
    }()
    
    private lazy var kakaoLoginButton: UIButton = {
       let kakaoLoginButton = UIButton()
        kakaoLoginButton.translatesAutoresizingMaskIntoConstraints = false
        kakaoLoginButton.backgroundColor = .yellow
        kakaoLoginButton.layer.cornerRadius = 10
        kakaoLoginButton.setTitle("카카오로 로그인", for: .normal)
        kakaoLoginButton.setTitleColor(.systemBrown, for: .normal)
        return kakaoLoginButton
    }()
    
    private lazy var googleLoginButton: UIButton = {
       let googleLoginButton = UIButton()
        googleLoginButton.translatesAutoresizingMaskIntoConstraints = false
        googleLoginButton.backgroundColor = .white
        googleLoginButton.layer.cornerRadius = 10
        googleLoginButton.setTitle("구글로 로그인", for: .normal)
        googleLoginButton.setTitleColor(.red, for: .normal)
        return googleLoginButton
    }()
    
    private lazy var appleLoginButton: UIButton = {
       let appleLoginButton = UIButton()
        appleLoginButton.translatesAutoresizingMaskIntoConstraints = false
        appleLoginButton.backgroundColor = .black
        appleLoginButton.layer.cornerRadius = 10
        appleLoginButton.setTitle("Apple로 로그인", for: .normal)
        appleLoginButton.setTitleColor(.white, for: .normal)
        return appleLoginButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        setLogoLabel()
        setKakaoLoginLabel()
        setGoogleLoginLabel()
        setAppleLoginLabel()
    }

    func setLogoLabel() {
        self.view.addSubview(logoLabel)
        logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.4).isActive = true
    }
    
    func setKakaoLoginLabel() {
        self.view.addSubview(kakaoLoginButton)
        kakaoLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        kakaoLoginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150).isActive = true
        kakaoLoginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        kakaoLoginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setGoogleLoginLabel() {
        self.view.addSubview(googleLoginButton)
        googleLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleLoginButton.topAnchor.constraint(equalTo: kakaoLoginButton.bottomAnchor, constant: 10).isActive = true
        googleLoginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        googleLoginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setAppleLoginLabel() {
        self.view.addSubview(appleLoginButton)
        appleLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        appleLoginButton.topAnchor.constraint(equalTo: googleLoginButton.bottomAnchor, constant: 10).isActive = true
        appleLoginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        appleLoginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
