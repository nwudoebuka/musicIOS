//
//  ViewController.swift
//  Musicplayer
//
//  Created by Enoch on 9/5/18.
//  Copyright © 2018 com.dreammesh. All rights reserved.
//

//import UIKit
//import AVFoundation

//class ViewController: UIViewController {

//override func viewDidLoadvar {
        //super.viewDidLoad()
      //var songPlayer = AVAudioPlayer()
        // Do any additional setup after loading the view, typically from a nib.
    //}

    //override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}


//}
//
//  ViewController.swift
//  Dream music
//
//  Created by Enoch on 9/5/18.
//  Copyright © 2018 com.dreammesh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var songPlayer = AVAudioPlayer()
    var hasBeenPaused = false
    @IBOutlet weak var status: UILabel!
    @IBAction func Play(_ sender: Any) {
        
        songPlayer.play()
        status.text = "PLAYING"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        preparesongandsession()
        //@IBAction func play(_ sender: Any){
        //songPlayer.play()
        //}
        // Do any additional setup after loading the view, typically from a nib.  let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        //songPlayer.play()
        
       
    }
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    @IBAction func stop(_ sender: Any) {
        
        songPlayer.stop()
    }
    @IBAction func pause(_ sender: Any) {
        if songPlayer.isPlaying{
            songPlayer.pause()
            hasBeenPaused = true
            status.text = "PAUSED"
        }else{
            hasBeenPaused = false
            status.text = "PLAYING"
        }
    }
    func preparesongandsession(){
        
        do {
            songPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath:
                
                //setting my AUDIO FIle, since it is a test and not enough time, I am adding just a
                //song for sample and might not have time to write functions to allow users add songs
                //and create playlists
                Bundle.main.path(forResource: "sample", ofType: "mp3")!))
            songPlayer.prepareToPlay()
            let audioSession = AVAudioSession.sharedInstance()
            
            
            do {
                
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                
                
            }catch let sessionError{
                print(sessionError)
                
            }
        }catch let songPlayerError{
            print(songPlayerError)
        }
        
    }
    
   // -(void) pickSong
    //{
    
    // Create picker view
    //MPMediaPickerController* picker = [[MPMediaPickerController alloc] init];
    //picker.delegate = self;
    
    // Check how to display
    //if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
    
    // Show in popover
    //[popover dismissPopoverAnimated:YES];
    //popover = [[UIPopoverController alloc] initWithContentViewController:picker];
    //[popover presentPopoverFromBarButtonItem:self.navigationItem.rightBarButtonItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    
    //} else {
    
    // Present modally
    //[self presentViewController:picker animated:YES completion:nil];
    
    //}
    
    //}
}
