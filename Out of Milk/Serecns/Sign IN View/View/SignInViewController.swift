//
//  SignInViewController.swift
//  Out of Milk
//
//  Created by Shishir_Mac on 27/3/23.
//

import UIKit
import AuthenticationServices

class SignInViewController: UIViewController {

    @IBOutlet weak var signInWithAppleButton: ASAuthorizationAppleIDButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInWithAppleButton.addTarget(self, action: #selector(signInWithAppleButtonTapped), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func signInWithAppleButtonTapped() {
            let provider = ASAuthorizationAppleIDProvider()
            let request = provider.createRequest()
            request.requestedScopes = [.fullName, .email]
            let controller = ASAuthorizationController(authorizationRequests: [request])
            controller.delegate = self
            controller.presentationContextProvider = self
            controller.performRequests()
        }


}

extension SignInViewController: ASAuthorizationControllerDelegate {
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let credential = authorization.credential as? ASAuthorizationAppleIDCredential {
            // Handle user credential
            let userIdentifier = credential.user
            let fullName = credential.fullName
            let email = credential.email
            // ...
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        // Handle error
        print(error.localizedDescription)
    }
    
}

extension SignInViewController: ASAuthorizationControllerPresentationContextProviding {
    
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return view.window!
    }
    
}
