var items = [
        {
            name: 'Food',
            value: 'food',
            subitems: [
                { name: '---', value: '' },
                { name: 'Bagels', value: 'bagels' },
                { name: 'Bubble Tea', value: 'bubbletea' },
                { name: 'Chocolate', value: 'chocolate' },
                { name: 'Do it yourself', value: 'diyfood' },
                { name: 'Ice-cream', value: 'icecream' },
                { name: 'Bakeries', value: 'bakeries' },
                { name: 'Butcher', value: 'butcher' },
                { name: 'Coffee', value: 'coffee' },
                { name: 'Donuts', value: 'donuts' },
                { name: 'Juice Bars', value: 'juicebars' },
                { name: 'Beer and Wine', value: 'beer_and_wine' },
                { name: 'Candy', value: 'candy' },
                { name: 'Convenience', value: 'convenience' },
                { name: 'Gelato', value: 'gelato' },
                { name: 'Pretzels', value: 'pretzels' },
                { name: 'Breweries', value: 'breweries' },
                { name: 'Cheese', value: 'cheese' },
                { name: 'Desserts', value: 'desserts' },
                { name: 'Herbs and Spices', value: 'herbsandspices' },
                { name: 'Wineries', value: 'wineries' }

            ]
        },
    {
        name: 'Restaurant',
        value: 'restaurant',
        subitems: [
            { name: '---', value: '' },
            { name: 'Afghani', value: 'afghani' },
            { name: 'Burgers', value: 'burgers' },
            { name: 'Ethiopian', value: 'ethiopian' },
            { name: 'Indonesian', value: 'indonesian' },
            { name: 'Seafood', value: 'seafood' },
            { name: 'African', value: 'african' },
            { name: 'Buffets', value: 'buffets' },
            { name: 'Hot Dogs', value: 'hotdogs' },
            { name: 'Italian', value: 'italian' },
            { name: 'Soup', value: 'soup' },
            { name: 'New American', value: 'newamerican' },
            { name: 'Cafes', value: 'cafes' },
            { name: 'Fish and Chips', value: 'fishnchips' },
            { name: 'Mediterranean', value: 'mediterranean' },
            { name: 'Steak', value: 'steak' },
            { name: 'Traditional American', value: 'tradamerican' },
            { name: 'Caribbean', value: 'caribbean' },
            { name: 'Fondue', value: 'fondue' },
            { name: 'Mexican', value: 'mexican' },
            { name: 'Sushi', value: 'sushi' },
            { name: 'Arabian', value: 'arabian' },
            { name: 'Chicken Wings', value: 'chicken_wings' },
            { name: 'Food Court', value: 'food_court' },
            { name: 'Pakistani', value: 'pakistani' },
            { name: 'Thai', value: 'thai' },
            { name: 'Asian Fusion', value: 'asianfusion' },
            { name: 'Chinese', value: 'chinese' },
            { name: 'Food Stands', value: 'foodstands' },
            { name: 'Pizza', value: 'pizza' },
            { name: 'Vegetarian', value: 'vegetarian' },
            { name: 'Barbeque', value: 'bbq' },
            { name: 'Cuban', value: 'cuban' },
            { name: 'Halal', value: 'halal' },
            { name: 'Salad', value: 'salad' },
            { name: 'Vietnamese', value: 'vietnamese' },
            { name: 'Breakfast Brunch', value: 'breakfast_brunch' },
            { name: 'Diners', value: 'diners' },
            { name: 'Indian', value: 'indpak' },
            { name: 'Sandwiches', value: 'sandwiches' }

        ]
    }
];
$(function () {
    var temp = {};

    $.each(items, function () {
        $("<option />")
        .attr("value", this.value)
        .html(this.name)
        .appendTo("#select");
        temp[this.value] = this.subitems;
    });

    $("#select").change(function () {
        var value = $(this).val();
        var menu = $("#select1");

        menu.empty();
        $.each(temp[value], function () {
            $("<option />")
            .attr("value", this.value)
            .html(this.name)
            .appendTo(menu);
        });
    }).change();
});