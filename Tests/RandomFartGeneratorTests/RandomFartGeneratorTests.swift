import XCTest
@testable import RandomFartGenerator

final class RandomFartGeneratorTests: XCTestCase {
  let generator = RandomFartGenerator()
  
  func testExample() {
    let expectation = XCTestExpectation()
    generator.emit()
    wait(for: [expectation], timeout: 10)
  }

  static var allTests = [
      ("testExample", testExample),
  ]
}
