//
//  SplashViewController.swift
//  Class05
//
//  Created by RTC35 on 2019/8/23.
//  Copyright © 2019 iOSClub. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, AsyncReponseDelegate
{

    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        print(responseString)
        self.performSegue(withIdentifier: "moveToLoginSegue", sender: self)
    }
    
    override func viewDidLoad()
    {
        let worker: AsyncRequestWorker = AsyncRequestWorker()
        worker.reponseDelegate = self
        
        worker.getResponse(from: "https://www.google.com/", tag: 0)
    }
}
