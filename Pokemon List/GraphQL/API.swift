// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetPokemonsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPokemons($limit: Int = 10, $offset: Int = 1) {
      pokemons(limit: $limit, offset: $offset) {
        __typename
        count
        next
        previous
        status
        message
        results {
          __typename
          id
          url
          name
          image
        }
      }
    }
    """

  public let operationName: String = "GetPokemons"

  public var limit: Int?
  public var offset: Int?

  public init(limit: Int? = nil, offset: Int? = nil) {
    self.limit = limit
    self.offset = offset
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "offset": offset]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pokemons", arguments: ["limit": GraphQLVariable("limit"), "offset": GraphQLVariable("offset")], type: .object(Pokemon.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pokemons: Pokemon? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "pokemons": pokemons.flatMap { (value: Pokemon) -> ResultMap in value.resultMap }])
    }

    public var pokemons: Pokemon? {
      get {
        return (resultMap["pokemons"] as? ResultMap).flatMap { Pokemon(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "pokemons")
      }
    }

    public struct Pokemon: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PokemonList"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("count", type: .scalar(Int.self)),
          GraphQLField("next", type: .scalar(String.self)),
          GraphQLField("previous", type: .scalar(String.self)),
          GraphQLField("status", type: .scalar(Bool.self)),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("results", type: .list(.object(Result.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(count: Int? = nil, next: String? = nil, previous: String? = nil, status: Bool? = nil, message: String? = nil, results: [Result?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "PokemonList", "count": count, "next": next, "previous": previous, "status": status, "message": message, "results": results.flatMap { (value: [Result?]) -> [ResultMap?] in value.map { (value: Result?) -> ResultMap? in value.flatMap { (value: Result) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var count: Int? {
        get {
          return resultMap["count"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "count")
        }
      }

      public var next: String? {
        get {
          return resultMap["next"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "next")
        }
      }

      public var previous: String? {
        get {
          return resultMap["previous"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "previous")
        }
      }

      public var status: Bool? {
        get {
          return resultMap["status"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var results: [Result?]? {
        get {
          return (resultMap["results"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Result?] in value.map { (value: ResultMap?) -> Result? in value.flatMap { (value: ResultMap) -> Result in Result(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Result?]) -> [ResultMap?] in value.map { (value: Result?) -> ResultMap? in value.flatMap { (value: Result) -> ResultMap in value.resultMap } } }, forKey: "results")
        }
      }

      public struct Result: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PokemonItem"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("url", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("image", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int? = nil, url: String? = nil, name: String? = nil, image: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "PokemonItem", "id": id, "url": url, "name": name, "image": image])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int? {
          get {
            return resultMap["id"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var url: String? {
          get {
            return resultMap["url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var image: String? {
          get {
            return resultMap["image"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "image")
          }
        }
      }
    }
  }
}

public final class GetPokemonDetailQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPokemonDetail($name: String!) {
      pokemon(name: $name) {
        __typename
        id
        name
        height
        weight
        sprites {
          __typename
          front_default
        }
        base_experience
        message
        status
        order
        abilities {
          __typename
          ability {
            __typename
            name
          }
          is_hidden
          slot
        }
        types {
          __typename
          slot
          type {
            __typename
            name
          }
        }
      }
    }
    """

  public let operationName: String = "GetPokemonDetail"

  public var name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pokemon", arguments: ["name": GraphQLVariable("name")], type: .object(Pokemon.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pokemon: Pokemon? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "pokemon": pokemon.flatMap { (value: Pokemon) -> ResultMap in value.resultMap }])
    }

    public var pokemon: Pokemon? {
      get {
        return (resultMap["pokemon"] as? ResultMap).flatMap { Pokemon(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "pokemon")
      }
    }

    public struct Pokemon: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Pokemon"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(Int.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("height", type: .scalar(Int.self)),
          GraphQLField("weight", type: .scalar(Int.self)),
          GraphQLField("sprites", type: .object(Sprite.selections)),
          GraphQLField("base_experience", type: .scalar(Int.self)),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("status", type: .scalar(Bool.self)),
          GraphQLField("order", type: .scalar(Int.self)),
          GraphQLField("abilities", type: .list(.object(Ability.selections))),
          GraphQLField("types", type: .list(.object(`Type`.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int? = nil, name: String? = nil, height: Int? = nil, weight: Int? = nil, sprites: Sprite? = nil, baseExperience: Int? = nil, message: String? = nil, status: Bool? = nil, order: Int? = nil, abilities: [Ability?]? = nil, types: [`Type`?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Pokemon", "id": id, "name": name, "height": height, "weight": weight, "sprites": sprites.flatMap { (value: Sprite) -> ResultMap in value.resultMap }, "base_experience": baseExperience, "message": message, "status": status, "order": order, "abilities": abilities.flatMap { (value: [Ability?]) -> [ResultMap?] in value.map { (value: Ability?) -> ResultMap? in value.flatMap { (value: Ability) -> ResultMap in value.resultMap } } }, "types": types.flatMap { (value: [`Type`?]) -> [ResultMap?] in value.map { (value: `Type`?) -> ResultMap? in value.flatMap { (value: `Type`) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return resultMap["id"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var height: Int? {
        get {
          return resultMap["height"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "height")
        }
      }

      public var weight: Int? {
        get {
          return resultMap["weight"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "weight")
        }
      }

      public var sprites: Sprite? {
        get {
          return (resultMap["sprites"] as? ResultMap).flatMap { Sprite(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "sprites")
        }
      }

      public var baseExperience: Int? {
        get {
          return resultMap["base_experience"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "base_experience")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var status: Bool? {
        get {
          return resultMap["status"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var order: Int? {
        get {
          return resultMap["order"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "order")
        }
      }

      public var abilities: [Ability?]? {
        get {
          return (resultMap["abilities"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Ability?] in value.map { (value: ResultMap?) -> Ability? in value.flatMap { (value: ResultMap) -> Ability in Ability(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Ability?]) -> [ResultMap?] in value.map { (value: Ability?) -> ResultMap? in value.flatMap { (value: Ability) -> ResultMap in value.resultMap } } }, forKey: "abilities")
        }
      }

      public var types: [`Type`?]? {
        get {
          return (resultMap["types"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [`Type`?] in value.map { (value: ResultMap?) -> `Type`? in value.flatMap { (value: ResultMap) -> `Type` in `Type`(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [`Type`?]) -> [ResultMap?] in value.map { (value: `Type`?) -> ResultMap? in value.flatMap { (value: `Type`) -> ResultMap in value.resultMap } } }, forKey: "types")
        }
      }

      public struct Sprite: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Sprite"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("front_default", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(frontDefault: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sprite", "front_default": frontDefault])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var frontDefault: String? {
          get {
            return resultMap["front_default"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "front_default")
          }
        }
      }

      public struct Ability: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Ability"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("ability", type: .object(Ability.selections)),
            GraphQLField("is_hidden", type: .scalar(Bool.self)),
            GraphQLField("slot", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(ability: Ability? = nil, isHidden: Bool? = nil, slot: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Ability", "ability": ability.flatMap { (value: Ability) -> ResultMap in value.resultMap }, "is_hidden": isHidden, "slot": slot])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var ability: Ability? {
          get {
            return (resultMap["ability"] as? ResultMap).flatMap { Ability(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "ability")
          }
        }

        public var isHidden: Bool? {
          get {
            return resultMap["is_hidden"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "is_hidden")
          }
        }

        public var slot: Int? {
          get {
            return resultMap["slot"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "slot")
          }
        }

        public struct Ability: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["BaseName"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "BaseName", "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }

      public struct `Type`: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Type"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("slot", type: .scalar(Int.self)),
            GraphQLField("type", type: .object(`Type`.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(slot: Int? = nil, type: `Type`? = nil) {
          self.init(unsafeResultMap: ["__typename": "Type", "slot": slot, "type": type.flatMap { (value: `Type`) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var slot: Int? {
          get {
            return resultMap["slot"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "slot")
          }
        }

        public var type: `Type`? {
          get {
            return (resultMap["type"] as? ResultMap).flatMap { `Type`(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "type")
          }
        }

        public struct `Type`: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["BaseName"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "BaseName", "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}
