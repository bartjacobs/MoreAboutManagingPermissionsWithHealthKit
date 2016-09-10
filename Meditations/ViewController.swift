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
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var enableHealthKitButton: UIButton!

    // MARK: -

    lazy var healthStore = HKHealthStore()

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.isHidden = true
        enableHealthKitButton.isHidden = true

        if HKHealthStore.isHealthDataAvailable() {
            let authorizationStatus = healthStore.authorizationStatus(for: .workoutType())

            if authorizationStatus == .notDetermined {
                enableHealthKitButton.isHidden = false

            } else if authorizationStatus == .sharingDenied {
                messageLabel.isHidden = false
                messageLabel.text = "Meditations doesn't have access to your workout data. You can enable access in the Settings application."
            }

        } else {
            messageLabel.isHidden = false
            messageLabel.text = "HealthKit is not available on this device."
        }
    }

    // MARK: - Actions

    @IBAction func enableHealthKit(_ sender: AnyObject) {
        var shareTypes = Set<HKSampleType>()
        shareTypes.insert(HKSampleType.workoutType())

        var readTypes = Set<HKObjectType>()
        readTypes.insert(HKObjectType.workoutType())

        healthStore.requestAuthorization(toShare: shareTypes, read: readTypes) { (success, error) -> Void in
            if success {
                print("success")
            } else {
                print("failure")
            }
            
            if let error = error { print(error) }
        }
    }

}
