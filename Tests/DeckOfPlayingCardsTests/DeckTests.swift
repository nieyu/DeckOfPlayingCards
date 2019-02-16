import XCTest

@testable import PlayingCard
@testable import DeckOfPlayingCards

class DeckTest: XCTestCase {
    func testStandard52CardDeck() {
        let reducer: ([PlayingCard], Rank) -> [PlayingCard] = {
            total, eachRank in
            let suits: [Suit] = [.spades, .hearts, .diamonds, .clubs]
            let subTotal = suits.map { eachSuit in
                PlayingCard(rank: eachRank, suit: eachSuit)
            }
            return total + subTotal
        }
        let ranks = [2, 3, 4 , 5, 6, 7, 8, 9, 10, 11, 12, 13, 14].map{ Rank(rawValue: $0) }.compactMap{ $0 }
        let standard = ranks.reduce([PlayingCard](), reducer)
        XCTAssertEqual(Deck.standard52CardDeck(), Deck(standard))
    }
    func testDeal() {
        let card = PlayingCard(rank: Rank.ace, suit: Suit.clubs)
        var deck: Deck = [card]
        
        XCTAssertEqual(deck.deal(), card)
        XCTAssertNil(deck.deal())
    }
    
    static var allTests = [
        ("testStandard52CardDeck", testStandard52CardDeck),
        ("testDeal", testDeal),
    ]
}
