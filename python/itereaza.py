users = []

for index in range(1, 6):
    user_name = input(f"Numele userului {index} din 5: ")
    if user_name == "exit":
        print("Bye bye")
        break

    if not user_name:
        print("NU ai introdus username valid")
        continue

    if user_name in users:
         print(f"Userul {user_name} este deja in lista")
         continue 

    print(f"INtroducem userul in lista: {user_name}")
    users.append(user_name)

print(f"Lista finala {users}")