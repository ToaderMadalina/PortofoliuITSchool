detalii_cursant = {
    "nume": "Popescu",
    "prenume": "Ioana",
    "age": 54,
    "adresa": {
        "strada": "Int. Muncii",
        "nr": 34
    }
}

detalii_cursant["adresa"]["strada"] = "Bd. Unirii"

for cheie, valoare in detalii_cursant.items():
    if isinstance(valoare, dict):   # dacă valoarea este dicționar (ex: adresa)
        print(f"{cheie}:")
        for subcheie, subvaloare in valoare.items():
            print(f"  {subcheie} = {subvaloare}")
    else:
        print(f"{cheie} = {valoare}")
