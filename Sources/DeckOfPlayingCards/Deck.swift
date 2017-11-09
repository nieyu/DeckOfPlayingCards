import FisherYates
import PlayingCard

public struct Deck {
	fileprivate var cards: [PlayingCard]

	public static func standard52CardDeck() -> Deck {
		let suits: [Suit] = [.spades, .hearts, .diamonds, .clubs]
		let ranks: [Rank] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]
		
		var cards: [PlayingCard] = []
		for rank in ranks {
			for suit in suits {	
				cards.append(PlayingCard(rank: rank, suit: suit))
			}			
		}
		
		return Deck(cards)
	}	

	public init(_	cards: [PlayingCard]) {
		self.cards = cards	
	}

	public mutating func shuffle() {
		cards.shuffle()
	}

	public mutating func deal() -> PlayingCard? {
		guard !cards.isEmpty else { return nil }
		return cards.removeLast()
	}
}

// MARK: - ExpressibleByArrayLiteral

extension Deck: ExpressibleByArrayLiteral {
	public init(arrayLiteral elements: PlayingCard...) {
		self.init(elements)
	}
}

// MARK: - Equatable 

public func ==(lhs: Deck, rhs: Deck) -> Bool {
	return lhs.cards == rhs.cards
}
