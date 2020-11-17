// Created for RepoBrowser on 11/16/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import XCTest
@testable import RepoBrowser

class ServerResponseTests: XCTestCase {

  // MARK: - Testing Server Response Asynchronously
  
  // Simply testing first that the server is responding and sending data (no tests on what the response is)
  
  // Test the negative case first with a nonsense URL
  func test_noServerResponse() {
    let expectation = self.expectation(description: "Server responds in reasonable time")
    defer { waitForExpectations(timeout: 2) }

    let url = URL(string: "fred")!
    URLSession.shared.dataTask(with: url) { data, response, error in
      defer { expectation.fulfill() }

      XCTAssertNil(data)
      XCTAssertNil(response)
      XCTAssertNotNil(error)
    }
    .resume()
  }
  
  // Now test the affirmative case with GitHub API URL
  func test_ServerResponse() {
    let expectation = self.expectation(description: "Server responds in reasonable time")
    defer { waitForExpectations(timeout: 2) }

    let url = URL(string: "https://api.github.com/search/repositories?q=language:swift&sort=stars&order=desc")!
    URLSession.shared.dataTask(with: url) { data, response, error in
      defer { expectation.fulfill() }

      XCTAssertNotNil(data)
      XCTAssertNotNil(response)
      XCTAssertNil(error)
    }
    .resume()
  }
  
  // Now test the case with GitHub API for Kotlin
  func test_ServerResponseForKotlin() {
    let expectation = self.expectation(description: "Server responds in reasonable time")
    defer { waitForExpectations(timeout: 2) }

    let url = URL(string: "https://api.github.com/search/repositories?q=language:kotlin&sort=stars&order=desc")!
    URLSession.shared.dataTask(with: url) { data, response, error in
      defer { expectation.fulfill() }

      XCTAssertNotNil(data)
      XCTAssertNotNil(response)
      XCTAssertNil(error)
    }
    .resume()
  }

}
