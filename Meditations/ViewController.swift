//
//  ViewController.swift
//  Meditations
//
//  Created by Bart Jacobs on 07/09/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var enableHealthKitButton: UIButton!

    // MARK: -

    lazy var healthStore = HKHealthStore()

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Show/Hide Button
        enableHealthKitButton.hidden = !HKHealthStore.isHealthDataAvailable()
    }

    // MARK: - Actions

    @IBAction func enableHealthKit(sender: AnyObject) {
        var shareTypes = Set<HKSampleType>()
        shareTypes.insert(HKSampleType.workoutType())

        var readTypes = Set<HKObjectType>()
        readTypes.insert(HKObjectType.workoutType())

        healthStore.requestAuthorizationToShareTypes(shareTypes, readTypes: readTypes) { (success, error) -> Void in
            if success {
                print("success")
            } else {
                print("failure")
            }
            
            if let error = error { print(error) }
        }
    }

}
