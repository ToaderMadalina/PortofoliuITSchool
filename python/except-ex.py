

def citeste_intreg(prompt, valoare_maxima):
    while True:
        try:
            nr = input(prompt + "? ")
            nr = int(nr)

            if nr > valoare_maxima:
                raise Exception("Varsta prea mare")

            return nr
        except ValueError as exceptie_value_error:
            print(f"Value error: (exceptie_value_error)")
        except Exception as exceptie_generica:
            print(f"Eroarea este: {exceptie_generica}")
        finally:
            print("Asta se eexecuta mereuu")

age = citeste_intreg("Varsta", 150)
street_nr = citeste_intreg("Numar strada", 10000)

print(f"Bye bye. Age {age},street_nr= {street_nr}")

