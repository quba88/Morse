//
//  FlashlightService.swift
//  Morse
//
//  Created by Jakub Krystek on 27.05.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import Foundation
import AVFoundation


class FlashlightService:NSObject {

   private let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)!
    
    
   private func toggleFlash() -> Void {
        
        if self.device.hasFlash{
            do{
                try self.device.lockForConfiguration()
                try self.device.setTorchModeOnWithLevel(AVCaptureMaxAvailableTorchLevel)
                self.device.torchMode = self.device.isTorchActive ? .on : .off
                self.device.unlockForConfiguration()
            }
            catch{
                print(error);
            }
        }
    }
    
    
    
    
    
    
}
