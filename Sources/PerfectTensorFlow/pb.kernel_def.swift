// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/kernel_def.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Tensorflow_KernelDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".KernelDef"

  /// Must match the name of an Op.
  public var op: String = String()

  /// Type of device this kernel runs on.
  public var deviceType: String = String()

  public var constraint: [Tensorflow_KernelDef.AttrConstraint] = []

  /// Names of the Op's input_/output_args that reside in host memory
  /// instead of device memory.
  public var hostMemoryArg: [String] = []

  /// This allows experimental kernels to be registered for an op that
  /// won't be used unless the user specifies a "_kernel" attr with
  /// value matching this.
  public var label: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct AttrConstraint: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_KernelDef.protoMessageName + ".AttrConstraint"

    /// Name of an attr from the Op.
    public var name: String {
      get {return _storage._name}
      set {_uniqueStorage()._name = newValue}
    }

    /// A list of values that this kernel supports for this attr.
    /// Like OpDef.AttrDef.allowed_values, except for kernels instead of Ops.
    public var allowedValues: Tensorflow_AttrValue {
      get {return _storage._allowedValues ?? Tensorflow_AttrValue()}
      set {_uniqueStorage()._allowedValues = newValue}
    }
    /// Returns true if `allowedValues` has been explicitly set.
    public var hasAllowedValues: Bool {return _storage._allowedValues != nil}
    /// Clears the value of `allowedValues`. Subsequent reads from it will return its default value.
    public mutating func clearAllowedValues() {_storage._allowedValues = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      _ = _uniqueStorage()
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeSingularStringField(value: &_storage._name)
          case 2: try decoder.decodeSingularMessageField(value: &_storage._allowedValues)
          default: break
          }
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        if !_storage._name.isEmpty {
          try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
        }
        if let v = _storage._allowedValues {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.op)
      case 2: try decoder.decodeSingularStringField(value: &self.deviceType)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.constraint)
      case 4: try decoder.decodeRepeatedStringField(value: &self.hostMemoryArg)
      case 5: try decoder.decodeSingularStringField(value: &self.label)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.op.isEmpty {
      try visitor.visitSingularStringField(value: self.op, fieldNumber: 1)
    }
    if !self.deviceType.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceType, fieldNumber: 2)
    }
    if !self.constraint.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.constraint, fieldNumber: 3)
    }
    if !self.hostMemoryArg.isEmpty {
      try visitor.visitRepeatedStringField(value: self.hostMemoryArg, fieldNumber: 4)
    }
    if !self.label.isEmpty {
      try visitor.visitSingularStringField(value: self.label, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_KernelDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "op"),
    2: .standard(proto: "device_type"),
    3: .same(proto: "constraint"),
    4: .standard(proto: "host_memory_arg"),
    5: .same(proto: "label"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_KernelDef) -> Bool {
    if self.op != other.op {return false}
    if self.deviceType != other.deviceType {return false}
    if self.constraint != other.constraint {return false}
    if self.hostMemoryArg != other.hostMemoryArg {return false}
    if self.label != other.label {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_KernelDef.AttrConstraint: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "allowed_values"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _allowedValues: Tensorflow_AttrValue? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _allowedValues = source._allowedValues
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_KernelDef.AttrConstraint) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) -> Bool in
		let _storage = _args.0; let other_storage = _args.1
        if _storage._name != other_storage._name {return false}
        if _storage._allowedValues != other_storage._allowedValues {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
