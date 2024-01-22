# flutter_project

A new Flutter project.
simple e commerce application (like Uzum).
The project emphasizes a user-friendly interface with simple login and registration processes. It provides a seamless shopping experience with features like product recommendations, detailed product information, and a secure checkout process. Additionally, business owners can easily add their products to the platform. The implementation involves Flutter for the front-end, and specific functionalities such as authentication, state management, and HTTP requests will be addressed using relevant packages and Flutter best practices. Exception handling is considered to ensure a robust user experience.

Pages:
    -Login
        users just enters USERNAME and PASSWORD, and 
        available options to log in:
            -google
            -facebook
            -microsoft


    -Register
        required fields:
            -full name
            -email
            -phone number
            -address
            -password....


    -Main
        when users enters application main page pops up and 
            shows recomendations:
                -most purchased products
                -biggest discounts
        in this page a user can search for a random item, filter according to date, price, and 
        catalog:
                -smart phones
                    -apple
                    -samsung
                    -redmi
                -laptops
                -pcs
                -smart watches
                -gadgets...

                users add products to their cart.

    
    -ProductDetails
        shows product details like available colors, price, ratings, characteristics and comments
        add to the cart button

    -Profile
        user info:
            -avatar,
            -full name,
            -phone number,
            -address,
            -email,
            log out


    -Cart
        shows products users are going to buy.
        displays: 
            -saved products
            -number of products
            -total cost

        when buy button is clicked, if user is not registered yet, register page pops up, if user has already registered then final page opens up requiring:
    -done
            -address(where to deliver),
            -payment method:
                -credit card
                -cash
            -promocode (if available)
        after that delivering time is display, everybody happy!!.


    -wishlist   
        users saves(likes) their products they want to buy in future.


    -AddItem:
        For business ownwers to add their product.
    -