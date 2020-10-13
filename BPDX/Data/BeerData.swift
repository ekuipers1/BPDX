//
//  BeerData.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

// Mark: - The Beer Data

let beersData: [Beer] = [
    Beer(
        title: "Jubelale Festive Winter Ale",
        headline: "Cozy up fireside with this festive winter ale full of spice notes and a robust malt character of toffee and dusted cocoa.",
        image: "Jubelale",
        detail:"""
        Winter is upon us yet again, and with it come the winter ale offerings from nearly every brewery, including the legendary Deschutes Brewey Jubelale. As the various pumpkin-infused autumn beers begin to fade from store shelves, they’re almost instantly replaced by their darker and more belly-warming counterparts. It’s long past the time to set aside those citrusy pale ales and light lagers and delve into some bottles of heavier, more robust beers.
        
        A Brief History of Jubelale by Deschutes Brewery:
        
        Sometimes, it pays to go with something from a very well established brewery, as Deschutes has proven here. Originally crafted by John Harris (who now runs Ecliptic Brewing in Portland), this ale was first brewed in 1988 and bottled by hand by a staff of only ten. Since then, things have changed a lot for Deschutes. Bottling was moved to Portland in 1990 until the new production facility in Bend was ready in 1993. The recipe has never changed, however, and the team at Deschutes has kept this beer true to form for 27 years.

        Jubelale is essentially a take on a holiday punch called Wassail (rhymes with fossil). The word originates from the Old English, “Waes Hael”, meaning to be whole, or of good health. This was considered to be the appropriate toast when offering drinks. It was also the go-to beverage to serve carolers (or wassailers) who’d come ‘round to spread holiday joy.

        There have been many variations on the style over the years, but it has always been a fruity, spiced concoction, usually served warm. It would typically include baked apples and be similar to a mulled cider, but more recently its style has been adopted by beer makers who’ve leaned more toward darker fruit flavours, like fig and plum.
        """,
        gradientColors: [Color("ColorJubelaleLight"), Color("ColorJubelaleDark")],
        alc: 6.7,//6.7
        ibu: 65,//65
        malthops: ["Pale, Crystal, Extra Special, Carapils, Roasted Barley","Bravo, Cascade, Delta, Us Tettnang, East Kent Goldings"],
        availability : "Seasonal: Oct - Dec",
        availabilityIn : ["6x12oz, 12x12oz, 24x12oz, Draft"]
    ),
    Beer(
        title: "Royal Fresh Imperial IPA",
        headline: "Get a taste of hop royalty with this juicy imperial juggernaut featuring big, tropical hop flavors and a deceptively smooth finish.",
        image: "RoyalFresh",
        detail: """
        As we close out the summer, Deschutes Brewery is set to release two new beers and a brand-new beer variety pack that will put together the Bend brewer’s top selling beers. Be on the lookout for the new Royal Fresh Imperial IPA and Symphonic Chronic West Coast-Style IPA along with the new All Time Favorites Pack featuring four different Deschutes beers.

        With the popularity of its Fresh Family lineup, Deschutes Brewery is expanding this portfolio to include the new Royal Fresh Imperial IPA. This new beer joins Fresh Squeezed IPA, Fresh Haze IPA and Lil’ Squeezy Juicy Ale.

        “Royal Fresh has all the big, juicy hop character of a traditional Imperial, but we were less concerned about hitting a 90-100 IBU mark, making it a very drinkable Imperial,” said Director of New Product Development for the brewery, Veronica Vega, in a press release. “Using 5 pounds of hops per barrel, Royal Fresh includes 7 different hop varietals (Mosaic, Centennial, Cascade, Amarillo, Citra, Cashmere and El Dorado) with hop additions at 6 different stages of the brewing process.”

        Based on its popularity at Deschutes’ public houses, Royal Fresh IIPA is now a year round offering across the brewery’s distribution footprint available in market this September. At 9% ABV and 70 IBUs, this new brand for Deschutes will be available in 6 pack bottles, 19.2 ounce cans, and on draft.
        """,
        gradientColors: [Color("ColorRoyalFreshLight"), Color("ColorRoyalFreshDark")],
        alc: 9.0,
        ibu: 70,
        malthops: ["2 Row, Wheat, Oats, Acidulated", "Cascade, Citra, Mosaic, Centennial, Amarillo, El Dorado, Cashmere"],
        availability : "Year Round",
        availabilityIn : ["6x12oz, Draft, 19.2oz"]
    ),
    Beer(
        title: "Fresh Haze IPA",
        headline: "A hazy twist on your main squeeze, this juice bomb explodes with orange citrus and a soft malt body.",
        image: "FreshHaze",
        detail: """
        What the brewers say
        "A hazy twist on your main squeeze, this juice bomb explodes with notes of orange citrus sweetness and a soft malt body."

        What our panel thought
        "Floral aroma with berries, rhubarb, touch of dried apricot. In flavor, mild caramel and bread-crust malt support hops—dried fruit, apricots, mango. Moderate sweetness throughout—lingers without cloying—fairly low bitterness. Really interesting. Aroma is supercool."

        What our editors thought
        "Haze with a 1990s craft throwback nose—malty, with more estery fruit notes than hops. The sip highlights berry with a bit of orange and tropical fruit. Fun in its retro-malty simplicity."
        """,
        gradientColors: [Color("ColorFreshHazeLight"), Color("ColorFreshHazeDark")],
        alc: 6.5,
        ibu: 45,
        malthops: ["2 Row, Munich, Crystal, Wheat, Flaked Barley", "Amarillo, Cashmere, Mandarina Bavaria"],
        availability : "Year Round",
        availabilityIn : ["6x12oz, 12x12oz, 24x12oz, Draft, 19.2oz"]
    ),
    Beer(
        title: "Black Butte Porter",
        headline: "Bold reputation. Soft disposition. Surprising Balance. Behold an iconic and unexpectedly complex porter that’s more than meets the eye.",
        image: "BlackButte",
        detail: """
        Appearance

        Deschutes Black Butte looks like a perfect porter. Black as night at first glance, it’s really a deep mahogany with zero clarity. A full, tan head lingers after the pour and fades only as you start to drink.

        Aroma

        Roasted malt makes up the bulk of a somewhat subdued nose. Light grain and nuttiness add to the complexity without adding sweetness. That lack of sweetness, combined with a touch of earthy hops, makes for a more crisp and bitter aroma than most porters.

        Flavor

        My immediate impression upon the taste is more about feel than flavor. It’s shocking how full and creamy Black Butte can be at only 5.2% alcohol. Velvety is the word that comes to mind, a descriptor typically reserved for the booziest imperial stouts. Black Butte nearly mirrors the flavor in stronger beers too, with deep roasted coffee, bitter chocolate, sweet caramel and herbal hops. Its nutty and lightly fruity as well, with all of this flavor packed into an easy drinking beer with a downright luscious body.

        Overall

        Style be damned, Deschutes Black Butte Porter is exactly the kind of beer breweries should use to lead portfolios. It is nuanced with depth of flavor, yet it’s well balanced. Deschutes captures all of this while keeping Black Butte approachable both in body and ABV. The brewery takes a forgettable style and executes a beer that is anything but. More breweries could follow Deschutes lead and opt for something besides another flagship IPA.
        """,
        gradientColors: [Color("ColorlackButteLight"), Color("ColorlackButteDark")],
        alc: 15.5,
        ibu: 30,
        malthops: ["2 Row, Chocolate, Wheat, Crystal, Carapils", "Cascade, Tettnang"],
        availability : "Year Round",
        availabilityIn : ["6x12oz, 12x12oz, 24x12oz, Draft"]
    ),
    Beer(
        title: "Wowza! Lo-Cal Hazy Pale Ale",
        headline: "With only 100 calories, 4g of carbs, 4% ABV and a crisp, light finish, this full-flavored yet crushable, citrusy hazy pale ale will make you say Wowza!",
        image: "Wowza",
        detail: """
        Deschutes Brewery, family and employee-owned since 1988, is excited to add WOWZA!, the brewery’s new hazy pale ale boasting a low 100-calories, 4-grams of carbohydrates, four percent ABV, to their portfolio in cans. WOWZA!

        Wowza! will be available throughout J.J. Taylor Distributing Company of MN, Inc. distribution footprint in package and draft starting January of 2020.


        “We’re thrilled with the early excitement around this brand and that Blazers fans have been enjoying WOWZA! during games,” said Neal Stewart, vice president of marketing at Deschutes. “We’ve been listening to consumers asking for lo-cal, lo-carb, and less filling beers that still taste great and pulled all the stops to get it into cans as fast as possible!”

        Stewart is confident that this trend will continue to grow and is proud that the brewery can provide an offering, like WOWZA!, that checks all the boxes for active and health-conscious consumers.

        WOWZA! is a full-flavored, effervescent hazy pale ale. Subtle citrus notes and a hop forward aroma join flavors of candied orange, passion fruit and blackberry with a crisp, light finish. Deschutes uses the popular ingredient, Chicory Root, a natural inulin fiber sourced from Cosucra Farms in Belgium, to balance the body and sweetness of the beer without affecting the calorie count.
        """,
        gradientColors: [Color("ColorWowzaLight"), Color("ColorWowzaDark")],
        alc: 4.0,
        ibu: 0,
        malthops: ["Pilsner, Wheat, Oat, Acidulated", "Citra, Simcoe, Cashmere, Callista"],
        availability : "Year Round",
        availabilityIn : ["6x12oz, Draft, 19.2oz"]
    )
]
