//
//  ViewController.swift
//  ImagePicker
//
//  Created by Anthony Armstrong on 5/5/15.
//  Copyright (c) 2015 openinformant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func imageButtonTapped(sender: UIButton) {

        // Create the imagePicker and set the source type(s) for the services available
        var imagePicker:UIImagePickerController = UIImagePickerController()
        var sourceType = UIImagePickerControllerSourceType.PhotoLibrary

        if(UIImagePickerController.isSourceTypeAvailable(sourceType)){
            imagePicker.sourceType = sourceType
            imagePicker.delegate = self

            // This is how you show a new ViewController
            presentViewController(imagePicker, animated: true, completion: nil)
        }

    }

    // MARK: - ImagePicker and NavigationController Delegates
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {

    }

    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}

