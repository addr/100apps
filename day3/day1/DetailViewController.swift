//
//  DetailViewController.swift
//  day1
//
//  Created by Andy on 3/9/16.
//  Copyright © 2016 Abstracted Reality. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var detailImageView: UIImageView!
    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageView = self.detailImageView{
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: "shareTapped")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    func shareTapped(){
        if(detailImageView.image != nil){
            let vc = UIActivityViewController(activityItems: [detailImageView.image!], applicationActivities: [])
            vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
            presentViewController(vc, animated: true, completion: nil)
        } else {
            let ac = UIAlertController(title: "No Image Selected", message: "Please select an image to share.", preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .Default, handler: nil))
            presentViewController(ac, animated: true, completion: nil)
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

