import XCTest
import GPVideoPlayer

class Tests: XCTestCase {
    
    var player: GPVideoPlayer?
    
    override func setUp() {
        super.setUp()
        self.player = GPVideoPlayer.initialize(with: CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width, height: 300.0)))
        self.player?.loadVideo(with: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        self.player?.isToShowPlaybackControls = true
    }
    
    override func tearDown() {
        self.player = nil
        super.tearDown()
    }
    
    func testPause() {
        self.player?.pauseVideo()
    }
    
    func testPlay()  {
        self.player?.playVideo()
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
