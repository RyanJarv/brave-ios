// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import Foundation

extension Bundle {
    public static let shared: Bundle = Bundle(identifier: "\(main.bundleIdentifier!).Shared")!
    public static let data: Bundle = Bundle(identifier: "\(main.bundleIdentifier!).Data")!
    public static let braveShared: Bundle = Bundle(identifier: "\(main.bundleIdentifier!).BraveShared")!
    public static let storage: Bundle = Bundle(identifier: "\(main.bundleIdentifier!).Storage")!
}
