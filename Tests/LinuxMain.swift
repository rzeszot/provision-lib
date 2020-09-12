import XCTest

import ProvisionTests

var tests = [XCTestCaseEntry]()
tests += ProvisionTests.allTests()
XCTMain(tests)
