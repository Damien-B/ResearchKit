//
//  ViewController.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 25/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func consentTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func surveyTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func microphoneTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0], isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func reactionTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: ReactionTimeTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0], isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func hanoiTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: HanoiTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0], isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func TapTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: TapTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0], isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func customTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: CustomTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0], isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
}

extension ViewController : ORKTaskViewControllerDelegate {    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        //Handle results with taskViewController.result
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
        NSLog("Results of \(taskViewController.result.identifier) :")
        NSLog("\(taskViewController.result)")
    }
    
    func taskViewController(taskViewController: ORKTaskViewController, stepViewControllerWillAppear stepViewController: ORKStepViewController) {
        NSLog("\(taskViewController.currentStepViewController)")
        taskViewController.view.tintColor = UIColor(red: 142.0/255.0, green: 68.0/255.0, blue: 173.0/255.0, alpha: 1.0) // working
        // taskViewController.view.backgroundColor = UIColor.darkGrayColor() // not working
    }
}