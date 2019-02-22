//
//  MurmurHashTests.swift
//  MurmurHashTests
//
//  Created by Daisuke T on 2019/02/06.
//  Copyright © 2019 MurmurHash. All rights reserved.
//

import XCTest
#if SWIFT_PACKAGE
@testable import MurmurHash_Swift
#else
@testable import MurmurHash
#endif

class MurmurHashTests: XCTestCase {

	// MARK: - Property
	static var allTests = [
		("test_x86_32", test_x86_32),
		("test_x86_32_seed", test_x86_32_seed),
		("test_x86_32_file", test_x86_32_file),
		("test_x86_128", test_x86_128),
		("test_x86_128_seed", test_x86_128_seed),
		("test_x86_128_file", test_x86_128_file),
		("test_x64_128", test_x64_128),
		("test_x64_128_seed", test_x64_128_seed),
		("test_x64_128_file", test_x64_128_file),
		]

	
	
	override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	
	
	// MARK: - x86_32
    func test_x86_32() {
		test_x86_32_unit("", hash: 0x0)
		test_x86_32_unit("H", hash: 0x407f6809)
		test_x86_32_unit("He", hash: 0x3be5d8d4)
		test_x86_32_unit("Hel", hash: 0xc8077ff4)
		test_x86_32_unit("Hell", hash: 0x122cd931)
		test_x86_32_unit("Hello", hash: 0x12da77c8)
		test_x86_32_unit("Hello ", hash: 0x1675bc3d)
		test_x86_32_unit("Hello W", hash: 0x861e00fd)
		test_x86_32_unit("Hello Wo", hash: 0x7e8cd30d)
		test_x86_32_unit("Hello Wor", hash: 0xdb9a67a0)
		test_x86_32_unit("Hello Worl", hash: 0x744de675)
		test_x86_32_unit("Hello World", hash: 0x197683ce)
		test_x86_32_unit("Hello World!", hash: 0xdc09357d)
		test_x86_32_unit("Hello World! ", hash: 0xa4290409)
		test_x86_32_unit("Hello World! H", hash: 0x37705ad1)
		test_x86_32_unit("Hello World! He", hash: 0xeae1424d)
		test_x86_32_unit("Hello World! Hel", hash: 0x8ee885ed)
		test_x86_32_unit("Hello World! Hell", hash: 0xb358fe40)
		test_x86_32_unit("Hello World! Hello", hash: 0x18ccc342)
		test_x86_32_unit("Hello World! Hello ", hash: 0x8014041f)
		test_x86_32_unit("Hello World! Hello W", hash: 0x51fe306b)
		test_x86_32_unit("Hello World! Hello Wo", hash: 0xc4fc0856)
		test_x86_32_unit("Hello World! Hello Wor", hash: 0x3be80715)
		test_x86_32_unit("Hello World! Hello Worl", hash: 0x3a4235ef)
		test_x86_32_unit("Hello World! Hello World", hash: 0xd6a558d2)
		test_x86_32_unit("Hello World! Hello World!", hash: 0xbe480fc)
		test_x86_32_unit("Hello World! Hello World! ", hash: 0x2ebfb07b)
		test_x86_32_unit("Hello World! Hello World! H", hash: 0x5c3be97c)
		test_x86_32_unit("Hello World! Hello World! He", hash: 0x9b1b4ab8)
		test_x86_32_unit("Hello World! Hello World! Hel", hash: 0x5a3a80d)
		test_x86_32_unit("Hello World! Hello World! Hell", hash: 0xe71278b6)
		test_x86_32_unit("Hello World! Hello World! Hello", hash: 0x93f764ad)
		test_x86_32_unit("Hello World! Hello World! Hello ", hash: 0xcc58a5e2)
		test_x86_32_unit("Hello World! Hello World! Hello W", hash: 0xe0fb50b)
		test_x86_32_unit("Hello World! Hello World! Hello Wo", hash: 0xa61aaf9c)
		test_x86_32_unit("Hello World! Hello World! Hello Wor", hash: 0xf7e33af3)
		test_x86_32_unit("Hello World! Hello World! Hello Worl", hash: 0x40a0f31)
		test_x86_32_unit("Hello World! Hello World! Hello World", hash: 0x1482ae00)
		test_x86_32_unit("Hello World! Hello World! Hello World!", hash: 0x7e69caf)
		test_x86_32_unit("メ", hash: 0xe782f64e)
		test_x86_32_unit("メロ", hash: 0xfcf71bbf)
		test_x86_32_unit("メロス", hash: 0x505ef550)
		test_x86_32_unit("メロスは", hash: 0xba921e0c)
		test_x86_32_unit("メロスは激", hash: 0x7f477244)
		test_x86_32_unit("メロスは激怒", hash: 0xb36c3b80)
		test_x86_32_unit("メロスは激怒し", hash: 0x64a0499d)
		test_x86_32_unit("メロスは激怒した", hash: 0xed1ba65)
		test_x86_32_unit("メロスは激怒した。", hash: 0xcf51463f)
		test_x86_32_unit("メロスは激怒した。必", hash: 0x6c8b61ba)
		test_x86_32_unit("メロスは激怒した。必ず", hash: 0xfb9028b7)
		test_x86_32_unit("メロスは激怒した。必ず、", hash: 0xedb03bba)
		test_x86_32_unit("メロスは激怒した。必ず、か", hash: 0xcfe951e6)
		test_x86_32_unit("メロスは激怒した。必ず、かの", hash: 0xa4ba3f5a)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪", hash: 0x920742b2)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智", hash: 0x5b4d6308)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴", hash: 0x7d16c4e)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐", hash: 0x7ba0a512)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の", hash: 0x5c203c6c)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王", hash: 0x51dea28f)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を", hash: 0x45894cdb)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除", hash: 0x51cbe598)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除か", hash: 0x1d4521c7)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かな", hash: 0x30ca595c)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけ", hash: 0x9eb5d852)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけれ", hash: 0xab8c1fd8)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければ", hash: 0xafe8d02a)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければな", hash: 0x664b1c00)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければなら", hash: 0xbe0c58db)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬ", hash: 0x33f09b9)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと", hash: 0x6c9063e4)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決", hash: 0x44208555)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意", hash: 0xad35fa58)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意し", hash: 0xaaef12d6)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した", hash: 0x342ee5b)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した。", hash: 0xa7a18dc8)
	}
	
	func test_x86_32_seed() {
		test_x86_32_unit("", hash: 0xf9cc0ea8, seed: 0x7fffffff)
		test_x86_32_unit("H", hash: 0x52067a84, seed: 0x7fffffff)
		test_x86_32_unit("He", hash: 0xdad0cd8d, seed: 0x7fffffff)
		test_x86_32_unit("Hel", hash: 0xd9ccf8c3, seed: 0x7fffffff)
		test_x86_32_unit("Hell", hash: 0x5e4fc438, seed: 0x7fffffff)
		test_x86_32_unit("Hello", hash: 0x496e26a1, seed: 0x7fffffff)
		test_x86_32_unit("Hello ", hash: 0xe639ffc1, seed: 0x7fffffff)
		test_x86_32_unit("Hello W", hash: 0x71be9a65, seed: 0x7fffffff)
		test_x86_32_unit("Hello Wo", hash: 0xda572088, seed: 0x7fffffff)
		test_x86_32_unit("Hello Wor", hash: 0xf4bb8b35, seed: 0x7fffffff)
		test_x86_32_unit("Hello Worl", hash: 0xc0c26ccc, seed: 0x7fffffff)
		test_x86_32_unit("Hello World", hash: 0xf53f651c, seed: 0x7fffffff)
		test_x86_32_unit("Hello World!", hash: 0xf98a8b8e, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! ", hash: 0x33ba4ced, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! H", hash: 0xaa1a19aa, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! He", hash: 0xfedc4a52, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hel", hash: 0xa558f6eb, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hell", hash: 0x36ca699d, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello", hash: 0x72f3f42c, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello ", hash: 0x452bca46, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello W", hash: 0xff0dfe83, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello Wo", hash: 0x6d340022, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello Wor", hash: 0x3f5df9f2, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello Worl", hash: 0xf438ccc4, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World", hash: 0x858bec97, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World!", hash: 0x47fcc800, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! ", hash: 0x5abd793, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! H", hash: 0x608e84f5, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! He", hash: 0x1abc31aa, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hel", hash: 0x10254abf, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hell", hash: 0x7ee66698, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello", hash: 0x78e938d4, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello ", hash: 0x12b7bdaa, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello W", hash: 0x4dba8730, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello Wo", hash: 0x6e6095ff, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello Wor", hash: 0x2f6a2507, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello Worl", hash: 0x9267978a, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello World", hash: 0xc7d6009, seed: 0x7fffffff)
		test_x86_32_unit("Hello World! Hello World! Hello World!", hash: 0xf77bb8d0, seed: 0x7fffffff)
		test_x86_32_unit("メ", hash: 0xd6b834c8, seed: 0x7fffffff)
		test_x86_32_unit("メロ", hash: 0xfdf88951, seed: 0x7fffffff)
		test_x86_32_unit("メロス", hash: 0xf621e9b2, seed: 0x7fffffff)
		test_x86_32_unit("メロスは", hash: 0xdfdc597a, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激", hash: 0x524d6284, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒", hash: 0xdd077149, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒し", hash: 0xf7a35869, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した", hash: 0xe2ca1905, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。", hash: 0xa33595a4, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必", hash: 0x25a954d5, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず", hash: 0xcb6ce0a6, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、", hash: 0xf6c78c74, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、か", hash: 0xc5ae5c55, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの", hash: 0xe6c53e3, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪", hash: 0x689f2961, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智", hash: 0xeed08cae, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴", hash: 0x3cc5dd77, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐", hash: 0xe89de7ba, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の", hash: 0xb78af695, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王", hash: 0x3aff212c, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を", hash: 0x3c3984c3, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除", hash: 0x292ab73a, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除か", hash: 0xe7365126, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かな", hash: 0xb3cac03d, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけ", hash: 0x4982639, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけれ", hash: 0x2a468299, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければ", hash: 0x4ee66b5e, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければな", hash: 0xb757b178, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければなら", hash: 0x54d0d5fa, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬ", hash: 0x6d9491a9, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと", hash: 0xe787246d, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決", hash: 0xa320c6e8, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意", hash: 0x409958f5, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意し", hash: 0x11ad4d29, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した", hash: 0xcc64b40b, seed: 0x7fffffff)
		test_x86_32_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した。", hash: 0xea95d42e, seed: 0x7fffffff)
	}
	
	func test_x86_32_unit(_ key: String, hash: UInt32, seed: UInt32 = 0) {
		XCTAssertEqual(MurmurHash3.x86_32(Array(key.utf8), seed: seed), hash, String.init(format: "key[%@] seed[%u]", key, seed))
		XCTAssertEqual(MurmurHash3.x86_32(key, seed: seed), hash, String.init(format: "key[%@] seed[%u]", key, seed))
		XCTAssertEqual(MurmurHash3.x86_32(key.data(using: .utf8)!, seed: seed), hash, String.init(format: "key[%@] seed[%u]", key, seed))
	}

	func test_x86_32_file() {
		#if SWIFT_PACKAGE
		print("\(self.description)SwiftPM-Building skipped UnitTest that used resources.")
		#else
		let bundle = Bundle(for: type(of: self))
		let path = bundle.path(forResource: "alice29", ofType: "txt")!
		let data = NSData(contentsOfFile: path)! as Data
		
		XCTAssertEqual(MurmurHash3.x86_32(data), 0xcae14481)
		XCTAssertEqual(MurmurHash3.x86_32(data, seed: 0x7fffffff), 0xf9eb2993)
		#endif
	}
	

	
	// MARK: - x86_128
	func test_x86_128() {
		test_x86_128_unit("", hash: "0x0000")
		test_x86_128_unit("H", hash: "0xf69feb5df45637a0f45637a0f45637a0")
		test_x86_128_unit("He", hash: "0x47f82b373b8fc7283b8fc7283b8fc728")
		test_x86_128_unit("Hel", hash: "0x7b0cd2cdcc2b995ccc2b995ccc2b995c")
		test_x86_128_unit("Hell", hash: "0x7f771597e65bee6ae65bee6ae65bee6a")
		test_x86_128_unit("Hello", hash: "0x2360ae465e6336c6ad45b3f4ad45b3f4")
		test_x86_128_unit("Hello ", hash: "0x497dc9d9b73bad59a57b7235a57b7235")
		test_x86_128_unit("Hello W", hash: "0x3d021fe8d111dc31b6345ff3b6345ff3")
		test_x86_128_unit("Hello Wo", hash: "0xdb37ce0fe9a99ae0da8c411bda8c411b")
		test_x86_128_unit("Hello Wor", hash: "0x107e2665706ff8b8eb00bf34e910bf63")
		test_x86_128_unit("Hello Worl", hash: "0x2444bd95337fb2193d57dfac56dfdf0c")
		test_x86_128_unit("Hello World", hash: "0x92cafa6a59653c6540fffff0b3beb9c")
		test_x86_128_unit("Hello World!", hash: "0x6bee9883eb1be4f59dfb7172ae3fbea9")
		test_x86_128_unit("Hello World! ", hash: "0xc85c2fe13e579f88205695c8120178a3")
		test_x86_128_unit("Hello World! H", hash: "0xaaadb4452b35ce375a481289ecaa84fe")
		test_x86_128_unit("Hello World! He", hash: "0x784f7f08ab145b43cf27d08dc5413b50")
		test_x86_128_unit("Hello World! Hel", hash: "0x82475db0161f88d8850474822a76794a")
		test_x86_128_unit("Hello World! Hell", hash: "0xa0cf95de87e61640ad45f08dc508c90a")
		test_x86_128_unit("Hello World! Hello", hash: "0x453fc5363af752fbaa52e054540a402c")
		test_x86_128_unit("Hello World! Hello ", hash: "0x16e0ea8a87dc1e1968ba7919c38d718")
		test_x86_128_unit("Hello World! Hello W", hash: "0xa1bb3aeeb021f26a8d88a16140ada06")
		test_x86_128_unit("Hello World! Hello Wo", hash: "0x9fed48e5144ba009b58d3d34b62daee2")
		test_x86_128_unit("Hello World! Hello Wor", hash: "0x5e0bfa86a6c2fe4b16a426fc9c59806a")
		test_x86_128_unit("Hello World! Hello Worl", hash: "0xa6ab4d82ed6fbf3f627af123264aa386")
		test_x86_128_unit("Hello World! Hello World", hash: "0x776c2a21a491f2be85e490296ce4db25")
		test_x86_128_unit("Hello World! Hello World!", hash: "0x86163d2b245b8ee23c4d056024166d77")
		test_x86_128_unit("Hello World! Hello World! ", hash: "0xe9c90b461d053dc9fb456143a9a7aad")
		test_x86_128_unit("Hello World! Hello World! H", hash: "0x1f21c189e59ba8379559e980acb9cad8")
		test_x86_128_unit("Hello World! Hello World! He", hash: "0x846027381e604d1d88f1ce28caafed7d")
		test_x86_128_unit("Hello World! Hello World! Hel", hash: "0x9ad096e1712df56be32adefb3cf31988")
		test_x86_128_unit("Hello World! Hello World! Hell", hash: "0xbae66e9de4b7bfa9ad918ed5b8694d0d")
		test_x86_128_unit("Hello World! Hello World! Hello", hash: "0x1f806c1c9e417e0874fe5e25f3d2e00")
		test_x86_128_unit("Hello World! Hello World! Hello ", hash: "0x4855a598c76f875e7760fe307dcc7b58")
		test_x86_128_unit("Hello World! Hello World! Hello W", hash: "0x27294dbafc42c30f321c908f55d4be")
		test_x86_128_unit("Hello World! Hello World! Hello Wo", hash: "0xe63975239102cb333dc5ae42c304eaa7")
		test_x86_128_unit("Hello World! Hello World! Hello Wor", hash: "0x39ac02d0185658e57e1daf6b7b1ccf52")
		test_x86_128_unit("Hello World! Hello World! Hello Worl", hash: "0x436b1e30e43564f7ad455aa64d1f128a")
		test_x86_128_unit("Hello World! Hello World! Hello World", hash: "0x1c95a3f7906f972c94ce43d912a4eebc")
		test_x86_128_unit("Hello World! Hello World! Hello World!", hash: "0x97c20b59c7de4e21bf270576dcfc2f")
		test_x86_128_unit("メ", hash: "0x6fa5c4ad8756ef5c8756ef5c8756ef5c")
		test_x86_128_unit("メロ", hash: "0xc2d1e50add88ceacd2e42bd3d2e42bd3")
		test_x86_128_unit("メロス", hash: "0xdcfa2df52a3c5ab9d74d6d304e537d23")
		test_x86_128_unit("メロスは", hash: "0x8d560049dbf2279ad4419805533fd567")
		test_x86_128_unit("メロスは激", hash: "0xe0de0a4c8c5090bcf2fd9f85cc26bea")
		test_x86_128_unit("メロスは激怒", hash: "0xf1f2bd9fdbc3344ca763431d17ef4fc6")
		test_x86_128_unit("メロスは激怒し", hash: "0x30bdbe4addaf117141b3bc1736790341")
		test_x86_128_unit("メロスは激怒した", hash: "0xf98668d0c1c656582d35b90511938718")
		test_x86_128_unit("メロスは激怒した。", hash: "0xd518bf44b2ced5f96d0e4a3c89c5230a")
		test_x86_128_unit("メロスは激怒した。必", hash: "0xa8b5b7e7b4c0e27289aeaac13929d6")
		test_x86_128_unit("メロスは激怒した。必ず", hash: "0x20b46c6280886cc030385f326baa825")
		test_x86_128_unit("メロスは激怒した。必ず、", hash: "0xa576b3d798a1eed80c9cc0d5c29db1")
		test_x86_128_unit("メロスは激怒した。必ず、か", hash: "0x74494bde8d3585b53da6f36624c5e0a0")
		test_x86_128_unit("メロスは激怒した。必ず、かの", hash: "0x1d028a63972c672b69df633a4bf21e2e")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪", hash: "0x890023ea402a56a02f09f13edbf3db48")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智", hash: "0x3964b0ac3b3af3b33abcc6eb0bc262a")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴", hash: "0x555e6dc46da0cb8a8691ca26843222a4")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐", hash: "0xa0144b00499eb44d4b81f4a1b7634afe")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の", hash: "0x85ac8bab897f34ab3275ae0cfb9ef51b")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王", hash: "0x1a55a7bab88c096fdb676afcfe45394f")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を", hash: "0x3909aba427dd85c8a1ac2ae2415bfa8")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除", hash: "0xc397b66ddb4d80e46ede6282f94f22e0")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除か", hash: "0xe13b316523fd6d8f68499306a7e938c9")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かな", hash: "0xda4e550467493b468a1971ac6f224c42")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけ", hash: "0xaf7c3f0af1f675d6bbd200d42503528f")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけれ", hash: "0xc4c52c07d1478765a2f8057e3587fc4")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければ", hash: "0x89e6870daa19944ad94dd0818376d58d")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければな", hash: "0x708c021d4951a3598cec9015572ce743")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければなら", hash: "0xf6167b086ace68b5e24709b6905651a6")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬ", hash: "0x6174657e8ccc173eb4aa9693cfefe845")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと", hash: "0x61e4b0838d5c6150259120e8dcae766f")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決", hash: "0x81e410be43236b8855bdd39cfc4053f")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意", hash: "0xfbd862d9ee653a2f41b1eee76006c767")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意し", hash: "0x59267677116c203f86d72cc166ffb8ee")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した", hash: "0xc8b3215eb33be2a0248de8f714ef3fb3")
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した。", hash: "0xe039433a2d574e3847cc7c20b86bcaf1")
	}
	
	func test_x86_128_seed() {
		test_x86_128_unit("", hash: "0xc129af263e0227f33e0227f33e0227f3", seed: 0x7fffffff)
		test_x86_128_unit("H", hash: "0x7318960e1fae47491fae47491fae4749", seed: 0x7fffffff)
		test_x86_128_unit("He", hash: "0x4365e4103a7873d13a7873d13a7873d1", seed: 0x7fffffff)
		test_x86_128_unit("Hel", hash: "0x85dc4c5c9d784c459d784c459d784c45", seed: 0x7fffffff)
		test_x86_128_unit("Hell", hash: "0x4ce0ccc2f9f7836ef9f7836ef9f7836e", seed: 0x7fffffff)
		test_x86_128_unit("Hello", hash: "0xd199cd6138e926b1c36b04b1c36b04b1", seed: 0x7fffffff)
		test_x86_128_unit("Hello ", hash: "0x5f0c3567eb0ac007634d4b0e634d4b0e", seed: 0x7fffffff)
		test_x86_128_unit("Hello W", hash: "0xa80725c2f24af0d77357255a7357255a", seed: 0x7fffffff)
		test_x86_128_unit("Hello Wo", hash: "0x3505a54c962ed61b4aff379f4aff379f", seed: 0x7fffffff)
		test_x86_128_unit("Hello Wor", hash: "0x7c203edfd070f0eef55e38d596b56c05", seed: 0x7fffffff)
		test_x86_128_unit("Hello Worl", hash: "0x13705dbc5981bb0d16f728744bed8ed4", seed: 0x7fffffff)
		test_x86_128_unit("Hello World", hash: "0x709873d8a7d370259d38e5f401e3bbb", seed: 0x7fffffff)
		test_x86_128_unit("Hello World!", hash: "0xc66703b38475a0687ee6e07dcce15102", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! ", hash: "0x664a44132f3fcfe6da64445e3e215838", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! H", hash: "0xe956e8cff898ad20404c98dd66b68656", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! He", hash: "0x92561cb2cbf4f04510646b19b03ce62", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hel", hash: "0xe86a20fa710c98feebc2dd1c727d648c", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hell", hash: "0xc138efea1430dda096ff61dd6e784098", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello", hash: "0xfefa94925c518e38b771ca4bfb4a482b", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello ", hash: "0xc542740bcb66366953d71d2cbbeacf34", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello W", hash: "0x9df880aaa178d79d2fb2684e49caf02e", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello Wo", hash: "0xd869d794cfabca94b4c6a37f685fba53", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello Wor", hash: "0x6fda44ef63f8e2c749e89b699daf47c4", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello Worl", hash: "0x9bc638af81864f2743a7ab2cfe43b401", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World", hash: "0xadeb390848cc490a4d65f2feea682e2b", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World!", hash: "0xd1ab28e6f4fc514c5e0df753b015261f", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! ", hash: "0xe776adf3d85d884fe3dcaabcc41ee3eb", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! H", hash: "0xc489a0337cab1ec42d18f24b2712da88", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! He", hash: "0xeb3c0b92d9c3d1649f2db2b5eedc85ba", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hel", hash: "0x40443b8b5a338a59b12ef03d8a931cf0", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hell", hash: "0x28f8064df3c60fcd4aa32fab25772035", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello", hash: "0xc53a4ca6c841c9f1b616c84eff1d233", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello ", hash: "0xcc5f21f6700a50071ad7d7ebc49f573e", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello W", hash: "0xcb1dfd35d8462285c0aecd80f61af095", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello Wo", hash: "0x2cef4faf79e3ada9184947ed8de9e9d1", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello Wor", hash: "0x37b4ae7d830f33d938eae37e1645eef9", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello Worl", hash: "0x66b67007c5b2c83dcf2c11754d9302d", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello World", hash: "0x456230f8ed13b0bfaf2d3f8cc97af5a", seed: 0x7fffffff)
		test_x86_128_unit("Hello World! Hello World! Hello World!", hash: "0xe3c6f6b4f6a9a924be2cec052379f232", seed: 0x7fffffff)
		test_x86_128_unit("メ", hash: "0x62a70af6d16910e6d16910e6d16910e6", seed: 0x7fffffff)
		test_x86_128_unit("メロ", hash: "0xb8d6bf7cae80bd235bcf4c9c5bcf4c9c", seed: 0x7fffffff)
		test_x86_128_unit("メロス", hash: "0x7fea30b0b9fbab33c5857aa8c4632bc8", seed: 0x7fffffff)
		test_x86_128_unit("メロスは", hash: "0xe1f61017759917bc21fb94451fdc5d5", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激", hash: "0x846de16084ffaa5ccd79f68b3eaa8512", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒", hash: "0xcea02c7d27d7d2263b47810c738c4d75", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒し", hash: "0xaecfb384cfe9096b521dad802d7f968f", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した", hash: "0x285ddf676d3d1ad72c161f1cc15fad4c", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。", hash: "0x327aa9ff359a9c185c6242cc45e44c9", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必", hash: "0xd2e43ce297217fc6b007e6eceb9f7a71", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず", hash: "0xc373772dc0525fc29a8196e53c06e29a", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、", hash: "0x1ce7331e972c7a606e036ddd3dbddd52", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、か", hash: "0x7bb9d3581b2fe2f955382abdf9e9025", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの", hash: "0xf3213c602a5f34aeaaaa59e5e7a3b782", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪", hash: "0x1a31767cf04e503bf7a956a1538082a4", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智", hash: "0x8c1628206889704e892e2b53dc391c7d", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴", hash: "0x7061d1a4cbc037e42934e37f7d624ed4", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐", hash: "0xd91c08f0f68c4d4b8fb890217bcaae4b", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の", hash: "0xc949a441ee6be74831e11322e8dd7c86", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王", hash: "0xda8065c9dc4e63e1f39d3cbc1a04268d", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を", hash: "0xa226ccbf8bad3989d6accb1a33b03265", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除", hash: "0x3a7c58e7fd011d1697f047b4fe844a0b", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除か", hash: "0x583a7a53674b8046597d6730c1d42ced", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かな", hash: "0x1e81c6e850239275eb0662b340590731", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけ", hash: "0x78dac6e944baa0e7f0aac887c1b77aec", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけれ", hash: "0xa5c4672abb91a3b5a7a5f358a6e9567", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければ", hash: "0x7ef3343f2b87c0e399df547293b348ba", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければな", hash: "0xbcefe87c894736caccf0b922bd30c12a", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければなら", hash: "0x50e904e090d5190c3cafa66ec08423a9", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬ", hash: "0xc92d631cacb68c121208914a52711b5e", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと", hash: "0x6825fef7dee6200ba225be174259c0d6", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決", hash: "0x765959d97696102779d78691e7f5b6cc", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意", hash: "0x47785c03a799aae38090aed87937bc8a", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意し", hash: "0x8f93921558323fb8e202e9f17c7b5e2", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した", hash: "0x8d13da979bea05707064c2e09476bae4", seed: 0x7fffffff)
		test_x86_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した。", hash: "0x83804eb2d89d84ccf95d1881555aa0ad", seed: 0x7fffffff)
	}
	
	func test_x86_128_unit(_ key: String, hash: String, seed: UInt32 = 0) {

		var out = (h1: UInt32(0), h2: UInt32(0), h3: UInt32(0), h4: UInt32(0))
		var hash2 = ""

		out = MurmurHash3.x86_128(Array(key.utf8), seed: seed)
		hash2 = String.init(format: "0x%x%x%x%x", out.h1, out.h2, out.h3, out.h4)
		XCTAssertEqual(hash, hash2, String.init(format: "key[%@] seed[%u]", key, seed))

		out = MurmurHash3.x86_128(key, seed: seed)
		hash2 = String.init(format: "0x%x%x%x%x", out.h1, out.h2, out.h3, out.h4)
		XCTAssertEqual(hash, hash2, String.init(format: "key[%@] seed[%u]", key, seed))

		out = MurmurHash3.x86_128(key.data(using: .utf8)!, seed: seed)
		hash2 = String.init(format: "0x%x%x%x%x", out.h1, out.h2, out.h3, out.h4)
		XCTAssertEqual(hash, hash2, String.init(format: "key[%@] seed[%u]", key, seed))
	}
	
	func test_x86_128_file() {
		#if SWIFT_PACKAGE
		print("\(self.description)SwiftPM-Building skipped UnitTest that used resources.")
		#else
		let bundle = Bundle(for: type(of: self))
		let path = bundle.path(forResource: "alice29", ofType: "txt")!
		let data = NSData(contentsOfFile: path)! as Data

		var out = (h1: UInt32(0), h2: UInt32(0), h3: UInt32(0), h4: UInt32(0))

		out = MurmurHash3.x86_128(data)
		XCTAssertEqual(out.h1, 0xf3d97392)
		XCTAssertEqual(out.h2, 0x44076bea)
		XCTAssertEqual(out.h3, 0xaaa983c7)
		XCTAssertEqual(out.h4, 0xcc4c7251)

		out = MurmurHash3.x86_128(data, seed: 0x7fffffff)
		XCTAssertEqual(out.h1, 0x66529317)
		XCTAssertEqual(out.h2, 0x3c66d76c)
		XCTAssertEqual(out.h3, 0xed7111d2)
		XCTAssertEqual(out.h4, 0xec5190a3)
		#endif
	}
	
	
	
	// MARK: - x64_128
	func test_x64_128() {
		test_x64_128_unit("", hash: "0x00")
		test_x64_128_unit("H", hash: "0xc5bf6fe79453c0d9788103cc1cea56db")
		test_x64_128_unit("He", hash: "0x888fe8bbaf7ecc8418ac28358c66acab")
		test_x64_128_unit("Hel", hash: "0xd630daf64f42f36370b46eed8a7672de")
		test_x64_128_unit("Hell", hash: "0x70e4c7599b5ddbdcee16db5b93aebaa6")
		test_x64_128_unit("Hello", hash: "0x35b974ff55d4c41ca000eacf29125544")
		test_x64_128_unit("Hello ", hash: "0x2b05afe76a9ddb7df8e0330f2718a73")
		test_x64_128_unit("Hello W", hash: "0x3a3043ca4c64cbb4a096bdec7d63cc94")
		test_x64_128_unit("Hello Wo", hash: "0x8538fe7c0cd14c7f236facfb6f9a0237")
		test_x64_128_unit("Hello Wor", hash: "0xb300949662a869f0d661d6f5653d2d56")
		test_x64_128_unit("Hello Worl", hash: "0x401052776a6b73c9d449172d0fc6e27a")
		test_x64_128_unit("Hello World", hash: "0x1a6326abc1a0c2db83e61fcf9fc0b427")
		test_x64_128_unit("Hello World!", hash: "0x80025454af3196b2e57813856f452fa6")
		test_x64_128_unit("Hello World! ", hash: "0xf5712319ef57bd9e6d510360942a3da3")
		test_x64_128_unit("Hello World! H", hash: "0xc56330f66d41c077f33a297397f62759")
		test_x64_128_unit("Hello World! He", hash: "0x40d8df6543b738938b09733222e62f72")
		test_x64_128_unit("Hello World! Hel", hash: "0x6a65d1648b43a4a1dcb945245c2303bb")
		test_x64_128_unit("Hello World! Hell", hash: "0x7eb40cd1117eff089b0ecff7cca4d6b1")
		test_x64_128_unit("Hello World! Hello", hash: "0x9927edf82bbdf2e98f64babea479f1a")
		test_x64_128_unit("Hello World! Hello ", hash: "0x8a05c7302dc33514af105dff03d6a876")
		test_x64_128_unit("Hello World! Hello W", hash: "0x9ca2129e53afc6841828ea8e7e7ab057")
		test_x64_128_unit("Hello World! Hello Wo", hash: "0x56929581091522d0b44c0956f029dc5f")
		test_x64_128_unit("Hello World! Hello Wor", hash: "0xdac49585f580f7231477794379a509a2")
		test_x64_128_unit("Hello World! Hello Worl", hash: "0xd6825af09b31e6cb86174cc616880f36")
		test_x64_128_unit("Hello World! Hello World", hash: "0x955807c45e776ed525f04a7c18ec8772")
		test_x64_128_unit("Hello World! Hello World!", hash: "0xe881a28e49269b1e8d0d724eecb72e66")
		test_x64_128_unit("Hello World! Hello World! ", hash: "0x820a056bc3de9f91d42cf31f9eed6a55")
		test_x64_128_unit("Hello World! Hello World! H", hash: "0x65033ab21496df544f35b825911180d")
		test_x64_128_unit("Hello World! Hello World! He", hash: "0x5f3eefb73841db2fe4643b0d9cef2489")
		test_x64_128_unit("Hello World! Hello World! Hel", hash: "0xbc4deefad1d5a24650e47fbd9242fae2")
		test_x64_128_unit("Hello World! Hello World! Hell", hash: "0xc069a70c80d009b45b01cb474edb9f92")
		test_x64_128_unit("Hello World! Hello World! Hello", hash: "0xfad2258acff0645320a18c216de7a129")
		test_x64_128_unit("Hello World! Hello World! Hello ", hash: "0x925aa310b76a3ffaed5e83cfea01bce2")
		test_x64_128_unit("Hello World! Hello World! Hello W", hash: "0x24aed66473fef8445ad5fd2b196d00f")
		test_x64_128_unit("Hello World! Hello World! Hello Wo", hash: "0x9a120ba0c3c4c695b25c0d4cf3386ec0")
		test_x64_128_unit("Hello World! Hello World! Hello Wor", hash: "0xfe2901d281ddce8bc5f2a9ad9ec047e")
		test_x64_128_unit("Hello World! Hello World! Hello Worl", hash: "0x8a0577578c3ba68714bb0e1f770fb007")
		test_x64_128_unit("Hello World! Hello World! Hello World", hash: "0xdefbd673001125af62ba844c3cc22f6c")
		test_x64_128_unit("Hello World! Hello World! Hello World!", hash: "0xf6cada2f71087efe66e67752734b005d")
		test_x64_128_unit("メ", hash: "0x2a43e629c9fce5fc769880d1c8dc2f03")
		test_x64_128_unit("メロ", hash: "0xd781f1bb87ebeee2db777f4b98c83e58")
		test_x64_128_unit("メロス", hash: "0x1e7f1fc32ba9fa854c5c8f469ccdc395")
		test_x64_128_unit("メロスは", hash: "0x30ac378fd4d3b1bb8f3c177cc26dbf91")
		test_x64_128_unit("メロスは激", hash: "0xaa1347debb4c9d16bbde75d328a940dc")
		test_x64_128_unit("メロスは激怒", hash: "0x8cb1c62630c84c5f3394c12f04e4cdb1")
		test_x64_128_unit("メロスは激怒し", hash: "0x1eadbd1a5815b6d461917aaf86a0bec2")
		test_x64_128_unit("メロスは激怒した", hash: "0x4bd0cb475c7d2af2760d8d7840f9c39d")
		test_x64_128_unit("メロスは激怒した。", hash: "0xd11ab25c98cb5fd93863575414e126d0")
		test_x64_128_unit("メロスは激怒した。必", hash: "0xc19ca373b32c58d598bb8b2a3dfd00e4")
		test_x64_128_unit("メロスは激怒した。必ず", hash: "0x78509e84e100892cff69834c1baefbf3")
		test_x64_128_unit("メロスは激怒した。必ず、", hash: "0x6e0b330369272a40d2e5d513a0766cd7")
		test_x64_128_unit("メロスは激怒した。必ず、か", hash: "0x546cff45a333cd6819797301bea4656e")
		test_x64_128_unit("メロスは激怒した。必ず、かの", hash: "0xb5cc7dde6da069051322b04a185c6d71")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪", hash: "0x57999ce3bce577d06f2abc743c28a225")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智", hash: "0x3dd5c8cbdd27cb7c37b3992a95704ec0")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴", hash: "0x3914c03d265c7e05ea1363fdcdcff70e")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐", hash: "0x9aa72670f09882ac426412332a864e83")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の", hash: "0x967a7ee42733c2178f1627862e6ddbe5")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王", hash: "0xb201bb5b4cfd9ecda18b6b38e954dcc0")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を", hash: "0x4a14c7b5b6fa05f2d7edebb60c453123")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除", hash: "0xe1da4c7a9d1332ebbb0e56c9115ae113")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除か", hash: "0x1b19cfdcff9d936e3d5836d53701a19c")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かな", hash: "0x70927a4646bcb234a401ca088d06dab")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけ", hash: "0x786e875d1cef28e013dfe78fd166dca1")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけれ", hash: "0xcb2a8e9e86638212b6505a37a4e28155")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければ", hash: "0x4ba9862934b2eed82ee110092662a907")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければな", hash: "0xedab0540b9b055c549bd972cebb5ea4")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければなら", hash: "0xd9e69d56ec12c33b65cf3a96f0a6a79")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬ", hash: "0x5c2b28bbce6cbbc046ef439d7bdd9986")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと", hash: "0x4046f7bb5dd8dc57bbe750ee0544c103")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決", hash: "0x1e976ae0cf51d7255955986e08c56ee2")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意", hash: "0xed5fd57c6f4c24b28482e395310a988f")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意し", hash: "0xf1cfb00b24ab2fe38bc73c002a68a447")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した", hash: "0x5d7902706e279ece573f11b1faf7ecbc")
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した。", hash: "0x1a8b64f8fe531d9af26ecc350566faa1")
	}
	
	func test_x64_128_seed() {
		test_x64_128_unit("", hash: "0x656ac7570e166c3fc34c2ca1ed468e40", seed: 0x7fffffff)
		test_x64_128_unit("H", hash: "0xb6f1db9dc8dbb252a96d85416bcd05cc", seed: 0x7fffffff)
		test_x64_128_unit("He", hash: "0x5978e899f89cfb23b29d6eb3f6293cd2", seed: 0x7fffffff)
		test_x64_128_unit("Hel", hash: "0x9ef27f7dd28706c669aefe3f757b4e04", seed: 0x7fffffff)
		test_x64_128_unit("Hell", hash: "0x110add5967078186c3dc4512cebd0c73", seed: 0x7fffffff)
		test_x64_128_unit("Hello", hash: "0x4c1ffe079196f645e18782f31afa127", seed: 0x7fffffff)
		test_x64_128_unit("Hello ", hash: "0xb99129e07dde4cd62f4a5b0930c61899", seed: 0x7fffffff)
		test_x64_128_unit("Hello W", hash: "0xd76e8941b32b73421c799e18db1ed4b4", seed: 0x7fffffff)
		test_x64_128_unit("Hello Wo", hash: "0x6cf5a63c933076a84b766c9ae490fb88", seed: 0x7fffffff)
		test_x64_128_unit("Hello Wor", hash: "0x61c1e0e086ed29438c41461abcca1ff7", seed: 0x7fffffff)
		test_x64_128_unit("Hello Worl", hash: "0x5f699d27e1c98c92eef86cd143077f09", seed: 0x7fffffff)
		test_x64_128_unit("Hello World", hash: "0x1ac978166e46cdb18e1c8018be32bc8", seed: 0x7fffffff)
		test_x64_128_unit("Hello World!", hash: "0xa8c348436bb9375369e62d2b2cefbb56", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! ", hash: "0xa6cb7bc52fe64dadffc0064cae7049f8", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! H", hash: "0x5e991d1dba79df64e26c1b25797a1e5e", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! He", hash: "0xa260273bc861742e8c737aadcb35b6ef", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hel", hash: "0x6997900192048fc188270e384fe42290", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hell", hash: "0xab74508292b29772164159d960a70837", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello", hash: "0x28d1ed647ba9f616feb7341079af4e57", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello ", hash: "0x9abc23cafb81ae8b871894afd7e61322", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello W", hash: "0x79a09413d46eb96d2613a419cf57dc7d", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello Wo", hash: "0xb0ab18ad6b99ee42d4cdd96add59b3", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello Wor", hash: "0xcdac7eaa21e062ec518ce183b6a98fe1", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello Worl", hash: "0xcb28ad682a96e382ce579b24dc09b16f", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World", hash: "0x9ea2af5ac57f27e9220870ae912de787", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World!", hash: "0x6028586a8c3df476fbd535aec6551aab", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! ", hash: "0x6e80b1d590681f56ecc88acd4efbacd7", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! H", hash: "0x470901deb8afc370b7337fc9744d68d", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! He", hash: "0x3fa9d95fb51176e6537f94b30f8d1be9", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hel", hash: "0x4793d7c1a51fa9cb3f5bc05edfb57da6", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hell", hash: "0x6cdbdd69e4065c0468446e9ea5961d90", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello", hash: "0xfb1d2d6e7c235605a1dc348565dcd3e8", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello ", hash: "0xd286082ab95bdfa2c5351841253a167c", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello W", hash: "0x369408e239d94af5608726c5513b4000", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello Wo", hash: "0x4c59a12acbd643b1e283120558a10132", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello Wor", hash: "0x875519f61bc550bd770e353e4556df59", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello Worl", hash: "0x39982c42dd8e1422441eef7c7b7ff770", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello World", hash: "0xb60a51593d23430beca36a0db29a089", seed: 0x7fffffff)
		test_x64_128_unit("Hello World! Hello World! Hello World!", hash: "0xd2c2001b93170cb1945953bac30824a0", seed: 0x7fffffff)
		test_x64_128_unit("メ", hash: "0xeec371b5c5a5186d8a8d64727db65b7b", seed: 0x7fffffff)
		test_x64_128_unit("メロ", hash: "0x84f62e87b568ca00786224b4f3899c94", seed: 0x7fffffff)
		test_x64_128_unit("メロス", hash: "0xa3012f4a9e5ff3f372207cd889383582", seed: 0x7fffffff)
		test_x64_128_unit("メロスは", hash: "0xca529a1ab3171dd6ed71f09f796bc277", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激", hash: "0x9ad675df59adf624e3f702c3c0216196", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒", hash: "0x28b384f28b9d0e1a84d45b9ff9034f1b", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒し", hash: "0x9f0749a8c336313885bb97db13b20d7b", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した", hash: "0xcb01479bfccb173538fdfa2d091b11c3", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。", hash: "0x85b5eeab896ba7d63199714d19abeaa7", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必", hash: "0x7253b6a215188eddeee9b6995e09c39", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず", hash: "0xdaf7d742bb26f92c7bf04bbceab158db", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、", hash: "0x44c312af19f25ca09631c07365566d8c", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、か", hash: "0x40409cd0118ab62fa730037ca29ac49b", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの", hash: "0x6174e3858b941d3e776f58c6bcab8fa2", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪", hash: "0x5567e3fc547654579ed610d7485739d5", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智", hash: "0xea0d87ff505350e56ad3d3fb150a7451", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴", hash: "0xfeedfa02291bdae86d468d1017df67", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐", hash: "0xeb8dcfb757190ba0f7fdd32c3ab6a9a1", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の", hash: "0x1fce75bfe72dc57483a13d7c62a4b527", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王", hash: "0x4e6a735ac53b20e541c02e094be1eeec", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を", hash: "0x1c88d363292a861a9a0ba2f556c8d78b", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除", hash: "0xc211082e0608e0134cf1fea68d9a91e5", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除か", hash: "0xc2d0739e22ca81152d588d81374c7aec", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かな", hash: "0x17555ba8081b99e03367f795ab83379d", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけ", hash: "0xef008f965b2fc16c6935db07abc4bcb3", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなけれ", hash: "0xbee364d1bd50ab96c1b35ee8e7fd4d89", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければ", hash: "0xeb1f8ef1bcdb3726bbc5f247a648e965", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければな", hash: "0xbedd79220460069415ef0341131c6777", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければなら", hash: "0xec4b5e2ae4f8396feb9631612dbdbd1f", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬ", hash: "0xb2ef2195cedae1cdb49a53d4146aa258", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと", hash: "0x7b876f82ae61493ca5b17261a1eb12dd", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決", hash: "0x9538b2c2e3924100e262445f4b75ec69", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意", hash: "0x8162f16edae6a31de6056e92c533fd13", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意し", hash: "0xd5d6e5058bd997cca9ffabca83c97eb8", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した", hash: "0x1318f75d00986b689d15e6dd5f753a46", seed: 0x7fffffff)
		test_x64_128_unit("メロスは激怒した。必ず、かの邪智暴虐の王を除かなければならぬと決意した。", hash: "0x2b7beaca8e84e4e64046aed01f5382ef", seed: 0x7fffffff)
	}
	
	func test_x64_128_unit(_ key: String, hash: String, seed: UInt32 = 0) {

		var out = (h1: UInt64(0), h2: UInt64(0))
		var hash2 = ""
		
		out = MurmurHash3.x64_128(Array(key.utf8), seed: seed)
		hash2 = String.init(format: "0x%lx%lx", out.h1, out.h2)
		XCTAssertEqual(hash, hash2, String.init(format: "key[%@] seed[%u]", key, seed))
		
		out = MurmurHash3.x64_128(key, seed: seed)
		hash2 = String.init(format: "0x%lx%lx", out.h1, out.h2)
		XCTAssertEqual(hash, hash2, String.init(format: "key[%@] seed[%u]", key, seed))
		
		out = MurmurHash3.x64_128(key.data(using: .utf8)!, seed: seed)
		hash2 = String.init(format: "0x%lx%lx", out.h1, out.h2)
		XCTAssertEqual(hash, hash2, String.init(format: "key[%@] seed[%u]", key, seed))
	}
	
	func test_x64_128_file() {
		#if SWIFT_PACKAGE
		print("\(self.description)SwiftPM-Building skipped UnitTest that used resources.")
		#else
		let bundle = Bundle(for: type(of: self))
		let path = bundle.path(forResource: "alice29", ofType: "txt")!
		let data = NSData(contentsOfFile: path)! as Data
		
		var out = (h1: UInt64(0), h2: UInt64(0))
		
		out = MurmurHash3.x64_128(data)
		XCTAssertEqual(out.h1, 0xef12617f3e2a5f9a)
		XCTAssertEqual(out.h2, 0x44b3598f2e09cd50)
		
		out = MurmurHash3.x64_128(data, seed: 0x7fffffff)
		XCTAssertEqual(out.h1, 0xc9e3c738ae105764)
		XCTAssertEqual(out.h2, 0xb1d34bb24aa326c4)
		#endif
	}

	
	
	// MARK: - Performance
	func testPerformance() {
        self.measure {
			let vector = "0123456789ABCDEF0123456"

			for i in 0..<1000 {
				_ = i
				
				for j in 0...vector.count{
					let vector2 = String.init(vector.prefix(j))
					_ = MurmurHash3.x86_32(vector2)
					_ = MurmurHash3.x86_128(vector2)
					_ = MurmurHash3.x64_128(vector2)
				}
			}
        }
    }
}
