//
//  HomeView.swift
//  Pokemon List
//
//  Created by Wandi on 11/06/21.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    @State private var pokemons: [GetPokemonsQuery.Data.Pokemon.Result?] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                if pokemons.isEmpty {
                    Text("Loading...")
                } else {
                    ScrollView (showsIndicators: true) {
                        ForEach(0 ..< pokemons.count) {
                            PokemonCard(name: self.pokemons[$0]?.name ?? "", image: self.pokemons[$0]?.image ?? "")
                        }
                    }
                }
            }
            .onAppear(perform: {
                Network.shared.apollo.fetch(query: GetPokemonsQuery(limit: 50)) {
                    result in
                    
                    switch result {
                    case .success(let graphQLResult):
                        if let pokemons = graphQLResult.data?.pokemons?.results {
                            DispatchQueue.main.async {
                                self.pokemons = pokemons
                            }
                        }
                    case .failure(let error):
                        print(error)
                    }
                    
                }
            })
            .navigationTitle("Pokemon List")
        }
        
    }
}

struct PokemonCard: View {
    let name: String
    let image: String
    
    var body: some View {
        NavigationLink(
            destination: PokemonDetailView(name: name),
            label: {
                HStack {
                    Spacer()
                    KFImage(URL(string: image)!)
                    Text(name).bold()
                    Spacer()
                }
            }
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
