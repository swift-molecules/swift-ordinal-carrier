# swift-ordinal-carrier

Cross-domain integration between Ordinal and Carrier.

This package owns the retroactive `Carrier.Protocol` conformance for `Ordinal`.
An ordinal carries itself, so `Underlying` is `Ordinal`; Carrier supplies the
matching `underlying` property and initializer through its same-type defaults.
