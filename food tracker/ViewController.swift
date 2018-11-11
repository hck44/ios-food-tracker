//
//  ViewController.swift
//  food tracker
//
//  Created by Macintosh on 03/11/2018.
//  Copyright © 2018 ck. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    //MARK: Properties
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var textValueFromText: UITextField!
    @IBOutlet weak var defaultImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textValueFromText.delegate = self
    }

    
    //MARK: button action
    @IBAction func setDefaultButtonAction(_ sender: UIButton) {
        titleLable.text = "Set to default"
    }
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        textValueFromText.resignFirstResponder()
        let imageControl = UIImagePickerController()
        imageControl.sourceType = .photoLibrary
        imageControl.delegate = self
        present(imageControl, animated: true, completion: nil)
    }
    
    //MARK: delegate options
    func textFieldDidEndEditing(_ textField: UITextField) {
        titleLable.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textValueFromText.resignFirstResponder()
        return true
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        defaultImageView.image = selectedImage
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

