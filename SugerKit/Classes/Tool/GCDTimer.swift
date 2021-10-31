//
//  GCDTimer.swift
//  SugerKit
//
//  Created by luckyBoy on 2021/10/31.
//

import Foundation


class GCDTimer: NSObject {
    
    static private var timer: DispatchSourceTimer?

    class func start(_ timeInterval: TimeInterval = 1,_ totolTimeInterval: TimeInterval = Double(MAXFLOAT), animation: @escaping (_ time: TimeInterval)->()){
 
        var timeCount = totolTimeInterval
      
        GCDTimer.timer = DispatchSource.makeTimerSource(queue: DispatchQueue.global())
 
        GCDTimer.timer?.schedule(deadline: .now(), repeating: timeInterval)
                
        GCDTimer.timer?.setEventHandler(handler: {
            
            timeCount = timeCount - timeInterval
        
            if timeCount <= 0 {
                GCDTimer.timer?.cancel()
            }
            
            DispatchQueue.main.async {
                animation(timeCount)
            }
            
        })

        GCDTimer.timer?.resume()
    }
    
    
    class func stop() {
        GCDTimer.timer?.cancel()
    }

}
