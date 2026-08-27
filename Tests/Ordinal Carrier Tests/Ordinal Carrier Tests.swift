import Carrier
import Ordinal
import Ordinal_Carrier
import Testing

@Suite
struct `Ordinal Carrier Tests` {
    @Test
    func `Underlying representation is the ordinal itself`() {
        let ordinal = Ordinal(42)

        #expect(ordinal.underlying.rawValue == 42)
    }

    @Test
    func `Carrier initializer preserves the ordinal`() {
        let original = Ordinal(42)
        let carried = Ordinal(original)

        #expect(carried.rawValue == original.rawValue)
    }

    @Test
    func `Conformance works through a generic Carrier operation`() {
        func roundTrip<Value: Carrier.`Protocol`>(_ value: consuming Value) -> Value
        where Value.Underlying == Value {
            Value(value)
        }

        #expect(roundTrip(Ordinal(42)).rawValue == 42)
    }
}
