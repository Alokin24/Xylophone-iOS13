import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        
        dimButton(sender)
        
        let soundName = sender.currentTitle
        playSound(soundName)
        
        waitAndLightButton(sender)
        
        
    }
    
    func playSound(_ soundName: String?) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    func dimButton(_ button: UIButton) {
        button.alpha = 0.5
    }
    
    func waitAndLightButton(_ button: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha = 1
        }
    }
}
