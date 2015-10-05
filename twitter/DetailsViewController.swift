//
//  DetailsViewController.swift
//  twitter
//
//  Created by Marco Sgrignuoli on 10/4/15.
//  Copyright © 2015 Optimizely. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var userPicture: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var message: UILabel!
    
    var tmpTweet: Tweet?
    
    var tweet: Tweet! {
        didSet {
            userName.text = tweet.user?.name
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "hh:mm"
            timestamp.text = dateFormatter.stringFromDate(tweet.createdAt!)
            message.text = tweet.text
            if tweet.user?.profileImageUrl != nil {
                userPicture.setImageWithURL(NSURL(string: (tweet.user?.profileImageUrl)!))
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tweet = tmpTweet

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
