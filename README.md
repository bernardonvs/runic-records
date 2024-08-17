# RunicRecords: The Dwarven Order Database 🍺⚒️

Welcome to RunicRecords, where the beards are long, the ales are strong, and the grudges are meticulously documented!

## What's This All About? 🤔

RunicRecords is a whimsical SQL database project that dives deep into the mountain halls of Warhammer dwarven society. It's like a Book of Grudges, but for keeping track of who ordered what. Since I myself, like a true dwarf, lack the imagination for creating all of these beautiful lore-abiding names and titles, I have been greatly aided in this task by my amazing friends such as Claude, yerba mate and Vim. I hope you have fun exploring it and writing your own whimsical queries!  

## Database Structure 🏗️

Our database is mostly as solid as dwarven craftsmanship, with four interconnected tables:

1. **Dwarves**: Because every order needs a grumpy dwarf behind it.
   - Columns: id, name, surname, origin

2. **Products**: From rune-etched axes to beard-grooming kits or some such.
   - Columns: id, name, category, price, weight

3. **Suppliers**: The brave merchants who dare to trade with dwarves.
   - Columns: id, name, location, reputation

4. **Orders**: Where it all comes together, like a perfectly forged mithril ingot.
   - Columns: id, dwarf_id, product_id, supplier_id, date

## Features 🌟

- Realistic(ish) data based on Warhammer lore
- Proper relationships between tables (as unbreakable as a dwarven oath, hopefully)
- A mix of serious and humorous entries to keep things interesting

## How to Use 🛠️

1. Clone this repository.
2. Set up your favorite SQL database system (we recommend something sturdy, like the foundations of Karaz-a-Karak).
3. Run the SQL scripts to create and populate your tables.
4. Start querying! May your joins be as strong as dwarven steel and my determination to learn Vim.

## Sample Query 📜

Want to know who ordered the most expensive gear? Try this:

SELECT d.name, d.surname, p.name AS product, p.price
FROM Orders o
JOIN Dwarves d ON o.dwarf_id = d.id
JOIN Products p ON o.product_id = p.id
ORDER BY p.price DESC
LIMIT 1;

## Disclaimer ⚠️
This project is purely for fun and educational purposes. No actual dwarves were harmed in the making of this database. 
May your queries be fast and your transactions atomic! 🍻
