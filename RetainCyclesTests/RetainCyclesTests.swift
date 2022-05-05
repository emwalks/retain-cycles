import XCTest
@testable import RetainCycles

class RetainCyclesTests: XCTestCase {
    
    
    
    func testCaseOneRetainCycles() {
        
    }
    
    func testCaseTwoRetainCycles() {
        //Given - we have a Case two VC which has a C2 presenter on it.
        let presenter = CaseTwoPresenter()
        let viewController = CaseTwoViewController(presenter: presenter)
        //when - Case 2 VC dies
        addTeardownBlock { [weak presenter, weak viewController] in
            XCTAssertNil(viewController)
            XCTAssertNil(presenter)
        }
        //then - the presenter is also de allocated.
        
        
        
    }
    
    func testCaseThreeRetainCycles() {
        
    }
}
