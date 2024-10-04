#!/bin/bash

echo "Select your packet manager:"
managers=("npm" "bun" "yarn" "exit")

select manager in "${managers[@]}"; do
    case $manager in
        "npm")
            echo "Packet manager is: npm."
            package_manager="npm"
            break
            ;;
        "bun")
            echo "Packet manager is: bun."
            package_manager="bun"
            break
            ;;
        "yarn")
            echo "Packet manager is: yarn."
            package_manager="yarn"
            break
            ;;
        "exit")
            echo "Exit."
            exit 0
            ;;
        *) 
            echo "Packet manager notfound.!"
            ;;
    esac
done

cd ..

echo "Install dependencies  👋👋👋👋👋"

cd ./api

rm -rf node_modules

$package_manager install

echo "Install Backend Sucessfully ✅✅✅✅✅"

cd ..

cd ./app

rm -rf node_modules

$package_manager install

echo "Install FrontEnd Sucessfully ✅✅✅✅✅"

cd ..

echo "Done 👌👌👌👌👌"
