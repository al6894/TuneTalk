//
//  LoginViewController.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import UIKit
import ParseSwift


class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var topCustomButton: CustomButton!
    @IBOutlet weak var bottomCustomButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionToBottomButton()
    }
    
    func addActionToBottomButton() {
        bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
    }
    
    
    @IBAction func topButtonTapped(_ sender: Any) {
        topCustomButton.shake()
    }
    
    
    @IBAction func bottomButtonTapped(_ sender: Any) {
        bottomCustomButton.shake()
    }
    
    @IBAction func onLoginTapped(_ sender: Any) {

        // Make sure all fields are non-nil and non-empty.
        guard let username = usernameField.text,
              let password = passwordField.text,
              !username.isEmpty,
              !password.isEmpty else {

            showMissingFieldsAlert()
            return
        }

        // Log in the parse user
        User.login(username: username, password: password) { [weak self] result in

            switch result {
            case .success(let user):
                print("✅ Successfully logged in as user: \(user)")

                // Post a notification that the user has successfully logged in.
                NotificationCenter.default.post(name: Notification.Name("login"), object: nil)

            case .failure(let error):
                self?.showAlert(description: error.localizedDescription)
            }
        }

    }


    private func showMissingFieldsAlert() {
        let alertController = UIAlertController(title: "Opps...", message: "We need all fields filled out in order to log you in.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}


