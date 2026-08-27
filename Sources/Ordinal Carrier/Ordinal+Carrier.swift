public import Carrier
public import Ordinal

/// Makes an ordinal its own carried representation.
extension Ordinal: @retroactive Carrier.`Protocol` {

    public typealias Underlying = Ordinal

}
