//
//  PokemonDetailView.swift
//  Pokemon List
//
//  Created by Wandi on 12/06/21.
//

import SwiftUI
import Kingfisher

struct PokemonDetailView: View {
    let name: String
    @State private var pokemon: GetPokemonDetailQuery.Data.Pokemon?
    
    
    var body: some View {
        VStack {
            KFImage(URL(string: pokemon?.sprites?.frontDefault ?? ""))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 220, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, -25)
            Text(name).padding(.bottom, 15).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack {
                Text("Types:")
                Text(pokemon?.types![0]?.type?.name ?? "")
            }
            HStack {
                Text("Abilities:")
                Text(pokemon?.abilities![0]?.ability?.name ?? "")
            }
            HStack {
                Text("Height:")
                Text(String(pokemon?.height ?? 0))
            }
            HStack {
                Text("Weight:")
                Text(String(pokemon?.weight ?? 0))
            }
        }
        .onAppear(perform: {
            Network.shared.apollo.fetch(query: GetPokemonDetailQuery(name: name)) {
                result in
                
                switch result {
                case .success(let graphQLResult):
                    if let pokemon = graphQLResult.data?.pokemon {
                        DispatchQueue.main.async {
                            print(pokemon)
                            self.pokemon = pokemon
                        }
                    }
                case .failure(let error):
                    print(error)
                }
                
            }
        })
    }
}


struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(name: "squirtle")
    }
}
