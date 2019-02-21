// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import WatchKit
import Foundation
import UIKit
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    var session: WCSession!
    @IBOutlet var adblock: WKInterfaceLabel!
    @IBOutlet var https: WKInterfaceLabel!
    @IBOutlet var scripts: WKInterfaceLabel!

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    }
    
    func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String: Any]) {
        let message: [String: String] = applicationContext["message"] as! [String: String]
        self.adblock.setText(String(message["ads_trackers"]!))
        self.https.setText(String(message["https"]!))
        self.scripts.setText(String(message["time"]!))
    }

    override func awake(withContext context: Any?) {
        print("awake")
        super.awake(withContext: context)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if WCSession.isSupported() {
            session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible

        super.didDeactivate()
    }
}
