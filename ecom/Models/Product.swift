//
//  Product.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
    
}

var productList = [
    Product(
        name: "Leather Couch",
        image: "f1",
        description: "This curvaceous style, whose S-shaped legs are its namesake, was popularized in 18th-century Europe, especially among Louis XV’s court. The sofa’s back and arms often form a continuous rounded line, adding to its air of opulence.",
        supplier: "IKEA",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"
    ),  Product(
        name: "Nice Couch",
        image: "f2",
        description: "Mario Bellini invented the highly adaptable Camaleonda sofa (a portmanteau of the Italian words for “chameleon” and “wave”) in 1970 for B&B Italia. The bulbous polyurethane-padded sofa went out of production in 1979, but due to the recent rising trend of “blob sofas,” B&B relaunched the style with recycled and recyclable materials. A cult favorite, the Camaleonda has also become known as the Bellini Sofa, though Bellini produced a number of other well-known designs.",
        supplier: "Walmart",
        price: 235,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"
    ),  Product(
        name: "Beige Couch",
        image: "f3",
        description: "Attributed to 18th-century English cabinet-maker Thomas Chippendale, camelback sofas feature a humped back that typically peaks on either side. It is also common for this style to have curved arms and a wooden frame.",
        supplier: "Home Depo",
        price: 500,
        width: "210 cm",
        height: "135 cm",
        diameter: "105 cm"
    ),  Product(
        name: "Beatiful Couch",
        image: "f4",
        description: "Today, the word chaise typically refers to a chaise longue, sometimes anglicized as “chaise lounge.” Like a chair and ottoman in one, this style is intended for an individual to recline. They always have a back but can have one, two, or no arms. Stemming back to the Victorian era, the fainting couch, for example, is essentially a chaise with one arm and a back, which was said to be the perfect perch for a corseted lady to rest and catch her breath.",
        supplier: "Ami Mebel",
        price: 310,
        width: "200 cm",
        height: "130 cm",
        diameter: "105 cm"
    ),  Product(
        name: "Indoor Couch",
        image: "f5",
        description: "Like the chair believed to be invented by the fourth Earl of Chesterfield in the 18th century, the Chesterfield sofa is known for its button-tufted back and nail-head trim. Another signature trait is that the thick rolled arms, which can curve out from the sofa, sit at the same height as the backrest. The plush style became a favorite in London’s exclusive gentlemen’s clubs.",
        supplier: "BRW",
        price: 400,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"
    ),  Product(
        name: "Way Couch",
        image: "f6",
        description: "Sofas by day and beds by night, daybeds are beloved for their multifunctionality. The seat is typically the size equivalent of a twin-size mattress, and there are usually two raised arms and a low back. This configuration means that it can often “float” in the room, rather than be positioned against a wall. While Mies van der Rohe’s Barcelona daybed is among the most famous daybed styles, its backless and armless form more closely resembles a divan.",
        supplier: "Polsye",
        price: 380,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"
    )]
